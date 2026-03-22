package androidx.credentials.exceptions.domerrors;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: WrongDocumentError.kt */
@Metadata
/* loaded from: classes.dex */
public final class WrongDocumentError extends DomError {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_WRONG_DOCUMENT_ERROR = "androidx.credentials.TYPE_WRONG_DOCUMENT_ERROR";

    /* compiled from: WrongDocumentError.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public WrongDocumentError() {
        super(TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_WRONG_DOCUMENT_ERROR);
    }
}
