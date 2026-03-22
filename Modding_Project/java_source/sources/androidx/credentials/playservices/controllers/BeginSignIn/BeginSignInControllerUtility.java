package androidx.credentials.playservices.controllers.BeginSignIn;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.credentials.CredentialOption;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetPasswordOption;
import androidx.credentials.GetPublicKeyCredentialOption;
import androidx.credentials.playservices.controllers.CreatePublicKeyCredential.PublicKeyCredentialControllerUtility;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.libraries.identity.googleid.GetGoogleIdOption;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BeginSignInControllerUtility.kt */
@Metadata
/* loaded from: classes.dex */
public final class BeginSignInControllerUtility {
    private static final long AUTH_MIN_VERSION_JSON_PARSING = 231815000;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "BeginSignInUtility";

    /* compiled from: BeginSignInControllerUtility.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final BeginSignInRequest.GoogleIdTokenRequestOptions convertToGoogleIdTokenOption(GetGoogleIdOption getGoogleIdOption) {
            BeginSignInRequest.GoogleIdTokenRequestOptions.Builder supported = BeginSignInRequest.GoogleIdTokenRequestOptions.builder().setFilterByAuthorizedAccounts(getGoogleIdOption.b()).setNonce(getGoogleIdOption.e()).setRequestVerifiedPhoneNumber(getGoogleIdOption.f()).setServerClientId(getGoogleIdOption.g()).setSupported(true);
            Intrinsics.checkNotNullExpressionValue(supported, "builder()\n              …      .setSupported(true)");
            if (getGoogleIdOption.d() != null) {
                String d10 = getGoogleIdOption.d();
                Intrinsics.checkNotNull(d10);
                supported.associateLinkedAccounts(d10, getGoogleIdOption.c());
            }
            BeginSignInRequest.GoogleIdTokenRequestOptions build = supported.build();
            Intrinsics.checkNotNullExpressionValue(build, "idTokenOption.build()");
            return build;
        }

        private final long determineDeviceGMSVersionCode(Context context) {
            PackageManager packageManager = context.getPackageManager();
            Intrinsics.checkNotNullExpressionValue(packageManager, "context.packageManager");
            return packageManager.getPackageInfo("com.google.android.gms", 0).versionCode;
        }

        private final boolean needsBackwardsCompatibleRequest(long j10) {
            if (j10 >= BeginSignInControllerUtility.AUTH_MIN_VERSION_JSON_PARSING) {
                return false;
            }
            return true;
        }

        @NotNull
        public final BeginSignInRequest constructBeginSignInRequest$credentials_play_services_auth_release(@NotNull GetCredentialRequest request, @NotNull Context context) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(context, "context");
            BeginSignInRequest.Builder builder = new BeginSignInRequest.Builder();
            boolean z10 = false;
            boolean z11 = false;
            for (CredentialOption credentialOption : request.getCredentialOptions()) {
                if (credentialOption instanceof GetPasswordOption) {
                    builder.setPasswordRequestOptions(new BeginSignInRequest.PasswordRequestOptions.Builder().setSupported(true).build());
                    if (!z10 && !credentialOption.isAutoSelectAllowed()) {
                        z10 = false;
                    }
                    z10 = true;
                } else if ((credentialOption instanceof GetPublicKeyCredentialOption) && !z11) {
                    if (needsBackwardsCompatibleRequest(determineDeviceGMSVersionCode(context))) {
                        builder.setPasskeysSignInRequestOptions(PublicKeyCredentialControllerUtility.Companion.convertToPlayAuthPasskeyRequest((GetPublicKeyCredentialOption) credentialOption));
                    } else {
                        builder.setPasskeyJsonSignInRequestOptions(PublicKeyCredentialControllerUtility.Companion.convertToPlayAuthPasskeyJsonRequest((GetPublicKeyCredentialOption) credentialOption));
                    }
                    z11 = true;
                } else if (credentialOption instanceof GetGoogleIdOption) {
                    GetGoogleIdOption getGoogleIdOption = (GetGoogleIdOption) credentialOption;
                    builder.setGoogleIdTokenRequestOptions(convertToGoogleIdTokenOption(getGoogleIdOption));
                    if (!z10 && !getGoogleIdOption.a()) {
                        z10 = false;
                    }
                    z10 = true;
                }
            }
            BeginSignInRequest build = builder.setAutoSelectEnabled(z10).build();
            Intrinsics.checkNotNullExpressionValue(build, "requestBuilder\n         …\n                .build()");
            return build;
        }

        private Companion() {
        }
    }
}
