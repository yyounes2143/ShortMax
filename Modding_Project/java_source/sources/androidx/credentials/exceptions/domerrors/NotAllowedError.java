package androidx.credentials.exceptions.domerrors;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: NotAllowedError.kt */
@Metadata
/* loaded from: classes.dex */
public final class NotAllowedError extends DomError {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_ALLOWED_ERROR = "androidx.credentials.TYPE_NOT_ALLOWED_ERROR";

    /* compiled from: NotAllowedError.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public NotAllowedError() {
        super(TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_ALLOWED_ERROR);
    }
}
