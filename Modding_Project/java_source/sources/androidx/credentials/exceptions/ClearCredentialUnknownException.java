package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ClearCredentialUnknownException.kt */
@Metadata
/* loaded from: classes.dex */
public final class ClearCredentialUnknownException extends ClearCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CLEAR_CREDENTIAL_UNKNOWN_EXCEPTION = "android.credentials.ClearCredentialStateException.TYPE_UNKNOWN";

    /* compiled from: ClearCredentialUnknownException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ClearCredentialUnknownException() {
        this(null, 1, null);
    }

    public /* synthetic */ ClearCredentialUnknownException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public ClearCredentialUnknownException(@Nullable CharSequence charSequence) {
        super(TYPE_CLEAR_CREDENTIAL_UNKNOWN_EXCEPTION, charSequence);
    }
}
