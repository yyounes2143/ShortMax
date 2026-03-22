package androidx.credentials.exceptions.domerrors;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: DataCloneError.kt */
@Metadata
/* loaded from: classes.dex */
public final class DataCloneError extends DomError {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DATA_CLONE_ERROR = "androidx.credentials.TYPE_DATA_CLONE_ERROR";

    /* compiled from: DataCloneError.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public DataCloneError() {
        super(TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DATA_CLONE_ERROR);
    }
}
