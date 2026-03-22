package androidx.credentials.exceptions.domerrors;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ReadOnlyError.kt */
@Metadata
/* loaded from: classes.dex */
public final class ReadOnlyError extends DomError {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_READ_ONLY_ERROR = "androidx.credentials.TYPE_READ_ONLY_ERROR";

    /* compiled from: ReadOnlyError.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ReadOnlyError() {
        super(TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_READ_ONLY_ERROR);
    }
}
