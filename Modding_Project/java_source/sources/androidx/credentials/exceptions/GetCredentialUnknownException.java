package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetCredentialUnknownException.kt */
@Metadata
/* loaded from: classes.dex */
public final class GetCredentialUnknownException extends GetCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_GET_CREDENTIAL_UNKNOWN_EXCEPTION = "android.credentials.GetCredentialException.TYPE_UNKNOWN";

    /* compiled from: GetCredentialUnknownException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public GetCredentialUnknownException() {
        this(null, 1, null);
    }

    public /* synthetic */ GetCredentialUnknownException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public GetCredentialUnknownException(@Nullable CharSequence charSequence) {
        super(TYPE_GET_CREDENTIAL_UNKNOWN_EXCEPTION, charSequence);
    }
}
