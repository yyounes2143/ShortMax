package androidx.credentials.exceptions.domerrors;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: NotFoundError.kt */
@Metadata
/* loaded from: classes.dex */
public final class NotFoundError extends DomError {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_FOUND_ERROR = "androidx.credentials.TYPE_NOT_FOUND_ERROR";

    /* compiled from: NotFoundError.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public NotFoundError() {
        super(TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_FOUND_ERROR);
    }
}
