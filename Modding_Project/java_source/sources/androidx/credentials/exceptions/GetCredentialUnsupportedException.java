package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetCredentialUnsupportedException.kt */
@Metadata
/* loaded from: classes.dex */
public final class GetCredentialUnsupportedException extends GetCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_GET_CREDENTIAL_UNSUPPORTED_EXCEPTION = "androidx.credentials.TYPE_GET_CREDENTIAL_UNSUPPORTED_EXCEPTION";

    /* compiled from: GetCredentialUnsupportedException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public GetCredentialUnsupportedException() {
        this(null, 1, null);
    }

    public /* synthetic */ GetCredentialUnsupportedException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public GetCredentialUnsupportedException(@Nullable CharSequence charSequence) {
        super(TYPE_GET_CREDENTIAL_UNSUPPORTED_EXCEPTION, charSequence);
    }
}
