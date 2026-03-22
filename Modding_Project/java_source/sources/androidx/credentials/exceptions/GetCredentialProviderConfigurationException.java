package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetCredentialProviderConfigurationException.kt */
@Metadata
/* loaded from: classes.dex */
public final class GetCredentialProviderConfigurationException extends GetCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_GET_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION = "androidx.credentials.TYPE_GET_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION";

    /* compiled from: GetCredentialProviderConfigurationException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public GetCredentialProviderConfigurationException() {
        this(null, 1, null);
    }

    public /* synthetic */ GetCredentialProviderConfigurationException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public GetCredentialProviderConfigurationException(@Nullable CharSequence charSequence) {
        super(TYPE_GET_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION, charSequence);
    }
}
