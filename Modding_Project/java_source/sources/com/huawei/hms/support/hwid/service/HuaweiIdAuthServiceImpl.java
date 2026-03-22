package com.huawei.hms.support.hwid.service;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.common.CommonNaming;
import com.huawei.hms.support.api.entity.hwid.HuaweiIdSignInRequest;
import com.huawei.hms.support.api.entity.hwid.SignOutReq;
import com.huawei.hms.support.api.hwid.HuaweiIdGetTokenOptions;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import com.huawei.hms.support.hwid.request.HuaweiIdAuthParams;
import com.huawei.hms.support.hwid.result.AuthHuaweiId;
import ib.c;
import ib.d;
import ib.e;
import ib.o0;
import ib.q0;
import ib.s0;
import ib.t;
import org.json.JSONException;
import org.json.JSONObject;
import ua.f;
import ua.g;
/* loaded from: classes5.dex */
public class HuaweiIdAuthServiceImpl extends HuaweiApi<HuaweiIdAuthParams> implements HuaweiIdAuthService {
    private static final Api<HuaweiIdAuthParams> HUAWEI_ID_AUTH_API = new Api<>(HuaweiApiAvailability.HMS_API_NAME_ID);
    protected static final String TAG = "[HUAWEIIDSDK]HuaweiIdAuthService";
    private String mAccountName;
    private boolean mFromRequestToken;

    public HuaweiIdAuthServiceImpl(Activity activity, HuaweiIdAuthParams huaweiIdAuthParams, int i10) {
        super(activity, HUAWEI_ID_AUTH_API, huaweiIdAuthParams, (AbstractClientBuilder) new o0(), i10);
    }

    private HuaweiIdAuthParams setSignInParams(String str) {
        HuaweiIdAuthParams option = getOption();
        try {
            new JSONObject(str);
            try {
                HuaweiIdAuthParams m4702clone = option.m4702clone();
                m4702clone.setSignInParams(str);
                return m4702clone;
            } catch (CloneNotSupportedException unused) {
                t.d(TAG, "CloneNotSupportedException", true);
                return option;
            }
        } catch (JSONException unused2) {
            t.d(TAG, "JSONException", true);
            return option;
        }
    }

    @Override // com.huawei.hms.support.feature.service.AuthService
    public f<Void> cancelAuthorization() {
        t.b(TAG, "cancelAuthorization", true);
        HuaweiIdSignInRequest huaweiIdSignInRequest = new HuaweiIdSignInRequest();
        huaweiIdSignInRequest.setHuaweiIdAuthParams(getOption());
        try {
            return doWrite(new s0(CommonNaming.revokeAccess, huaweiIdSignInRequest.toJson(), HiAnalyticsClient.reportEntry(getContext(), CommonNaming.revokeAccess, 60900100)));
        } catch (JSONException unused) {
            t.d(TAG, "JSONException, errorcode is:2015", true);
            g gVar = new g();
            gVar.b(new ApiException(new Status(2015)));
            return gVar.a();
        }
    }

    @Override // com.huawei.hms.common.HuaweiApi
    public int getApiLevel() {
        return 1;
    }

    @Override // com.huawei.hms.support.feature.service.AuthService
    public Intent getSignInIntent() {
        return getSignInIntent("");
    }

    @Override // com.huawei.hms.support.feature.service.AuthService
    public f<Void> signOut() {
        t.b(TAG, "signOut", true);
        q0.d();
        SignOutReq signOutReq = new SignOutReq();
        return doWrite(new e(CommonNaming.signout, signOutReq.toJson(), HiAnalyticsClient.reportEntry(getContext(), CommonNaming.signout, 60900100)));
    }

    @Override // com.huawei.hms.support.hwid.service.HuaweiIdAuthService
    public f<AuthHuaweiId> silentSignIn() {
        return silentSignIn("");
    }

    public HuaweiIdAuthServiceImpl(Context context, HuaweiIdAuthParams huaweiIdAuthParams, int i10) {
        super(context, HUAWEI_ID_AUTH_API, huaweiIdAuthParams, new o0(), i10);
    }

    @Override // com.huawei.hms.support.hwid.service.HuaweiIdAuthService
    public Intent getSignInIntent(String str) {
        t.b(TAG, "getSignInIntent", true);
        return q0.a(getContext(), setSignInParams(str), getSubAppID());
    }

    @Override // com.huawei.hms.support.hwid.service.HuaweiIdAuthService
    public f<AuthHuaweiId> silentSignIn(String str) {
        t.b(TAG, "silentSignIn", true);
        HuaweiIdSignInRequest huaweiIdSignInRequest = new HuaweiIdSignInRequest();
        huaweiIdSignInRequest.setHuaweiIdAuthParams(setSignInParams(str));
        boolean z10 = this.mFromRequestToken;
        if (z10) {
            huaweiIdSignInRequest.setHuaweiIdGetTokenOptions(new HuaweiIdGetTokenOptions(this.mAccountName, z10));
        }
        try {
            String json = huaweiIdSignInRequest.toJson();
            String reportEntry = HiAnalyticsClient.reportEntry(getContext(), CommonNaming.silentSignIn, 60900100);
            if (this.mFromRequestToken) {
                return doWrite(new c(CommonNaming.silentSignIn, json, reportEntry));
            }
            return doWrite(new d(CommonNaming.silentSignIn, json, reportEntry));
        } catch (JSONException unused) {
            t.d(TAG, "JSONException, errorcode is:2015", true);
            g gVar = new g();
            gVar.b(new ApiException(new Status(2015)));
            return gVar.a();
        }
    }

    public HuaweiIdAuthServiceImpl(Context context, HuaweiIdAuthParams huaweiIdAuthParams, String str, int i10) {
        super(context, HUAWEI_ID_AUTH_API, huaweiIdAuthParams, new o0(), i10);
        this.mAccountName = str;
        this.mFromRequestToken = true;
    }

    public HuaweiIdAuthServiceImpl(Activity activity, HuaweiIdAuthParams huaweiIdAuthParams, String str, int i10) {
        super(activity, HUAWEI_ID_AUTH_API, huaweiIdAuthParams, (AbstractClientBuilder) new o0(), i10);
        this.mAccountName = str;
        this.mFromRequestToken = true;
    }
}
