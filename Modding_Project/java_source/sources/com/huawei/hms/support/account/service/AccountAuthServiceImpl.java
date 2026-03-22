package com.huawei.hms.support.account.service;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.support.account.request.AccountAuthParams;
import com.huawei.hms.support.account.result.AccountIcon;
import com.huawei.hms.support.account.result.AssistTokenResult;
import com.huawei.hms.support.account.result.AuthAccount;
import com.huawei.hms.support.api.account.AccountGetTokenOptions;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.account.AccountLogoutRequest;
import com.huawei.hms.support.api.entity.account.AccountNaming;
import com.huawei.hms.support.api.entity.account.AccountSignInRequest;
import com.huawei.hms.support.api.entity.account.AccountSignOutReq;
import com.huawei.hms.support.api.entity.account.AccountStartAssistLoginRequest;
import com.huawei.hms.support.api.entity.account.GetAssistTokenRequest;
import com.huawei.hms.support.api.entity.auth.PermissionInfo;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.common.CommonNaming;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import ib.a0;
import ib.b0;
import ib.c0;
import ib.e0;
import ib.f0;
import ib.g0;
import ib.h0;
import ib.i0;
import ib.p;
import ib.t;
import ib.w;
import ib.y;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import ua.f;
import ua.g;
/* loaded from: classes5.dex */
public class AccountAuthServiceImpl extends HuaweiApi<AccountAuthParams> implements AccountAuthService {
    private static final Api<AccountAuthParams> ACCOUNT_AUTH_API = new Api<>("AuthAccount.API");
    private static final Long ONE_WEEK_MILLISECOND = 604800000L;
    protected static final String TAG = "[ACCOUNT]AccountAuthServiceImpl";
    private String mAccountName;
    private boolean mFromRequestToken;

    public AccountAuthServiceImpl(Activity activity, AccountAuthParams accountAuthParams, int i10) {
        super(activity, ACCOUNT_AUTH_API, accountAuthParams, (AbstractClientBuilder) new w(), i10);
    }

    private boolean checkIdTokenSignAlg(AccountAuthParams accountAuthParams) {
        t.b(TAG, "checkIdTokenSignAlg", true);
        if (accountAuthParams == null) {
            t.d(TAG, "accountAuthParams is null", true);
            return false;
        }
        try {
            int i10 = new JSONObject(accountAuthParams.getSignInParams()).getInt(CommonConstant.RequestParams.KEY_ID_TOKEN_SIGN_ALG);
            if (i10 == 1 || i10 == 2) {
                return true;
            }
            return false;
        } catch (JSONException e10) {
            t.d(TAG, "JSONException:" + e10.getClass().getSimpleName(), true);
            return false;
        }
    }

    private f<AssistTokenResult> doWriteGetAssistToken(GetAssistTokenRequest getAssistTokenRequest) {
        try {
            return doWrite(new i0(AccountNaming.getAssistToken, getAssistTokenRequest.toJson(), HiAnalyticsClient.reportEntry(getContext(), AccountNaming.getAssistToken, 60900100)));
        } catch (JSONException unused) {
            t.d(TAG, "JSONException， errorcode is:2015", true);
            g gVar = new g();
            gVar.b(new ApiException(new Status(2015)));
            return gVar.a();
        }
    }

    private Bitmap stringToBitmap(String str) {
        try {
            byte[] decode = Base64.decode(str, 0);
            return BitmapFactory.decodeByteArray(decode, 0, decode.length);
        } catch (Exception e10) {
            t.d(TAG, "stringToBitmap Exception is " + e10.getClass().getSimpleName(), true);
            return null;
        } catch (OutOfMemoryError unused) {
            t.d(TAG, "out of memory error ", true);
            return null;
        }
    }

    @Override // com.huawei.hms.support.feature.service.AuthService
    public f<Void> cancelAuthorization() {
        t.b(TAG, "cancelAuthorization", true);
        AccountSignInRequest accountSignInRequest = new AccountSignInRequest();
        accountSignInRequest.setAccountAuthParams(getOption());
        try {
            return doWrite(new a0(AccountNaming.revokeAccessAccount, accountSignInRequest.toJson(), HiAnalyticsClient.reportEntry(getContext(), AccountNaming.revokeAccessAccount, 60900100)));
        } catch (JSONException unused) {
            t.d(TAG, "JSONException, errorcode is:2015", true);
            g gVar = new g();
            gVar.b(new ApiException(new Status(2015)));
            return gVar.a();
        }
    }

    @Override // com.huawei.hms.common.HuaweiApi
    public int getApiLevel() {
        List<PermissionInfo> permissionInfos;
        AccountAuthParams option = getOption();
        if (option != null && (permissionInfos = option.getPermissionInfos()) != null && permissionInfos.size() != 0) {
            for (PermissionInfo permissionInfo : permissionInfos) {
                String permission = permissionInfo.getPermission();
                if (permission != null && permission.equals(CommonConstant.LocalPermission.CARRIER_ID)) {
                    t.b(TAG, "permissioninfos contain carrierId and silentSignIn setApiLevel is 13", true);
                    return 13;
                }
            }
        }
        return 1;
    }

    @Override // com.huawei.hms.support.account.service.AccountAuthService
    public f<AssistTokenResult> getAssistToken(GetAssistTokenRequest getAssistTokenRequest) {
        t.b(TAG, "getAssistToken", true);
        return doWriteGetAssistToken(getAssistTokenRequest);
    }

    @Override // com.huawei.hms.support.account.service.AccountAuthService
    public f<AccountIcon> getChannel() {
        t.b(TAG, "getChannel", true);
        AccountSignInRequest accountSignInRequest = new AccountSignInRequest();
        accountSignInRequest.setAccountAuthParams(getOption());
        Context context = getContext();
        SharedPreferences sharedPreferences = context.getSharedPreferences("ACCOUNT_CHANNEL_CACHE", 0);
        String string = sharedPreferences.getString("icon", "");
        String string2 = sharedPreferences.getString(CampaignEx.JSON_KEY_DESC, "");
        long j10 = sharedPreferences.getLong("cache_time", 0L);
        long a10 = p.a();
        if (j10 != 0 && !TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2) && a10 - j10 < ONE_WEEK_MILLISECOND.longValue()) {
            AccountIcon accountIcon = new AccountIcon(string2, stringToBitmap(string));
            g gVar = new g();
            gVar.c(accountIcon);
            gVar.b(new ApiException(new Status(0)));
            return gVar.a();
        }
        try {
            return doWrite(new b0(AccountNaming.getChannelAccount, accountSignInRequest.toJson(), HiAnalyticsClient.reportEntry(getContext(), AccountNaming.getChannelAccount, 60900100), context));
        } catch (JSONException unused) {
            t.d(TAG, "JSONException, errorcode is:2015", true);
            g gVar2 = new g();
            gVar2.b(new ApiException(new Status(2015)));
            return gVar2.a();
        }
    }

    @Override // com.huawei.hms.support.account.service.AccountAuthService
    public Intent getIndependentSignInIntent(String str) {
        t.b(TAG, "getIndependentSignInIntent", true);
        return y.c(getContext(), getOption(), getSubAppID(), str);
    }

    @Override // com.huawei.hms.support.feature.service.AuthService
    public Intent getSignInIntent() {
        t.b(TAG, "getSignInIntent", true);
        return y.a(getContext(), getOption(), getSubAppID());
    }

    @Override // com.huawei.hms.support.account.service.AccountAuthService
    public f<Void> logout() {
        t.b(TAG, "logout", true);
        AccountLogoutRequest accountLogoutRequest = new AccountLogoutRequest();
        accountLogoutRequest.setAccountAuthParams(getOption());
        try {
            return doWrite(new c0(AccountNaming.logout, accountLogoutRequest.toJson(), HiAnalyticsClient.reportEntry(getContext(), AccountNaming.logout, 60900100)));
        } catch (JSONException unused) {
            t.d(TAG, "JSONException, errorcode is:2015", true);
            g gVar = new g();
            gVar.b(new ApiException(new Status(2015)));
            return gVar.a();
        }
    }

    @Override // com.huawei.hms.support.feature.service.AuthService
    public f<Void> signOut() {
        t.b(TAG, "signOut", true);
        y.f();
        AccountSignOutReq accountSignOutReq = new AccountSignOutReq();
        return doWrite(new g0(AccountNaming.signoutAccount, accountSignOutReq.toJson(), HiAnalyticsClient.reportEntry(getContext(), CommonNaming.signout, 60900100)));
    }

    @Override // com.huawei.hms.support.account.service.AccountAuthService
    public f<AuthAccount> silentSignIn() {
        t.b(TAG, "silentSignIn", true);
        AccountSignInRequest accountSignInRequest = new AccountSignInRequest();
        AccountAuthParams option = getOption();
        accountSignInRequest.setAccountAuthParams(option);
        boolean z10 = this.mFromRequestToken;
        if (z10) {
            accountSignInRequest.setAccountGetTokenOptions(new AccountGetTokenOptions(this.mAccountName, z10));
        }
        if (!checkIdTokenSignAlg(option)) {
            t.d(TAG, "idTokenSignAlg is invalid", true);
            g gVar = new g();
            gVar.b(new ApiException(new Status(2003, "idTokenSignAlg is invalid")));
            return gVar.a();
        }
        try {
            String json = accountSignInRequest.toJson();
            String reportEntry = HiAnalyticsClient.reportEntry(getContext(), AccountNaming.silentSignInAccount, 60900100);
            if (this.mFromRequestToken) {
                return doWrite(new e0(AccountNaming.silentSignInAccount, json, reportEntry));
            }
            return doWrite(new f0(AccountNaming.silentSignInAccount, json, reportEntry));
        } catch (JSONException unused) {
            t.d(TAG, "JSONException, errorcode is:2015", true);
            g gVar2 = new g();
            gVar2.b(new ApiException(new Status(2015)));
            return gVar2.a();
        }
    }

    @Override // com.huawei.hms.support.account.service.AccountAuthService
    public f<Void> startAssistLogin(String str) {
        t.b(TAG, "startAssistLogin", true);
        try {
            return doWrite(new h0(AccountNaming.startAssistLogin, new AccountStartAssistLoginRequest(str).toJson(), HiAnalyticsClient.reportEntry(getContext(), AccountNaming.startAssistLogin, 60900100)));
        } catch (JSONException unused) {
            t.d(TAG, "JSONException, errorcode is:2015", true);
            g gVar = new g();
            gVar.b(new ApiException(new Status(2015)));
            return gVar.a();
        }
    }

    public AccountAuthServiceImpl(Context context, AccountAuthParams accountAuthParams, int i10) {
        super(context, ACCOUNT_AUTH_API, accountAuthParams, new w(), i10);
    }

    public AccountAuthServiceImpl(Context context, AccountAuthParams accountAuthParams, String str, int i10) {
        super(context, ACCOUNT_AUTH_API, accountAuthParams, new w(), i10);
        this.mAccountName = str;
        this.mFromRequestToken = true;
    }

    public AccountAuthServiceImpl(Activity activity, AccountAuthParams accountAuthParams, String str, int i10) {
        super(activity, ACCOUNT_AUTH_API, accountAuthParams, (AbstractClientBuilder) new w(), i10);
        this.mAccountName = str;
        this.mFromRequestToken = true;
    }
}
