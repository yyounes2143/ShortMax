package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreateCredentialProviderConfigurationException.kt */
@Metadata
/* loaded from: classes.dex */
public final class CreateCredentialProviderConfigurationException extends CreateCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION = "androidx.credentials.TYPE_CREATE_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION";

    /* compiled from: CreateCredentialProviderConfigurationException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CreateCredentialProviderConfigurationException() {
        this(null, 1, null);
    }

    public /* synthetic */ CreateCredentialProviderConfigurationException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public CreateCredentialProviderConfigurationException(@Nullable CharSequence charSequence) {
        super(TYPE_CREATE_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION, charSequence);
    }
}
