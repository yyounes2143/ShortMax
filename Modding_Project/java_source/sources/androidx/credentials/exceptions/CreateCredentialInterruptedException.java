package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreateCredentialInterruptedException.kt */
@Metadata
/* loaded from: classes.dex */
public final class CreateCredentialInterruptedException extends CreateCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_CREDENTIAL_INTERRUPTED_EXCEPTION = "android.credentials.CreateCredentialException.TYPE_INTERRUPTED";

    /* compiled from: CreateCredentialInterruptedException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CreateCredentialInterruptedException() {
        this(null, 1, null);
    }

    public /* synthetic */ CreateCredentialInterruptedException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public CreateCredentialInterruptedException(@Nullable CharSequence charSequence) {
        super(TYPE_CREATE_CREDENTIAL_INTERRUPTED_EXCEPTION, charSequence);
    }
}
