package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ClearCredentialUnsupportedException.kt */
@Metadata
/* loaded from: classes.dex */
public final class ClearCredentialUnsupportedException extends ClearCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CLEAR_CREDENTIAL_UNSUPPORTED_EXCEPTION = "androidx.credentials.TYPE_CLEAR_CREDENTIAL_UNSUPPORTED_EXCEPTION";

    /* compiled from: ClearCredentialUnsupportedException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ClearCredentialUnsupportedException() {
        this(null, 1, null);
    }

    public /* synthetic */ ClearCredentialUnsupportedException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public ClearCredentialUnsupportedException(@Nullable CharSequence charSequence) {
        super(TYPE_CLEAR_CREDENTIAL_UNSUPPORTED_EXCEPTION, charSequence);
    }
}
