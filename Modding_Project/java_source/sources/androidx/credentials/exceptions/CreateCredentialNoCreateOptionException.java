package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreateCredentialNoCreateOptionException.kt */
@Metadata
/* loaded from: classes.dex */
public final class CreateCredentialNoCreateOptionException extends CreateCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_CREDENTIAL_NO_CREATE_OPTION = "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS";

    /* compiled from: CreateCredentialNoCreateOptionException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CreateCredentialNoCreateOptionException() {
        this(null, 1, null);
    }

    public /* synthetic */ CreateCredentialNoCreateOptionException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public CreateCredentialNoCreateOptionException(@Nullable CharSequence charSequence) {
        super(TYPE_CREATE_CREDENTIAL_NO_CREATE_OPTION, charSequence);
    }
}
