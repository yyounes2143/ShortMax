package androidx.credentials.exceptions.domerrors;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: InvalidStateError.kt */
@Metadata
/* loaded from: classes.dex */
public final class InvalidStateError extends DomError {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_STATE_ERROR = "androidx.credentials.TYPE_INVALID_STATE_ERROR";

    /* compiled from: InvalidStateError.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public InvalidStateError() {
        super(TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_STATE_ERROR);
    }
}
