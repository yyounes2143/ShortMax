package com.huawei.hms.support.hwid.service;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.api.HuaweiApiClient;
import com.huawei.hms.api.HuaweiApiClientImpl;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.api.OptionalPendingResult;
import com.huawei.hms.common.api.internal.OptionalPendingResultImpl;
import com.huawei.hms.core.aidl.e;
import com.huawei.hms.support.api.PendingResultImpl;
import com.huawei.hms.support.api.ResolveResult;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.PendingResult;
import com.huawei.hms.support.api.client.ResultCallback;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.core.ConnectService;
import com.huawei.hms.support.api.entity.auth.PermissionInfo;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.common.CommonNaming;
import com.huawei.hms.support.api.entity.core.JosGetNoticeResp;
import com.huawei.hms.support.api.entity.hwid.RevokeAccessResp;
import com.huawei.hms.support.api.entity.hwid.SignInReq;
import com.huawei.hms.support.api.entity.hwid.SignInResp;
import com.huawei.hms.support.api.entity.hwid.SignOutReq;
import com.huawei.hms.support.api.entity.hwid.SignOutResp;
import com.huawei.hms.support.api.hwid.SignInResult;
import com.huawei.hms.support.hwid.HuaweiIdAuthAPIManager;
import com.huawei.hms.support.hwid.HuaweiIdAuthManager;
import com.huawei.hms.support.hwid.request.HuaweiIdAuthParams;
import com.huawei.hms.support.hwid.result.AuthHuaweiId;
import com.huawei.hms.support.hwid.result.HuaweiIdAuthResult;
import com.huawei.hms.ui.SafeBundle;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.Util;
import com.mbridge.msdk.MBridgeConstans;
import ib.q0;
import ib.t;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import ua.f;
/* loaded from: classes5.dex */
public class HuaweiIdAuthAPIServiceImpl implements HuaweiIdAuthAPIService {

    /* renamed from: a  reason: collision with root package name */
    private HuaweiApiClient f22297a = null;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<Activity> f22298b = null;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public static class SignOutNoConnectPendingResult extends PendingResultImpl<Status, SignOutResp> {

        /* renamed from: a  reason: collision with root package name */
        private ResultCallback f22303a;

        public SignOutNoConnectPendingResult(ApiClient apiClient, String str, e eVar) {
            super(apiClient, str, eVar);
        }

        public ResultCallback getCallback() {
            return this.f22303a;
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl, com.huawei.hms.support.api.client.PendingResult
        public void setResultCallback(ResultCallback<Status> resultCallback) {
            this.f22303a = resultCallback;
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        public Status onComplete(SignOutResp signOutResp) {
            Status status = new Status(0);
            t.b("HuaweiIdAuthAPIServiceImpl", "signOut onComplete", true);
            return status;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public static class SignOutOnCompleteListener implements ua.c<Void> {

        /* renamed from: a  reason: collision with root package name */
        private final SignOutNoConnectPendingResult f22304a;

        public SignOutOnCompleteListener(SignOutNoConnectPendingResult signOutNoConnectPendingResult) {
            this.f22304a = signOutNoConnectPendingResult;
        }

        @Override // ua.c
        public void onComplete(f<Void> fVar) {
            t.b("HuaweiIdAuthAPIServiceImpl", "SignOutOnCompleteListener onComplete", true);
            if (this.f22304a == null) {
                t.d("HuaweiIdAuthAPIServiceImpl", "signOutResultPendingResult is null", true);
                return;
            }
            Status status = Status.FAILURE;
            if (fVar.g()) {
                status = Status.SUCCESS;
            } else {
                Exception d10 = fVar.d();
                if (d10 != null && (d10 instanceof ApiException)) {
                    status = new Status(((ApiException) d10).getStatusCode());
                } else {
                    t.d("HuaweiIdAuthAPIServiceImpl", "wrong exception while failed", true);
                }
            }
            ResultCallback callback = this.f22304a.getCallback();
            if (callback != null) {
                callback.onResult(status);
            } else {
                t.d("HuaweiIdAuthAPIServiceImpl", "set Result callback after signOut completed", true);
            }
        }
    }

    /* loaded from: classes5.dex */
    private class a implements ResultCallback<ResolveResult<JosGetNoticeResp>> {
        private a() {
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        /* renamed from: a */
        public void onResult(ResolveResult<JosGetNoticeResp> resolveResult) {
            JosGetNoticeResp value;
            Intent noticeIntent;
            if (resolveResult != null && resolveResult.getStatus().isSuccess() && (noticeIntent = (value = resolveResult.getValue()).getNoticeIntent()) != null && value.getStatusCode() == 0) {
                t.a("HuaweiIdAuthAPIServiceImpl", "get notice has intent.", true);
                Activity validActivity = Util.getValidActivity((Activity) HuaweiIdAuthAPIServiceImpl.this.f22298b.get(), HuaweiIdAuthAPIServiceImpl.this.f22297a.getTopActivity());
                if (validActivity == null) {
                    t.d("HuaweiIdAuthAPIServiceImpl", "showNotice no valid activity!", true);
                    return;
                }
                try {
                    validActivity.startActivity(noticeIntent);
                } catch (Exception e10) {
                    t.d("HuaweiIdAuthAPIServiceImpl", "startActivity exception" + e10.getClass().getSimpleName(), true);
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    static class b extends PendingResultImpl<Status, RevokeAccessResp> {
        public b(ApiClient apiClient, String str, e eVar) {
            super(apiClient, str, eVar);
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        /* renamed from: a */
        public Status onComplete(RevokeAccessResp revokeAccessResp) {
            t.b("HuaweiIdAuthAPIServiceImpl", "RevokeAccessPendingResult onComplete", true);
            return new Status(revokeAccessResp.getRetCode());
        }
    }

    /* loaded from: classes5.dex */
    static class c extends PendingResultImpl<Status, SignOutResp> {
        public c(ApiClient apiClient, String str, e eVar) {
            super(apiClient, str, eVar);
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        /* renamed from: a */
        public Status onComplete(SignOutResp signOutResp) {
            Status status = new Status(0);
            t.b("HuaweiIdAuthAPIServiceImpl", "signOut onComplete", true);
            return status;
        }
    }

    private int c(String str) {
        if (TextUtils.isEmpty(str)) {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            t.d("HuaweiIdAuthAPIServiceImpl", "parse homeZone error.", true);
            return 0;
        }
    }

    protected static int conversionGender(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "-1";
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    protected static int conversionHomeZone(String str) {
        if (TextUtils.isEmpty(str)) {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static HashSet<Scope> conversionScopes(String str) {
        HashSet<Scope> hashSet = new HashSet<>();
        if (str != null) {
            for (String str2 : str.split(" ")) {
                hashSet.add(new Scope(str2));
            }
        }
        return hashSet;
    }

    protected static int conversionStatus(String str) {
        if (TextUtils.isEmpty(str)) {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    private PendingResult<Status> d(HuaweiApiClient huaweiApiClient) {
        t.b("HuaweiIdAuthAPIServiceImpl", "Enter signOutNoConnected", true);
        f<Void> signOut = HuaweiIdAuthManager.getService(huaweiApiClient.getContext(), getSignInOption(huaweiApiClient)).signOut();
        SignOutNoConnectPendingResult signOutNoConnectPendingResult = new SignOutNoConnectPendingResult(huaweiApiClient, CommonNaming.signout, new SignOutReq());
        signOut.a(new SignOutOnCompleteListener(signOutNoConnectPendingResult));
        return signOutNoConnectPendingResult;
    }

    @Override // com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService
    public PendingResult<Status> cancelAuthorization(HuaweiApiClient huaweiApiClient) {
        t.b("HuaweiIdAuthAPIServiceImpl", "Enter cancelAuthorization", true);
        this.f22297a = huaweiApiClient;
        return new b(huaweiApiClient, CommonNaming.revokeAccess, c(huaweiApiClient));
    }

    public HuaweiIdAuthResult getHuaweiIdSignInResultFromIntent(Intent intent) {
        Status status;
        HuaweiIdAuthResult huaweiIdAuthResult = new HuaweiIdAuthResult();
        if (intent != null && intent.getExtras() != null) {
            SafeBundle safeBundle = new SafeBundle(intent.getExtras());
            int i10 = safeBundle.getInt(CommonConstant.RETKEY.RETCODE, 0);
            status = new Status(i10);
            if (i10 == 0) {
                huaweiIdAuthResult.setAuthHuaweiId(a(safeBundle));
                t.b("HuaweiIdAuthAPIServiceImpl", "getSignInResult success", true);
            } else {
                t.b("HuaweiIdAuthAPIServiceImpl", "getSignInResult fail", true);
            }
        } else {
            status = new Status(2003);
            t.d("HuaweiIdAuthAPIServiceImpl", "getSignInResult error", true);
        }
        huaweiIdAuthResult.setStatus(status);
        return huaweiIdAuthResult;
    }

    @Override // com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService
    public SignInResult getHwIdSignInResultFromIntent(Intent intent) {
        PendingIntent activity;
        if (intent != null && intent.getExtras() != null) {
            SafeBundle safeBundle = new SafeBundle(intent.getExtras());
            int i10 = safeBundle.getInt(CommonConstant.RETKEY.RETCODE, 0);
            if (i10 == 0) {
                String string = safeBundle.getString(CommonConstant.RETKEY.GENDER);
                String string2 = safeBundle.getString(CommonConstant.RETKEY.USERID, "");
                String string3 = safeBundle.getString(CommonConstant.RETKEY.STATUS);
                String string4 = safeBundle.getString(CommonConstant.RETKEY.SCOPE);
                String string5 = safeBundle.getString(CommonConstant.RETKEY.ID_TOKEN);
                String string6 = safeBundle.getString(CommonConstant.RETKEY.EMAIL);
                String string7 = safeBundle.getString(CommonConstant.RETKEY.FAMILY_NAME);
                String string8 = safeBundle.getString(CommonConstant.RETKEY.GIVEN_NAME);
                String string9 = safeBundle.getString(CommonConstant.RETKEY.AGE_RANGE);
                String string10 = safeBundle.getString(CommonConstant.RETKEY.HOME_ZONE);
                AuthHuaweiId build = AuthHuaweiId.build(safeBundle.getString(CommonConstant.RETKEY.OPENID, ""), string2, safeBundle.getString(CommonConstant.RETKEY.DISPLAYNAME, ""), safeBundle.getString(CommonConstant.RETKEY.PHOTOURL), safeBundle.getString(CommonConstant.RETKEY.ACCESS_TOKEN, ""), safeBundle.getString(CommonConstant.RETKEY.SERVICECOUNTRYCODE, ""), conversionStatus(string3), conversionGender(string), conversionScopes(string4), safeBundle.getString(CommonConstant.RETKEY.SERVICEAUTHCODE, ""), safeBundle.getString(CommonConstant.RETKEY.UNIONID, ""), safeBundle.getString(CommonConstant.RETKEY.COUNTRYCODE, ""));
                build.setIdToken(string5);
                build.setEmail(string6);
                build.setFamilyName(string7);
                build.setGivenName(string8);
                build.setAgeRange(string9);
                build.setHomeZone(conversionHomeZone(string10));
                Status status = new Status(i10);
                SignInResult signInResult = new SignInResult(status);
                signInResult.setStatus(status);
                signInResult.setAuthHuaweiId(build);
                t.b("HuaweiIdAuthAPIServiceImpl", "getSignInResult success", true);
                return signInResult;
            }
            if (i10 != 2002 && i10 != 2004) {
                activity = null;
            } else {
                Random random = new Random();
                t.b("HuaweiIdAuthAPIServiceImpl", "SDK version >= 23", true);
                activity = PendingIntent.getActivity(this.f22297a.getContext(), random.nextInt(), intent, 67108864);
            }
            Status status2 = new Status(i10, (String) null, activity);
            SignInResult signInResult2 = new SignInResult(status2);
            signInResult2.setStatus(status2);
            signInResult2.setData(intent);
            t.b("HuaweiIdAuthAPIServiceImpl", "getSignInResult fail", true);
            return signInResult2;
        }
        SignInResult signInResult3 = new SignInResult(new Status(2003));
        t.d("HuaweiIdAuthAPIServiceImpl", "getSignInResult error", true);
        return signInResult3;
    }

    @Override // com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService
    public Intent getSignInIntent(HuaweiApiClient huaweiApiClient) {
        Context context = huaweiApiClient.getContext();
        HuaweiIdAuthParams signInOption = getSignInOption(huaweiApiClient);
        String str = null;
        if (signInOption == null) {
            return null;
        }
        if (huaweiApiClient.getSubAppInfo() != null) {
            str = huaweiApiClient.getSubAppInfo().getSubAppID();
        }
        return q0.a(context, signInOption, str);
    }

    protected HuaweiIdAuthParams getSignInOption(HuaweiApiClient huaweiApiClient) {
        Api.ApiOptions apiOptions;
        Map<Api<?>, Api.ApiOptions> apiMap = huaweiApiClient.getApiMap();
        if (apiMap != null && (apiOptions = apiMap.get(HuaweiIdAuthAPIManager.HUAWEI_OAUTH_API)) != null && (apiOptions instanceof HuaweiIdAuthParams)) {
            return (HuaweiIdAuthParams) apiOptions;
        }
        return null;
    }

    @Override // com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService
    public HuaweiIdAuthResult parseHuaweiIdFromIntent(Intent intent) {
        return q0.c(intent);
    }

    @Override // com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService
    public PendingResult<SignInResult> signIn(Activity activity, HuaweiApiClient huaweiApiClient) {
        t.b("HuaweiIdAuthAPIServiceImpl", "Enter signIn", true);
        Checker.checkNonNull(activity, "Activity must not be null.");
        Checker.checkNonNull(huaweiApiClient, "HuaweiApiClient must not be null.");
        List<Scope> a10 = a(huaweiApiClient);
        List<PermissionInfo> b10 = b(huaweiApiClient);
        HashSet hashSet = new HashSet();
        for (Scope scope : a10) {
            hashSet.add(scope.getScopeUri());
        }
        HashSet hashSet2 = new HashSet();
        for (PermissionInfo permissionInfo : b10) {
            hashSet2.add(permissionInfo.getPermission());
        }
        SignInReq signInReq = new SignInReq(hashSet, hashSet2);
        this.f22297a = huaweiApiClient;
        this.f22298b = new WeakReference<>(activity);
        return new PendingResultImpl<SignInResult, SignInResp>(huaweiApiClient, CommonNaming.signin, signInReq) { // from class: com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIServiceImpl.1
            @Override // com.huawei.hms.support.api.PendingResultImpl
            /* renamed from: a */
            public SignInResult onComplete(SignInResp signInResp) {
                t.b("HuaweiIdAuthAPIServiceImpl", "signIn onComplete:" + signInResp.getRetCode(), true);
                HuaweiIdAuthAPIServiceImpl.this.a(signInResp.getRetCode());
                Intent data = signInResp.getData();
                data.putExtra(CommonConstant.RETKEY.RETCODE, signInResp.getRetCode());
                return HuaweiIdAuthAPIServiceImpl.this.getHwIdSignInResultFromIntent(data);
            }
        };
    }

    @Override // com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService
    public PendingResult<SignInResult> signInBackend(HuaweiApiClient huaweiApiClient) {
        t.b("HuaweiIdAuthAPIServiceImpl", "Enter signInBackend", true);
        Checker.checkNonNull(huaweiApiClient, "HuaweiApiClient must not be null.");
        this.f22297a = huaweiApiClient;
        List<Scope> a10 = a(huaweiApiClient);
        List<PermissionInfo> b10 = b(huaweiApiClient);
        HashSet hashSet = new HashSet();
        for (Scope scope : a10) {
            hashSet.add(scope.getScopeUri());
        }
        HashSet hashSet2 = new HashSet();
        for (PermissionInfo permissionInfo : b10) {
            hashSet2.add(permissionInfo.getPermission());
        }
        return new PendingResultImpl<SignInResult, SignInResp>(huaweiApiClient, CommonNaming.singinbackend, new SignInReq(hashSet, hashSet2)) { // from class: com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIServiceImpl.2
            @Override // com.huawei.hms.support.api.PendingResultImpl
            /* renamed from: a */
            public SignInResult onComplete(SignInResp signInResp) {
                t.b("HuaweiIdAuthAPIServiceImpl", "signInBackend onComplete:" + signInResp.getRetCode(), true);
                Intent data = signInResp.getData();
                data.putExtra(CommonConstant.RETKEY.RETCODE, signInResp.getRetCode());
                return HuaweiIdAuthAPIServiceImpl.this.getHwIdSignInResultFromIntent(data);
            }
        };
    }

    @Override // com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService
    public PendingResult<Status> signOut(HuaweiApiClient huaweiApiClient) {
        t.b("HuaweiIdAuthAPIServiceImpl", "Enter signOut", true);
        if (!huaweiApiClient.isConnected()) {
            return d(huaweiApiClient);
        }
        return new c(huaweiApiClient, CommonNaming.signout, new SignOutReq());
    }

    @Override // com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService
    public OptionalPendingResult<HuaweiIdAuthResult> silentSignIn(HuaweiApiClient huaweiApiClient) {
        t.b("HuaweiIdAuthAPIServiceImpl", "Enter silentSignIn", true);
        Checker.checkNonNull(huaweiApiClient, "HuaweiApiClient must not be null.");
        this.f22297a = huaweiApiClient;
        return new OptionalPendingResultImpl(new PendingResultImpl<HuaweiIdAuthResult, SignInResp>(huaweiApiClient, CommonNaming.singinbackend, c(huaweiApiClient)) { // from class: com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIServiceImpl.3
            @Override // com.huawei.hms.support.api.PendingResultImpl
            /* renamed from: a */
            public HuaweiIdAuthResult onComplete(SignInResp signInResp) {
                t.b("HuaweiIdAuthAPIServiceImpl", "signInBackend onComplete:" + signInResp.getRetCode(), true);
                Intent data = signInResp.getData();
                data.putExtra(CommonConstant.RETKEY.RETCODE, signInResp.getRetCode());
                return HuaweiIdAuthAPIServiceImpl.this.getHuaweiIdSignInResultFromIntent(data);
            }
        });
    }

    static List<PermissionInfo> b(HuaweiApiClient huaweiApiClient) {
        return ((HuaweiApiClientImpl) huaweiApiClient).getPermissionInfos();
    }

    static List<Scope> a(HuaweiApiClient huaweiApiClient) {
        return ((HuaweiApiClientImpl) huaweiApiClient).getScopes();
    }

    private int b(String str) {
        if (TextUtils.isEmpty(str)) {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    private AuthHuaweiId a(SafeBundle safeBundle) {
        int i10;
        if (safeBundle == null) {
            t.b("HuaweiIdAuthAPIServiceImpl", "bd is null", true);
            return new AuthHuaweiId();
        }
        String string = safeBundle.getString(CommonConstant.RETKEY.ACCESS_TOKEN, "");
        String string2 = safeBundle.getString(CommonConstant.RETKEY.SERVICEAUTHCODE, "");
        String string3 = safeBundle.getString(CommonConstant.RETKEY.DISPLAYNAME, "");
        String string4 = safeBundle.getString(CommonConstant.RETKEY.USERID, "");
        String string5 = safeBundle.getString(CommonConstant.RETKEY.OPENID, "");
        String string6 = safeBundle.getString(CommonConstant.RETKEY.PHOTOURL);
        String string7 = safeBundle.getString(CommonConstant.RETKEY.SERVICECOUNTRYCODE, "");
        String string8 = safeBundle.getString(CommonConstant.RETKEY.COUNTRYCODE, "");
        String string9 = safeBundle.getString(CommonConstant.RETKEY.UNIONID, "");
        int a10 = a(safeBundle.getString(CommonConstant.RETKEY.GENDER));
        int b10 = b(safeBundle.getString(CommonConstant.RETKEY.STATUS));
        int c10 = c(safeBundle.getString(CommonConstant.RETKEY.HOME_ZONE));
        String string10 = safeBundle.getString(CommonConstant.RETKEY.SCOPE);
        HashSet hashSet = new HashSet();
        if (string10 != null) {
            String[] split = string10.split(" ");
            int length = split.length;
            i10 = c10;
            int i11 = 0;
            while (i11 < length) {
                hashSet.add(new Scope(split[i11]));
                i11++;
                length = length;
                split = split;
            }
        } else {
            i10 = c10;
        }
        AuthHuaweiId build = AuthHuaweiId.build(string5, string4, string3, string6, string, string7, b10, a10, hashSet, string2, string9, string8);
        build.setIdToken(safeBundle.getString(CommonConstant.RETKEY.ID_TOKEN));
        build.setEmail(safeBundle.getString(CommonConstant.RETKEY.EMAIL));
        build.setFamilyName(safeBundle.getString(CommonConstant.RETKEY.FAMILY_NAME));
        build.setGivenName(safeBundle.getString(CommonConstant.RETKEY.GIVEN_NAME));
        build.setAgeRange(safeBundle.getString(CommonConstant.RETKEY.AGE_RANGE));
        build.setHomeZone(i10);
        return build;
    }

    private SignInReq c(HuaweiApiClient huaweiApiClient) {
        List<Scope> a10 = a(huaweiApiClient);
        List<PermissionInfo> b10 = b(huaweiApiClient);
        HashSet hashSet = new HashSet();
        for (Scope scope : a10) {
            hashSet.add(scope.getScopeUri());
        }
        HashSet hashSet2 = new HashSet();
        for (PermissionInfo permissionInfo : b10) {
            hashSet2.add(permissionInfo.getPermission());
        }
        return new SignInReq(hashSet, hashSet2);
    }

    private int a(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "-1";
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10) {
        if (i10 == 0 && HuaweiApiAvailability.getInstance().isHuaweiMobileNoticeAvailable(this.f22297a.getContext()) == 0) {
            new Timer().schedule(new TimerTask() { // from class: com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIServiceImpl.4
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    ConnectService.getNotice(HuaweiIdAuthAPIServiceImpl.this.f22297a, 1, "6.12.0.300").setResultCallback(new a());
                }
            }, 200L);
        }
    }
}
