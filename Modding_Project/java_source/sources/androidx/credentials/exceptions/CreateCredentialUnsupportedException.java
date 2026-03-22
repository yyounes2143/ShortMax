package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreateCredentialUnsupportedException.kt */
@Metadata
/* loaded from: classes.dex */
public final class CreateCredentialUnsupportedException extends CreateCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_CREDENTIAL_UNSUPPORTED_EXCEPTION = "androidx.credentials.TYPE_CREATE_CREDENTIAL_UNSUPPORTED_EXCEPTION";

    /* compiled from: CreateCredentialUnsupportedException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CreateCredentialUnsupportedException() {
        this(null, 1, null);
    }

    public /* synthetic */ CreateCredentialUnsupportedException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public CreateCredentialUnsupportedException(@Nullable CharSequence charSequence) {
        super(TYPE_CREATE_CREDENTIAL_UNSUPPORTED_EXCEPTION, charSequence);
    }
}
