package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ClearCredentialProviderConfigurationException.kt */
@Metadata
/* loaded from: classes.dex */
public final class ClearCredentialProviderConfigurationException extends ClearCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CLEAR_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION = "androidx.credentials.TYPE_CLEAR_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION";

    /* compiled from: ClearCredentialProviderConfigurationException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ClearCredentialProviderConfigurationException() {
        this(null, 1, null);
    }

    public /* synthetic */ ClearCredentialProviderConfigurationException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public ClearCredentialProviderConfigurationException(@Nullable CharSequence charSequence) {
        super(TYPE_CLEAR_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION, charSequence);
    }
}
