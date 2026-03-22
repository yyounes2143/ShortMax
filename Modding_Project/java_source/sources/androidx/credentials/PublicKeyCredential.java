package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PublicKeyCredential.kt */
@Metadata
/* loaded from: classes.dex */
public final class PublicKeyCredential extends Credential {
    @NotNull
    public static final String BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON = "androidx.credentials.BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON";
    @NotNull
    public static final String BUNDLE_KEY_SUBTYPE = "androidx.credentials.BUNDLE_KEY_SUBTYPE";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_PUBLIC_KEY_CREDENTIAL = "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL";
    @NotNull
    private final String authenticationResponseJson;

    /* compiled from: PublicKeyCredential.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PublicKeyCredential createFrom$credentials_release(@NotNull Bundle data) {
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                String string = data.getString(PublicKeyCredential.BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON);
                Intrinsics.checkNotNull(string);
                return new PublicKeyCredential(string, data, null);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }

        @NotNull
        public final Bundle toBundle$credentials_release(@NotNull String authenticationResponseJson) {
            Intrinsics.checkNotNullParameter(authenticationResponseJson, "authenticationResponseJson");
            Bundle bundle = new Bundle();
            bundle.putString(PublicKeyCredential.BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON, authenticationResponseJson);
            return bundle;
        }

        private Companion() {
        }
    }

    public /* synthetic */ PublicKeyCredential(String str, Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bundle);
    }

    @NotNull
    public final String getAuthenticationResponseJson() {
        return this.authenticationResponseJson;
    }

    private PublicKeyCredential(String str, Bundle bundle) {
        super(TYPE_PUBLIC_KEY_CREDENTIAL, bundle);
        this.authenticationResponseJson = str;
        if (!RequestValidationHelper.Companion.isValidJSON(str)) {
            throw new IllegalArgumentException("authenticationResponseJson must not be empty, and must be a valid JSON");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PublicKeyCredential(@NotNull String authenticationResponseJson) {
        this(authenticationResponseJson, Companion.toBundle$credentials_release(authenticationResponseJson));
        Intrinsics.checkNotNullParameter(authenticationResponseJson, "authenticationResponseJson");
    }
}
