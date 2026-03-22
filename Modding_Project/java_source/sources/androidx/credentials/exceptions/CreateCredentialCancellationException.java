package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreateCredentialCancellationException.kt */
@Metadata
/* loaded from: classes.dex */
public final class CreateCredentialCancellationException extends CreateCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_CREDENTIAL_CANCELLATION_EXCEPTION = "android.credentials.CreateCredentialException.TYPE_USER_CANCELED";

    /* compiled from: CreateCredentialCancellationException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CreateCredentialCancellationException() {
        this(null, 1, null);
    }

    public /* synthetic */ CreateCredentialCancellationException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public CreateCredentialCancellationException(@Nullable CharSequence charSequence) {
        super(TYPE_CREATE_CREDENTIAL_CANCELLATION_EXCEPTION, charSequence);
    }
}
