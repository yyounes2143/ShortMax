package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInStatusCodes;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
@KeepName
/* loaded from: classes4.dex */
public class SignInHubActivity extends FragmentActivity {
    private static boolean zba = false;
    private boolean zbb = false;
    private SignInConfiguration zbc;
    private boolean zbd;
    private int zbe;
    private Intent zbf;

    private final void zbc(String str) {
        Intent intent = new Intent(str);
        if (str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
            intent.setPackage("com.google.android.gms");
        } else {
            intent.setPackage(getPackageName());
        }
        intent.putExtra("config", this.zbc);
        try {
            startActivityForResult(intent, 40962);
        } catch (ActivityNotFoundException unused) {
            this.zbb = true;
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            zbe(17);
        }
    }

    private final void zbd() {
        getSupportLoaderManager().initLoader(0, null, new zbv(this, null));
        zba = false;
    }

    private final void zbe(int i10) {
        Status status = new Status(i10);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        zba = false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        if (!this.zbb) {
            setResult(0);
            if (i10 != 40962) {
                return;
            }
            if (intent != null) {
                SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra(GoogleSignInApi.EXTRA_SIGN_IN_ACCOUNT);
                if (signInAccount != null && signInAccount.zba() != null) {
                    GoogleSignInAccount zba2 = signInAccount.zba();
                    if (zba2 == null) {
                        Log.e("AuthSignInClient", "Google account is null");
                        zbe(GoogleSignInStatusCodes.SIGN_IN_FAILED);
                        return;
                    }
                    zbn.zba(this).zbc(this.zbc.zba(), zba2);
                    intent.removeExtra(GoogleSignInApi.EXTRA_SIGN_IN_ACCOUNT);
                    intent.putExtra("googleSignInAccount", zba2);
                    this.zbd = true;
                    this.zbe = i11;
                    this.zbf = intent;
                    zbd();
                    return;
                } else if (intent.hasExtra("errorCode")) {
                    int intExtra = intent.getIntExtra("errorCode", 8);
                    if (intExtra == 13) {
                        intExtra = GoogleSignInStatusCodes.SIGN_IN_CANCELLED;
                    }
                    zbe(intExtra);
                    return;
                }
            }
            zbe(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        if (action == null) {
            Log.e("AuthSignInClient", "Null action");
            zbe(GoogleSignInStatusCodes.SIGN_IN_FAILED);
        } else if (action.equals("com.google.android.gms.auth.NO_IMPL")) {
            Log.e("AuthSignInClient", "Action not implemented");
            zbe(GoogleSignInStatusCodes.SIGN_IN_FAILED);
        } else if (!action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !action.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            Log.e("AuthSignInClient", "Unknown action: ".concat(String.valueOf(intent.getAction())));
            finish();
        } else {
            Bundle bundleExtra = intent.getBundleExtra("config");
            if (bundleExtra == null) {
                Log.e("AuthSignInClient", "Activity started with no configuration.");
                setResult(0);
                finish();
                return;
            }
            SignInConfiguration signInConfiguration = (SignInConfiguration) bundleExtra.getParcelable("config");
            if (signInConfiguration == null) {
                Log.e("AuthSignInClient", "Activity started with invalid configuration.");
                setResult(0);
                finish();
                return;
            }
            this.zbc = signInConfiguration;
            if (bundle == null) {
                if (zba) {
                    setResult(0);
                    zbe(GoogleSignInStatusCodes.SIGN_IN_CURRENTLY_IN_PROGRESS);
                    return;
                }
                zba = true;
                zbc(action);
                return;
            }
            boolean z10 = bundle.getBoolean("signingInGoogleApiClients");
            this.zbd = z10;
            if (z10) {
                this.zbe = bundle.getInt("signInResultCode");
                Intent intent2 = (Intent) bundle.getParcelable("signInResultData");
                if (intent2 == null) {
                    Log.e("AuthSignInClient", "Sign in result data cannot be null");
                    setResult(0);
                    finish();
                    return;
                }
                this.zbf = intent2;
                zbd();
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        zba = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.zbd);
        if (this.zbd) {
            bundle.putInt("signInResultCode", this.zbe);
            bundle.putParcelable("signInResultData", this.zbf);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ int zba() {
        return this.zbe;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Intent zbb() {
        return this.zbf;
    }
}
