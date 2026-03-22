package com.google.firebase.auth.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsService;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.internal.p003firebaseauthapi.zza;
import com.google.android.gms.internal.p003firebaseauthapi.zzaeq;
import com.google.android.gms.internal.p003firebaseauthapi.zzaer;
import com.google.android.gms.internal.p003firebaseauthapi.zzaes;
import com.google.android.gms.internal.p003firebaseauthapi.zzagi;
import com.google.android.gms.internal.p003firebaseauthapi.zzagl;
import com.google.android.gms.internal.p003firebaseauthapi.zzajb;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.internal.GenericIdpActivity;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import v7.b1;
import v7.c1;
import v7.j;
import v7.l0;
import v7.n0;
import v7.v;
import v7.z0;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@KeepName
/* loaded from: classes5.dex */
public class GenericIdpActivity extends FragmentActivity implements zzaes {

    /* renamed from: b  reason: collision with root package name */
    private static long f20480b;

    /* renamed from: c  reason: collision with root package name */
    private static final n0 f20481c = n0.d();

    /* renamed from: a  reason: collision with root package name */
    private boolean f20482a = false;

    @Nullable
    private final Uri.Builder j(Uri.Builder builder, Intent intent, String str, String str2) {
        String str3;
        String stringExtra = intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY");
        String stringExtra2 = intent.getStringExtra("com.google.firebase.auth.KEY_PROVIDER_ID");
        String stringExtra3 = intent.getStringExtra("com.google.firebase.auth.KEY_TENANT_ID");
        String stringExtra4 = intent.getStringExtra("com.google.firebase.auth.KEY_FIREBASE_APP_NAME");
        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("com.google.firebase.auth.KEY_PROVIDER_SCOPES");
        if (stringArrayListExtra != null && !stringArrayListExtra.isEmpty()) {
            str3 = TextUtils.join(",", stringArrayListExtra);
        } else {
            str3 = null;
        }
        String l10 = l(intent.getBundleExtra("com.google.firebase.auth.KEY_PROVIDER_CUSTOM_PARAMS"));
        String uuid = UUID.randomUUID().toString();
        String zza = zzaer.zza(this, UUID.randomUUID().toString());
        String action = intent.getAction();
        String stringExtra5 = intent.getStringExtra("com.google.firebase.auth.internal.CLIENT_VERSION");
        String str4 = str3;
        z0.b().e(getApplicationContext(), str, uuid, zza, action, stringExtra2, stringExtra3, stringExtra4);
        String a10 = b1.c(getApplicationContext(), com.google.firebase.f.n(stringExtra4).q()).a();
        if (TextUtils.isEmpty(a10)) {
            Log.e("GenericIdpActivity", "Could not generate an encryption key for Generic IDP - cancelling flow.");
            m(j.a("Failed to generate/retrieve public encryption key for Generic IDP flow."));
            return null;
        } else if (zza == null) {
            return null;
        } else {
            builder.appendQueryParameter("eid", TtmlNode.TAG_P).appendQueryParameter("v", "X" + stringExtra5).appendQueryParameter("authType", "signInWithRedirect").appendQueryParameter("apiKey", stringExtra).appendQueryParameter("providerId", stringExtra2).appendQueryParameter("sessionId", zza).appendQueryParameter("eventId", uuid).appendQueryParameter("apn", str).appendQueryParameter("sha1Cert", str2).appendQueryParameter("publicKey", a10);
            if (!TextUtils.isEmpty(str4)) {
                builder.appendQueryParameter("scopes", str4);
            }
            if (!TextUtils.isEmpty(l10)) {
                builder.appendQueryParameter("customParameters", l10);
            }
            if (!TextUtils.isEmpty(stringExtra3)) {
                builder.appendQueryParameter(ScarConstants.TOKEN_ID_KEY, stringExtra3);
            }
            return builder;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Uri k(Uri uri, Task task) throws Exception {
        Uri.Builder buildUpon = uri.buildUpon();
        if (task.isSuccessful()) {
            p7.d dVar = (p7.d) task.getResult();
            if (dVar.a() != null) {
                String valueOf = String.valueOf(dVar.a());
                Log.w("GenericIdpActivity", "Error getting App Check token; using placeholder token instead. Error: " + valueOf);
            }
            String b10 = dVar.b();
            buildUpon.fragment("fac=" + b10);
        } else {
            String message = task.getException().getMessage();
            Log.e("GenericIdpActivity", "Unexpected error getting App Check token: " + message);
        }
        return buildUpon.build();
    }

    @Nullable
    private static String l(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (!TextUtils.isEmpty(string)) {
                    jSONObject.put(str, string);
                }
            }
        } catch (JSONException unused) {
            Log.e("GenericIdpActivity", "Unexpected JSON exception when serializing developer specified custom params");
        }
        return jSONObject.toString();
    }

    private final void m(Status status) {
        f20480b = 0L;
        this.f20482a = false;
        Intent intent = new Intent();
        l0.c(intent, status);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        if (!o(intent)) {
            v.b(getApplicationContext(), status);
        } else {
            f20481c.a(this);
        }
        finish();
    }

    public static /* synthetic */ void n(@NonNull GenericIdpActivity genericIdpActivity, @NonNull String str, @NonNull Task task) {
        if (genericIdpActivity.getPackageManager().resolveActivity(new Intent(CommonConstant.ACTION.HWID_SCHEME_URL), 0) != null) {
            List<ResolveInfo> queryIntentServices = genericIdpActivity.getPackageManager().queryIntentServices(new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION), 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                CustomTabsIntent build = new CustomTabsIntent.Builder().build();
                Log.i("GenericIdpActivity", "Opening IDP Sign In link in a custom chrome tab.");
                build.launchUrl(genericIdpActivity, (Uri) task.getResult());
                return;
            }
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, (Uri) task.getResult());
            intent.putExtra("com.android.browser.application_id", str);
            Log.i("GenericIdpActivity", "Opening IDP Sign In link in a browser window.");
            intent.addFlags(1073741824);
            intent.addFlags(268435456);
            genericIdpActivity.startActivity(intent);
            return;
        }
        Log.e("GenericIdpActivity", "Device cannot resolve intent for: android.intent.action.VIEW");
        zzaer.zzb(genericIdpActivity, str);
    }

    private final boolean o(Intent intent) {
        return LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    private final void p() {
        f20480b = 0L;
        this.f20482a = false;
        Intent intent = new Intent();
        intent.putExtra("com.google.firebase.auth.internal.EXTRA_CANCELED", true);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        if (!o(intent)) {
            v.b(this, j.a("WEB_CONTEXT_CANCELED"));
        } else {
            f20481c.a(this);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@NonNull Bundle bundle) {
        super.onCreate(bundle);
        String action = getIntent().getAction();
        if (!"com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN".equals(action) && !"com.google.firebase.auth.internal.NONGMSCORE_LINK".equals(action) && !"com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE".equals(action) && !CommonConstant.ACTION.HWID_SCHEME_URL.equals(action)) {
            Log.e("GenericIdpActivity", "Could not do operation - unknown action: " + action);
            p();
            return;
        }
        long currentTimeMillis = DefaultClock.getInstance().currentTimeMillis();
        if (currentTimeMillis - f20480b < 30000) {
            Log.e("GenericIdpActivity", "Could not start operation - already in progress");
            return;
        }
        f20480b = currentTimeMillis;
        if (bundle != null) {
            this.f20482a = bundle.getBoolean("com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN");
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(@NonNull Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (CommonConstant.ACTION.HWID_SCHEME_URL.equals(getIntent().getAction())) {
            Intent intent = getIntent();
            if (intent.hasExtra("firebaseError")) {
                m(l0.b(intent.getStringExtra("firebaseError")));
            } else if (intent.hasExtra("link") && intent.hasExtra("eventId")) {
                String stringExtra = intent.getStringExtra("link");
                String stringExtra2 = intent.getStringExtra("eventId");
                String packageName = getPackageName();
                boolean booleanExtra = intent.getBooleanExtra("encryptionEnabled", true);
                c1 c10 = z0.b().c(this, packageName, stringExtra2);
                if (c10 == null) {
                    p();
                }
                if (booleanExtra) {
                    stringExtra = b1.c(getApplicationContext(), com.google.firebase.f.n(c10.a()).q()).b(stringExtra);
                }
                zzajb zzajbVar = new zzajb(c10, stringExtra);
                String e10 = c10.e();
                String b10 = c10.b();
                zzajbVar.zzb(e10);
                if (!"com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN".equals(b10) && !"com.google.firebase.auth.internal.NONGMSCORE_LINK".equals(b10) && !"com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE".equals(b10)) {
                    Log.e("GenericIdpActivity", "unsupported operation: " + b10);
                    p();
                    return;
                }
                f20480b = 0L;
                this.f20482a = false;
                Intent intent2 = new Intent();
                SafeParcelableSerializer.serializeToIntentExtra(zzajbVar, intent2, "com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST");
                intent2.putExtra("com.google.firebase.auth.internal.OPERATION", b10);
                intent2.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
                if (!o(intent2)) {
                    v.c(getApplicationContext(), zzajbVar, b10, e10);
                } else {
                    f20481c.a(this);
                }
                finish();
            } else {
                p();
            }
        } else if (!this.f20482a) {
            String packageName2 = getPackageName();
            try {
                String lowerCase = Hex.bytesToStringUppercase(AndroidUtilsLight.getPackageCertificateHashBytes(this, packageName2)).toLowerCase(Locale.US);
                com.google.firebase.f n10 = com.google.firebase.f.n(getIntent().getStringExtra("com.google.firebase.auth.KEY_FIREBASE_APP_NAME"));
                FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(n10);
                if (!zzagl.zza(n10)) {
                    new zzaeq(packageName2, lowerCase, getIntent(), n10, this).executeOnExecutor(firebaseAuth.M(), new Void[0]);
                } else {
                    zza(j(Uri.parse(zzagl.zza(n10.p().b())).buildUpon(), getIntent(), packageName2, lowerCase).build(), packageName2, firebaseAuth.J());
                }
            } catch (PackageManager.NameNotFoundException e11) {
                String valueOf = String.valueOf(e11);
                Log.e("GenericIdpActivity", "Could not get package signature: " + packageName2 + " " + valueOf);
                zzaer.zzb(this, packageName2);
            }
            this.f20482a = true;
        } else {
            p();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN", this.f20482a);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaes
    @NonNull
    public final Context zza() {
        return getApplicationContext();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaes
    @Nullable
    public final Uri.Builder zza(@NonNull Intent intent, @NonNull String str, @NonNull String str2) {
        return j(new Uri.Builder().scheme("https").appendPath("__").appendPath("auth").appendPath("handler"), intent, str, str2);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaes
    @NonNull
    public final String zza(@NonNull String str) {
        String zza = zzagi.zza("firebear.identityToolkit");
        if (TextUtils.isEmpty(zza)) {
            return zzagl.zzb(str);
        }
        Log.e("GenericIdpActivity", "Found hermetic configuration for identityToolkit URL: " + zza);
        return zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaes
    @Nullable
    public final HttpURLConnection zza(@NonNull URL url) {
        try {
            return (HttpURLConnection) zza.zza().zza(url, "client-firebase-auth-api");
        } catch (IOException unused) {
            Log.e("GenericIdpActivity", "Error generating URL connection");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaes
    public final void zza(@NonNull String str, @Nullable Status status) {
        if (status == null) {
            p();
        } else {
            m(status);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaes
    public final void zza(@NonNull final Uri uri, @NonNull final String str, @NonNull w8.b<s7.b> bVar) {
        Task forResult;
        s7.b bVar2 = bVar.get();
        if (bVar2 != null) {
            forResult = bVar2.a(false).continueWith(new Continuation() { // from class: com.google.firebase.auth.internal.c
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return GenericIdpActivity.k(uri, task);
                }
            });
        } else {
            forResult = Tasks.forResult(uri);
        }
        forResult.addOnCompleteListener(new OnCompleteListener() { // from class: v7.t
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                GenericIdpActivity.n(GenericIdpActivity.this, str, task);
            }
        });
    }
}
