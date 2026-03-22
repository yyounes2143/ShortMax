package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NoCredentialException.kt */
@Metadata
/* loaded from: classes.dex */
public final class NoCredentialException extends GetCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_FRAMEWORK_TYPE_NO_CREDENTIAL = "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL";

    /* compiled from: NoCredentialException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public NoCredentialException() {
        this(null, 1, null);
    }

    public /* synthetic */ NoCredentialException(CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : charSequence);
    }

    public NoCredentialException(@Nullable CharSequence charSequence) {
        super(TYPE_FRAMEWORK_TYPE_NO_CREDENTIAL, charSequence);
    }
}
