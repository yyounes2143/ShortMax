package com.huawei.hms.hwid.internal.ui.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.activity.ForegroundIntentBuilder;
import com.huawei.hms.adapter.AvailableAdapter;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.common.CommonNaming;
import com.huawei.hms.support.api.entity.hwid.HuaweiIdSignInRequest;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import com.huawei.hms.support.hwid.result.HuaweiIdAuthResult;
import com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService;
import com.huawei.hms.ui.SafeIntent;
import com.huawei.hms.utils.HMSPackageManager;
import ib.j0;
import ib.l0;
import ib.p;
import ib.r0;
import ib.s;
import ib.t;
import ib.y;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class HwIdSignInHubActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private String f22194a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22195b = false;

    /* renamed from: c  reason: collision with root package name */
    private HuaweiIdSignInRequest f22196c = null;

    /* renamed from: d  reason: collision with root package name */
    private HuaweiIdAuthResult f22197d = null;

    /* renamed from: e  reason: collision with root package name */
    private l0 f22198e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements AvailableAdapter.AvailableCallBack {
        a() {
        }

        @Override // com.huawei.hms.adapter.AvailableAdapter.AvailableCallBack
        public void onComplete(int i10) {
            if (i10 == 0) {
                t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "version check ok", true);
                HwIdSignInHubActivity.this.g();
                return;
            }
            t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "version check failed", true);
            HwIdSignInHubActivity.this.b(i10);
        }
    }

    private void a() {
        t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "checkMinVersion start.", true);
        j0.b(this, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i10) {
        l0 l0Var;
        t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "onSignInAccountFailed: retCode：" + i10, true);
        String str = this.f22194a;
        if (str != null && (l0Var = this.f22198e) != null) {
            HiAnalyticsClient.reportExit(this, CommonNaming.signinIntent, str, l0Var.a(), s.a(i10), i10, (int) this.f22198e.c());
            t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "report: api=hwid.signinintentversion=" + this.f22198e.c(), true);
        }
        Status status = new Status(i10);
        HuaweiIdAuthResult huaweiIdAuthResult = new HuaweiIdAuthResult();
        huaweiIdAuthResult.setStatus(status);
        Intent intent = new Intent();
        try {
            intent.putExtra(HuaweiIdAuthAPIService.EXTRA_AUTH_HUAWEI_ID, huaweiIdAuthResult.toJson());
        } catch (JSONException unused) {
            t.d("[HUAWEIIDSDK]HwIdSignInClientHub", "convert result to json failed", true);
        }
        setResult(0, intent);
        finish();
    }

    private void c(int i10, String str) {
        t.d("[HUAWEIIDSDK]HwIdSignInClientHub", str, true);
        setResult(0);
        finish();
    }

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException: Cannot read field "wordsInUse" because "set" is null
        	at java.base/java.util.BitSet.or(BitSet.java:943)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:732)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:811)
        	at jadx.core.dex.visitors.regions.IfMakerHelper.restructureIf(IfMakerHelper.java:88)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:706)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private boolean f(android.content.Intent r3) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.hwid.internal.ui.activity.HwIdSignInHubActivity.f(android.content.Intent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "startSignInActivity", true);
        try {
            startActivityForResult(h(), 16587);
        } catch (ActivityNotFoundException e10) {
            this.f22195b = true;
            t.d("[HUAWEIIDSDK]HwIdSignInClientHub", "Launch sign in Intent failed. hms is probably being updated：" + e10.getClass().getSimpleName(), true);
            b(17);
        }
    }

    private Intent h() {
        t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "getJosSignInIntent", true);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("HUAWEIID_CP_CLIENTINFO");
        String stringExtra2 = intent.getStringExtra("HUAWEIID_SIGNIN_REQUEST");
        String stringExtra3 = intent.getStringExtra("exParams");
        t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "getJosSignInIntent. exParams is null " + TextUtils.isEmpty(stringExtra3), true);
        if (!TextUtils.isEmpty(stringExtra3)) {
            try {
                JSONObject jSONObject = new JSONObject(stringExtra2);
                jSONObject.put("exParams", stringExtra3);
                stringExtra2 = jSONObject.toString();
            } catch (JSONException e10) {
                t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "getJosSignInIntent Exception " + e10.getClass().getSimpleName(), true);
            }
        }
        String action = intent.getAction();
        try {
            l0 j10 = l0.j(stringExtra);
            ForegroundIntentBuilder kitSdkVersion = new ForegroundIntentBuilder(this).setAction(action).setRequestBody(stringExtra2).setKitSdkVersion(60900100);
            if (j10.e() != null) {
                kitSdkVersion.setSubAppId(j10.e());
            }
            Intent build = kitSdkVersion.build();
            t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "get package name of hms is " + HMSPackageManager.getInstance(this).getHMSPackageName(), true);
            t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "Current package name is " + getPackageName(), true);
            build.setPackage(getPackageName());
            return build;
        } catch (Exception e11) {
            t.d("[HUAWEIIDSDK]HwIdSignInClientHub", "getSignInIntent failed because:" + e11.getClass().getSimpleName(), true);
            return new Intent();
        }
    }

    protected void i(Bundle bundle) {
        if (bundle != null) {
            this.f22194a = bundle.getString("HiAnalyticsTransId");
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        SafeIntent safeIntent;
        String stringExtra;
        l0 l0Var;
        super.onActivityResult(i10, i11, intent);
        t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "onActivityResult: requestCode：" + i10 + " , resultCode：" + i11, true);
        if (intent != null) {
            safeIntent = new SafeIntent(intent);
        } else {
            safeIntent = null;
        }
        if (!this.f22195b && i10 == 16587) {
            int i12 = 8;
            if (safeIntent != null && (stringExtra = intent.getStringExtra(HuaweiIdAuthAPIService.EXTRA_AUTH_HUAWEI_ID)) != null) {
                try {
                    this.f22197d = new HuaweiIdAuthResult().fromJson(stringExtra);
                    r0.a().b(this.f22197d.getHuaweiId(), this.f22196c.getHuaweiIdAuthParams());
                    i12 = this.f22197d.getStatus().getStatusCode();
                } catch (JSONException unused) {
                    this.f22197d = null;
                    t.d("[HUAWEIIDSDK]HwIdSignInClientHub", "onActivityResult: JsonException", true);
                }
                int i13 = i12;
                String str = this.f22194a;
                if (str != null && (l0Var = this.f22198e) != null) {
                    HiAnalyticsClient.reportExit(this, CommonNaming.signinIntent, str, l0Var.a(), s.a(i13), i13, (int) this.f22198e.c());
                    t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "report: api=hwid.signinintentversion=" + this.f22198e.c(), true);
                }
                setResult(i11, safeIntent);
                finish();
                return;
            }
            if (i11 <= 0) {
                i11 = 8;
            }
            b(i11);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "onCreate", true);
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (f(intent)) {
            c(0, "invalid intent");
            return;
        }
        SafeIntent safeIntent = new SafeIntent(intent);
        boolean booleanExtra = safeIntent.getBooleanExtra("intent.extra.isfullscreen", false);
        t.b("[HUAWEIIDSDK]HwIdSignInClientHub", "isActivityFullScreen is :" + booleanExtra, true);
        if (booleanExtra) {
            y.h(getWindow());
            getWindow().setFlags(1024, 1024);
        } else {
            y.g(this);
        }
        String action = safeIntent.getAction();
        if (!TextUtils.equals("com.huawei.hms.jos.signIn", action)) {
            String str = "unknow Action:";
            if (action != null) {
                str = "unknow Action:" + action;
            }
            c(0, str);
            return;
        }
        String stringExtra = safeIntent.getStringExtra("HUAWEIID_CP_CLIENTINFO");
        try {
            this.f22196c = HuaweiIdSignInRequest.fromJson(safeIntent.getStringExtra("HUAWEIID_SIGNIN_REQUEST"));
        } catch (JSONException unused) {
            this.f22196c = null;
            t.d("[HUAWEIIDSDK]HwIdSignInClientHub", "onCreate: JsonException", true);
        }
        if (TextUtils.isEmpty(stringExtra)) {
            c(0, "Activity started with invalid cp client info");
            return;
        }
        try {
            this.f22198e = l0.j(stringExtra);
        } catch (JSONException unused2) {
            this.f22198e = null;
            t.d("[HUAWEIIDSDK]HwIdSignInClientHub", "onCreate: JsonException", true);
        }
        if (this.f22196c != null && this.f22198e != null) {
            p.b(this);
            if (bundle != null) {
                i(bundle);
                return;
            }
            this.f22194a = HiAnalyticsClient.reportEntry(this, CommonNaming.signinIntent, 60900100);
            a();
            return;
        }
        c(0, "Activity started with invalid sign in request info");
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        String str = this.f22194a;
        if (str != null && bundle != null) {
            bundle.putString("HiAnalyticsTransId", str);
        }
    }
}
