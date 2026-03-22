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
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsService;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.internal.p003firebaseauthapi.zza;
import com.google.android.gms.internal.p003firebaseauthapi.zzaeq;
import com.google.android.gms.internal.p003firebaseauthapi.zzaer;
import com.google.android.gms.internal.p003firebaseauthapi.zzaes;
import com.google.android.gms.internal.p003firebaseauthapi.zzafd;
import com.google.android.gms.internal.p003firebaseauthapi.zzagi;
import com.google.android.gms.internal.p003firebaseauthapi.zzagl;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.internal.RecaptchaActivity;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import v7.b1;
import v7.j;
import v7.l0;
import v7.n0;
import v7.v;
import v7.z0;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public class RecaptchaActivity extends FragmentActivity implements zzaes {

    /* renamed from: b  reason: collision with root package name */
    private static final String f20483b = "RecaptchaActivity";

    /* renamed from: c  reason: collision with root package name */
    private static long f20484c;

    /* renamed from: d  reason: collision with root package name */
    private static final n0 f20485d = n0.d();

    /* renamed from: a  reason: collision with root package name */
    private boolean f20486a = false;

    @Nullable
    @VisibleForTesting
    private final Uri.Builder j(Uri.Builder builder, Intent intent, String str, String str2) {
        String zza;
        String stringExtra = intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY");
        String uuid = UUID.randomUUID().toString();
        String stringExtra2 = intent.getStringExtra("com.google.firebase.auth.internal.CLIENT_VERSION");
        String stringExtra3 = intent.getStringExtra("com.google.firebase.auth.internal.FIREBASE_APP_NAME");
        com.google.firebase.f n10 = com.google.firebase.f.n(stringExtra3);
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(n10);
        z0.b().d(getApplicationContext(), str, uuid, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA", stringExtra3);
        String a10 = b1.c(getApplicationContext(), n10.q()).a();
        if (TextUtils.isEmpty(a10)) {
            Log.e(f20483b, "Could not generate an encryption key for reCAPTCHA - cancelling flow.");
            l(j.a("Failed to generate/retrieve public encryption key for reCAPTCHA flow."));
            return null;
        }
        if (!TextUtils.isEmpty(firebaseAuth.f())) {
            zza = firebaseAuth.f();
        } else {
            zza = zzafd.zza();
        }
        Uri.Builder appendQueryParameter = builder.appendQueryParameter("apiKey", stringExtra).appendQueryParameter("authType", "verifyApp").appendQueryParameter("apn", str).appendQueryParameter("hl", zza).appendQueryParameter("eventId", uuid);
        appendQueryParameter.appendQueryParameter("v", "X" + stringExtra2).appendQueryParameter("eid", TtmlNode.TAG_P).appendQueryParameter("appName", stringExtra3).appendQueryParameter("sha1Cert", str2).appendQueryParameter("publicKey", a10);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Uri k(Uri uri, Task task) throws Exception {
        Uri.Builder buildUpon = uri.buildUpon();
        if (task.isSuccessful()) {
            p7.d dVar = (p7.d) task.getResult();
            if (dVar.a() != null) {
                String str = f20483b;
                String valueOf = String.valueOf(dVar.a());
                Log.w(str, "Error getting App Check token; using placeholder token instead. Error: " + valueOf);
            }
            String b10 = dVar.b();
            buildUpon.fragment("fac=" + b10);
        } else {
            String str2 = f20483b;
            String message = task.getException().getMessage();
            Log.e(str2, "Unexpected error getting App Check token: " + message);
        }
        return buildUpon.build();
    }

    private final void l(Status status) {
        f20484c = 0L;
        this.f20486a = false;
        Intent intent = new Intent();
        l0.c(intent, status);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        n(intent);
        f20485d.a(this);
        finish();
    }

    public static /* synthetic */ void m(@NonNull RecaptchaActivity recaptchaActivity, @NonNull String str, @NonNull Task task) {
        if (recaptchaActivity.getPackageManager().resolveActivity(new Intent(CommonConstant.ACTION.HWID_SCHEME_URL), 0) != null) {
            List<ResolveInfo> queryIntentServices = recaptchaActivity.getPackageManager().queryIntentServices(new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION), 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                CustomTabsIntent build = new CustomTabsIntent.Builder().build();
                build.intent.addFlags(1073741824);
                build.intent.addFlags(268435456);
                build.launchUrl(recaptchaActivity, (Uri) task.getResult());
                return;
            }
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, (Uri) task.getResult());
            intent.putExtra("com.android.browser.application_id", str);
            intent.addFlags(1073741824);
            intent.addFlags(268435456);
            recaptchaActivity.startActivity(intent);
            return;
        }
        Log.e(f20483b, "Device cannot resolve intent for: android.intent.action.VIEW");
        zzaer.zzb(recaptchaActivity, str);
    }

    private final boolean n(Intent intent) {
        return LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    private final void o() {
        f20484c = 0L;
        this.f20486a = false;
        Intent intent = new Intent();
        intent.putExtra("com.google.firebase.auth.internal.EXTRA_CANCELED", true);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        n(intent);
        f20485d.a(this);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@NonNull Bundle bundle) {
        super.onCreate(bundle);
        String action = getIntent().getAction();
        if (!"com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA".equals(action) && !CommonConstant.ACTION.HWID_SCHEME_URL.equals(action)) {
            String str = f20483b;
            Log.e(str, "Could not do operation - unknown action: " + action);
            o();
            return;
        }
        long currentTimeMillis = DefaultClock.getInstance().currentTimeMillis();
        if (currentTimeMillis - f20484c < 30000) {
            Log.e(f20483b, "Could not start operation - already in progress");
            return;
        }
        f20484c = currentTimeMillis;
        if (bundle != null) {
            this.f20486a = bundle.getBoolean("com.google.firebase.auth.internal.KEY_ALREADY_STARTED_RECAPTCHA_FLOW");
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
                l(l0.b(intent.getStringExtra("firebaseError")));
            } else if (intent.hasExtra("link") && intent.hasExtra("eventId")) {
                String stringExtra = intent.getStringExtra("link");
                String g10 = z0.b().g(getApplicationContext(), getPackageName(), intent.getStringExtra("eventId"));
                if (TextUtils.isEmpty(g10)) {
                    Log.e(f20483b, "Failed to find registration for this event - failing to prevent session injection.");
                    l(j.a("Failed to find registration for this reCAPTCHA event"));
                }
                if (intent.getBooleanExtra("encryptionEnabled", true)) {
                    stringExtra = b1.c(getApplicationContext(), com.google.firebase.f.n(g10).q()).b(stringExtra);
                }
                String queryParameter = Uri.parse(stringExtra).getQueryParameter("recaptchaToken");
                f20484c = 0L;
                this.f20486a = false;
                Intent intent2 = new Intent();
                intent2.putExtra("com.google.firebase.auth.internal.RECAPTCHA_TOKEN", queryParameter);
                intent2.putExtra("com.google.firebase.auth.internal.OPERATION", "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA");
                intent2.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
                if (!n(intent2)) {
                    v.e(getApplicationContext(), queryParameter, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA");
                } else {
                    f20485d.a(this);
                }
                finish();
            } else {
                o();
            }
        } else if (!this.f20486a) {
            Intent intent3 = getIntent();
            String packageName = getPackageName();
            try {
                String lowerCase = Hex.bytesToStringUppercase(AndroidUtilsLight.getPackageCertificateHashBytes(this, packageName)).toLowerCase(Locale.US);
                com.google.firebase.f n10 = com.google.firebase.f.n(intent3.getStringExtra("com.google.firebase.auth.internal.FIREBASE_APP_NAME"));
                FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(n10);
                if (!zzagl.zza(n10)) {
                    new zzaeq(packageName, lowerCase, intent3, n10, this).executeOnExecutor(firebaseAuth.M(), new Void[0]);
                } else {
                    zza(j(Uri.parse(zzagl.zza(n10.p().b())).buildUpon(), getIntent(), packageName, lowerCase).build(), packageName, firebaseAuth.J());
                }
            } catch (PackageManager.NameNotFoundException e10) {
                String str = f20483b;
                String valueOf = String.valueOf(e10);
                Log.e(str, "Could not get package signature: " + packageName + " " + valueOf);
                zzaer.zzb(this, packageName);
            }
            this.f20486a = true;
        } else {
            o();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("com.google.firebase.auth.internal.KEY_ALREADY_STARTED_RECAPTCHA_FLOW", this.f20486a);
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
        String str2 = f20483b;
        Log.e(str2, "Found hermetic configuration for identityToolkit URL: " + zza);
        return zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaes
    @Nullable
    public final HttpURLConnection zza(@NonNull URL url) {
        try {
            return (HttpURLConnection) zza.zza().zza(url, "client-firebase-auth-api");
        } catch (IOException unused) {
            zzaes.zza.e("Error generating connection", new Object[0]);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaes
    public final void zza(@NonNull String str, @Nullable Status status) {
        if (status == null) {
            o();
        } else {
            l(status);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaes
    public final void zza(@NonNull final Uri uri, @NonNull final String str, @NonNull w8.b<s7.b> bVar) {
        Task forResult;
        s7.b bVar2 = bVar.get();
        if (bVar2 != null) {
            forResult = bVar2.a(false).continueWith(new Continuation() { // from class: com.google.firebase.auth.internal.g
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return RecaptchaActivity.k(uri, task);
                }
            });
        } else {
            forResult = Tasks.forResult(uri);
        }
        forResult.addOnCompleteListener(new OnCompleteListener() { // from class: v7.w
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                RecaptchaActivity.m(RecaptchaActivity.this, str, task);
            }
        });
    }
}
