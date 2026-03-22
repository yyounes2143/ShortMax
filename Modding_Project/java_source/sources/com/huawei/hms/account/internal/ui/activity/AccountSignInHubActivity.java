package com.huawei.hms.account.internal.ui.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.activity.ForegroundIntentBuilder;
import com.huawei.hms.adapter.AvailableAdapter;
import com.huawei.hms.support.account.request.AccountAuthParams;
import com.huawei.hms.support.account.result.AccountAuthResult;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.account.AccountSignInRequest;
import com.huawei.hms.support.api.entity.auth.PermissionInfo;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.common.CommonNaming;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService;
import com.huawei.hms.ui.SafeIntent;
import com.huawei.hms.utils.HMSPackageManager;
import ib.p;
import ib.q;
import ib.s;
import ib.t;
import ib.u;
import ib.y;
import ib.z;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class AccountSignInHubActivity extends Activity {

    /* renamed from: e  reason: collision with root package name */
    private u f21764e;

    /* renamed from: f  reason: collision with root package name */
    private int f21765f;

    /* renamed from: a  reason: collision with root package name */
    private String f21760a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f21761b = false;

    /* renamed from: c  reason: collision with root package name */
    private AccountSignInRequest f21762c = null;

    /* renamed from: d  reason: collision with root package name */
    private AccountAuthResult f21763d = null;

    /* renamed from: g  reason: collision with root package name */
    private String f21766g = CommonNaming.signinIntent;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements AvailableAdapter.AvailableCallBack {
        a() {
        }

        @Override // com.huawei.hms.adapter.AvailableAdapter.AvailableCallBack
        public void onComplete(int i10) {
            if (i10 == 0) {
                t.b("[ACCOUNTSDK]AccountSignInHubActivity", "version check ok", true);
                AccountSignInHubActivity.this.k();
                return;
            }
            t.b("[ACCOUNTSDK]AccountSignInHubActivity", "version check failed", true);
            AccountSignInHubActivity.this.b(i10);
        }
    }

    private Boolean a(SafeIntent safeIntent) {
        String stringExtra = safeIntent.getStringExtra("ACCESS_TOKEN");
        AccountAuthParams accountAuthParams = this.f21762c.getAccountAuthParams();
        if (accountAuthParams == null) {
            f("accountAuthParams is null");
            return Boolean.FALSE;
        }
        List<Scope> requestScopeList = accountAuthParams.getRequestScopeList();
        if (!TextUtils.isEmpty(stringExtra) && !q.a(requestScopeList).booleanValue() && requestScopeList.size() == 1) {
            this.f21766g = CommonNaming.independentsigninIntent;
            return Boolean.TRUE;
        }
        f("independent sign in params error");
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i10) {
        u uVar;
        t.b("[ACCOUNTSDK]AccountSignInHubActivity", "onSignInAccountFailed: retCode：" + i10, true);
        String str = this.f21760a;
        if (str != null && (uVar = this.f21764e) != null) {
            HiAnalyticsClient.reportExit(this, this.f21766g, str, uVar.a(), s.a(i10), i10, (int) this.f21764e.c());
        }
        Status status = new Status(i10);
        AccountAuthResult accountAuthResult = new AccountAuthResult();
        accountAuthResult.setStatus(status);
        Intent intent = new Intent();
        try {
            intent.putExtra(HuaweiIdAuthAPIService.EXTRA_AUTH_HUAWEI_ID, accountAuthResult.toJson());
        } catch (JSONException unused) {
            t.d("[ACCOUNTSDK]AccountSignInHubActivity", "convert result to json failed", true);
        }
        setResult(0, intent);
        finish();
    }

    private void c(int i10, String str) {
        t.d("[ACCOUNTSDK]AccountSignInHubActivity", "errMessage is: " + str, true);
        setResult(0);
        finish();
    }

    private void f(String str) {
        t.d("[ACCOUNTSDK]AccountSignInHubActivity", "onIndependentSignInFailed errMessage:" + str, true);
        Status status = new Status(2003, str);
        AccountAuthResult accountAuthResult = new AccountAuthResult();
        accountAuthResult.setStatus(status);
        Intent intent = new Intent();
        try {
            intent.putExtra(HuaweiIdAuthAPIService.EXTRA_AUTH_HUAWEI_ID, accountAuthResult.toJson());
        } catch (JSONException unused) {
            t.d("[ACCOUNTSDK]AccountSignInHubActivity", "convert result to json failed", true);
        }
        setResult(0, intent);
        finish();
    }

    private void g(boolean z10) {
        t.b("[ACCOUNTSDK]AccountSignInHubActivity", "isActivityFullScreen is :" + z10, true);
        if (z10) {
            y.h(getWindow());
            getWindow().setFlags(1024, 1024);
            return;
        }
        y.g(this);
    }

    private boolean h() {
        AccountAuthParams accountAuthParams = this.f21762c.getAccountAuthParams();
        if (accountAuthParams == null) {
            return false;
        }
        try {
            int optInt = new JSONObject(accountAuthParams.getSignInParams()).optInt(CommonConstant.RequestParams.KEY_ID_TOKEN_SIGN_ALG, 2);
            if (optInt != 1 && optInt != 2) {
                return false;
            }
            return true;
        } catch (JSONException e10) {
            t.d("[ACCOUNTSDK]AccountSignInHubActivity", "JSONException:" + e10.getClass().getSimpleName(), true);
            return false;
        }
    }

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException
        */
    private boolean i(android.content.Intent r3) {
        /*
            r2 = this;
            r0 = 1
            if (r3 != 0) goto L4
            goto La
        L4:
            java.lang.String r1 = "ANYTHING"
            r3.getStringExtra(r1)     // Catch: java.lang.Exception -> La
            r0 = 0
        La:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.account.internal.ui.activity.AccountSignInHubActivity.i(android.content.Intent):boolean");
    }

    private void j() {
        t.b("[ACCOUNTSDK]AccountSignInHubActivity", "checkMinVersion start.", true);
        ib.a.b(this, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        int i10;
        t.b("[ACCOUNTSDK]AccountSignInHubActivity", "startSignInActivity", true);
        Intent l10 = l();
        try {
            if (this.f21765f == 1) {
                i10 = 16588;
            } else {
                i10 = 16587;
            }
            startActivityForResult(l10, i10);
        } catch (ActivityNotFoundException e10) {
            this.f21761b = true;
            t.d("[ACCOUNTSDK]AccountSignInHubActivity", "Launch sign in Intent failed. hms is probably being updated：" + e10.getClass().getSimpleName(), true);
            b(17);
        }
    }

    private Intent l() {
        t.b("[ACCOUNTSDK]AccountSignInHubActivity", "getJosSignInIntent", true);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("HUAWEIID_CP_CLIENTINFO");
        String stringExtra2 = intent.getStringExtra("HUAWEIID_SIGNIN_REQUEST");
        String stringExtra3 = intent.getStringExtra("exParams");
        t.b("[ACCOUNTSDK]AccountSignInHubActivity", "getJosSignInIntent. exParams is null " + TextUtils.isEmpty(stringExtra3), true);
        if (!TextUtils.isEmpty(stringExtra3)) {
            try {
                JSONObject jSONObject = new JSONObject(stringExtra2);
                jSONObject.put("exParams", stringExtra3);
                stringExtra2 = jSONObject.toString();
            } catch (JSONException e10) {
                t.b("[ACCOUNTSDK]AccountSignInHubActivity", "getJosSignInIntent Exception " + e10.getClass().getSimpleName(), true);
            }
        }
        String action = intent.getAction();
        try {
            u j10 = u.j(stringExtra);
            ForegroundIntentBuilder kitSdkVersion = new ForegroundIntentBuilder(this).setAction(action).setRequestBody(stringExtra2).setKitSdkVersion(60900100);
            if (j10.e() != null) {
                kitSdkVersion.setSubAppId(j10.e());
            }
            if (this.f21765f == 1) {
                t.b("[ACCOUNTSDK]AccountSignInHubActivity", "setApiLevel is 11", true);
                kitSdkVersion.setApiLevel(11);
            }
            if (m().booleanValue()) {
                t.b("[ACCOUNTSDK]AccountSignInHubActivity", "setApiLevel is 13", true);
                kitSdkVersion.setApiLevel(13);
            }
            if (n()) {
                t.b("[ACCOUNTSDK]AccountSignInHubActivity", "setApiLevel is 22", true);
                kitSdkVersion.setApiLevel(22);
            }
            Intent build = kitSdkVersion.build();
            t.b("[ACCOUNTSDK]AccountSignInHubActivity", "get package name of hms is " + HMSPackageManager.getInstance(this).getHMSPackageName(), true);
            t.b("[ACCOUNTSDK]AccountSignInHubActivity", "current package name is " + getPackageName(), true);
            build.setPackage(getPackageName());
            return build;
        } catch (Exception e11) {
            t.d("[ACCOUNTSDK]AccountSignInHubActivity", "getSignInIntent failed because:" + e11.getClass().getSimpleName(), true);
            return new Intent();
        }
    }

    private Boolean m() {
        t.b("[ACCOUNTSDK]AccountSignInHubActivity", "checkCarrierIdPermission begin", true);
        AccountAuthParams accountAuthParams = this.f21762c.getAccountAuthParams();
        if (accountAuthParams == null) {
            return Boolean.FALSE;
        }
        List<PermissionInfo> permissionInfos = accountAuthParams.getPermissionInfos();
        if (q.b(permissionInfos).booleanValue()) {
            for (PermissionInfo permissionInfo : permissionInfos) {
                String permission = permissionInfo.getPermission();
                if (permission != null && permission.equals(CommonConstant.LocalPermission.CARRIER_ID)) {
                    t.b("[ACCOUNTSDK]AccountSignInHubActivity", "permissioninfos contain carrierId", true);
                    return Boolean.TRUE;
                }
            }
        }
        return Boolean.FALSE;
    }

    private boolean n() {
        t.b("[ACCOUNTSDK]AccountSignInHubActivity", "checkNeedConsent begin", true);
        AccountAuthParams accountAuthParams = this.f21762c.getAccountAuthParams();
        if (accountAuthParams == null) {
            return false;
        }
        try {
            return new JSONObject(accountAuthParams.getSignInParams()).optBoolean(CommonConstant.RequestParams.KEY_ID_NEED_CONSENT, false);
        } catch (JSONException e10) {
            t.d("[ACCOUNTSDK]AccountSignInHubActivity", "JSONException:" + e10.getClass().getSimpleName(), true);
            return false;
        }
    }

    protected void o(Bundle bundle) {
        if (bundle != null) {
            this.f21760a = bundle.getString("HiAnalyticsTransId");
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        SafeIntent safeIntent;
        String stringExtra;
        int i12;
        u uVar;
        super.onActivityResult(i10, i11, intent);
        t.b("[ACCOUNTSDK]AccountSignInHubActivity", "onActivityResult: requestCode：" + i10 + " , resultCode：" + i11, true);
        if (intent != null) {
            safeIntent = new SafeIntent(intent);
        } else {
            safeIntent = null;
        }
        if (!this.f21761b) {
            if (i10 == 16587 || i10 == 16588) {
                int i13 = 8;
                if (safeIntent != null && (stringExtra = intent.getStringExtra(HuaweiIdAuthAPIService.EXTRA_AUTH_HUAWEI_ID)) != null) {
                    try {
                        this.f21763d = new AccountAuthResult().fromJson(stringExtra);
                        if (i10 == 16587) {
                            z.a().b(this.f21763d.getAccount(), this.f21762c.getAccountAuthParams());
                        }
                        i12 = this.f21763d.getStatus().getStatusCode();
                    } catch (JSONException unused) {
                        this.f21763d = null;
                        t.d("[ACCOUNTSDK]AccountSignInHubActivity", "onActivityResult: JsonException", true);
                        i12 = 8;
                    }
                    String str = this.f21760a;
                    if (str != null && (uVar = this.f21764e) != null) {
                        HiAnalyticsClient.reportExit(this, this.f21766g, str, uVar.a(), s.a(i12), i12, (int) this.f21764e.c());
                    }
                    setResult(i11, safeIntent);
                    finish();
                    return;
                }
                if (i11 > 0) {
                    i13 = i11;
                }
                b(i13);
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        t.b("[ACCOUNTSDK]AccountSignInHubActivity", "onCreate", true);
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (i(intent)) {
            c(0, "invalid intent");
            return;
        }
        SafeIntent safeIntent = new SafeIntent(intent);
        g(safeIntent.getBooleanExtra("intent.extra.isfullscreen", false));
        String action = safeIntent.getAction();
        if (!TextUtils.equals("com.huawei.hms.jos.signIn", action) && !TextUtils.equals("com.huawei.hms.account.signIn", action) && !TextUtils.equals("com.huawei.hms.account.picker.signIn", action)) {
            String str = "unknow Action:";
            if (action != null) {
                str = "unknow Action:" + action;
            }
            c(0, str);
            return;
        }
        String stringExtra = safeIntent.getStringExtra("HUAWEIID_CP_CLIENTINFO");
        try {
            this.f21762c = AccountSignInRequest.fromJson(safeIntent.getStringExtra("HUAWEIID_SIGNIN_REQUEST"));
        } catch (JSONException unused) {
            this.f21762c = null;
            t.d("[ACCOUNTSDK]AccountSignInHubActivity", "onCreate: JsonException", true);
        }
        if (TextUtils.isEmpty(stringExtra)) {
            c(0, "Activity started with invalid cp client info");
            return;
        }
        try {
            this.f21764e = u.j(stringExtra);
        } catch (JSONException unused2) {
            this.f21764e = null;
            t.d("[ACCOUNTSDK]AccountSignInHubActivity", "onCreate: JsonException", true);
        }
        if (this.f21762c != null && this.f21764e != null) {
            if (!h()) {
                b(2003);
                return;
            }
            int intExtra = safeIntent.getIntExtra("INDEPENDENT_SIGN_IN_FLAG", 0);
            this.f21765f = intExtra;
            if (intExtra == 1 && !a(safeIntent).booleanValue()) {
                b(2003);
                return;
            }
            p.b(this);
            if (bundle != null) {
                o(bundle);
                return;
            }
            this.f21760a = HiAnalyticsClient.reportEntry(this, this.f21766g, 60900100);
            j();
            return;
        }
        c(0, "Activity started with invalid sign in request info");
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        t.b("[ACCOUNTSDK]AccountSignInHubActivity", "onSaveInstanceState start", true);
        String str = this.f21760a;
        if (str != null && bundle != null) {
            bundle.putString("HiAnalyticsTransId", str);
        }
    }
}
