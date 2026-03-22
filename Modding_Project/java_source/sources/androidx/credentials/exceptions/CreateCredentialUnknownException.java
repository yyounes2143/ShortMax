package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreateCredentialUnknownException.kt */
@Metadata
/* loaded from: classes.dex */
public final class CreateCredentialUnknownException extends CreateCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_CREDENTIAL_UNKNOWN_EXCEPTION = "android.credentials.CreateCredentialException.TYPE_UNKNOWN";

    /* compiled from: CreateCredentialUnknownException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CreateCredentialUnknownException() {
        this(null, 1, null);
    }

    public /* synthetic */ CreateCredentialUnknownException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public CreateCredentialUnknownException(@Nullable CharSequence charSequence) {
        super(TYPE_CREATE_CREDENTIAL_UNKNOWN_EXCEPTION, charSequence);
    }
}
