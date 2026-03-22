package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetCredentialCancellationException.kt */
@Metadata
/* loaded from: classes.dex */
public final class GetCredentialCancellationException extends GetCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_GET_CREDENTIAL_CANCELLATION_EXCEPTION = "android.credentials.GetCredentialException.TYPE_USER_CANCELED";

    /* compiled from: GetCredentialCancellationException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public GetCredentialCancellationException() {
        this(null, 1, null);
    }

    public /* synthetic */ GetCredentialCancellationException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public GetCredentialCancellationException(@Nullable CharSequence charSequence) {
        super(TYPE_GET_CREDENTIAL_CANCELLATION_EXCEPTION, charSequence);
    }
}
