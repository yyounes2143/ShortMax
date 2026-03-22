package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CreatePublicKeyCredentialResponse.kt */
@Metadata
/* loaded from: classes.dex */
public final class CreatePublicKeyCredentialResponse extends CreateCredentialResponse {
    @NotNull
    public static final String BUNDLE_KEY_REGISTRATION_RESPONSE_JSON = "androidx.credentials.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String registrationResponseJson;

    /* compiled from: CreatePublicKeyCredentialResponse.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CreatePublicKeyCredentialResponse createFrom$credentials_release(@NotNull Bundle data) {
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                String string = data.getString(CreatePublicKeyCredentialResponse.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON);
                Intrinsics.checkNotNull(string);
                return new CreatePublicKeyCredentialResponse(string, data, null);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }

        @NotNull
        public final Bundle toBundle$credentials_release(@NotNull String registrationResponseJson) {
            Intrinsics.checkNotNullParameter(registrationResponseJson, "registrationResponseJson");
            Bundle bundle = new Bundle();
            bundle.putString(CreatePublicKeyCredentialResponse.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON, registrationResponseJson);
            return bundle;
        }

        private Companion() {
        }
    }

    public /* synthetic */ CreatePublicKeyCredentialResponse(String str, Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bundle);
    }

    @NotNull
    public final String getRegistrationResponseJson() {
        return this.registrationResponseJson;
    }

    private CreatePublicKeyCredentialResponse(String str, Bundle bundle) {
        super(PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL, bundle);
        this.registrationResponseJson = str;
        if (!RequestValidationHelper.Companion.isValidJSON(str)) {
            throw new IllegalArgumentException("registrationResponseJson must not be empty, and must be a valid JSON");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialResponse(@NotNull String registrationResponseJson) {
        this(registrationResponseJson, Companion.toBundle$credentials_release(registrationResponseJson));
        Intrinsics.checkNotNullParameter(registrationResponseJson, "registrationResponseJson");
    }
}
