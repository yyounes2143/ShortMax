package androidx.credentials.exceptions.domerrors;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: InvalidModificationError.kt */
@Metadata
/* loaded from: classes.dex */
public final class InvalidModificationError extends DomError {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_MODIFICATION_ERROR = "androidx.credentials.TYPE_INVALID_MODIFICATION_ERROR";

    /* compiled from: InvalidModificationError.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public InvalidModificationError() {
        super(TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_MODIFICATION_ERROR);
    }
}
