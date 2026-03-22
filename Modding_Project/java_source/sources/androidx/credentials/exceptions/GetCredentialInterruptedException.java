package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetCredentialInterruptedException.kt */
@Metadata
/* loaded from: classes.dex */
public final class GetCredentialInterruptedException extends GetCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_GET_CREDENTIAL_INTERRUPTED_EXCEPTION = "android.credentials.GetCredentialException.TYPE_INTERRUPTED";

    /* compiled from: GetCredentialInterruptedException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public GetCredentialInterruptedException() {
        this(null, 1, null);
    }

    public /* synthetic */ GetCredentialInterruptedException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public GetCredentialInterruptedException(@Nullable CharSequence charSequence) {
        super(TYPE_GET_CREDENTIAL_INTERRUPTED_EXCEPTION, charSequence);
    }
}
