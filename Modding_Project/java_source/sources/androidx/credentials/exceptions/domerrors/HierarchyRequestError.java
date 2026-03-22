package androidx.credentials.exceptions.domerrors;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: HierarchyRequestError.kt */
@Metadata
/* loaded from: classes.dex */
public final class HierarchyRequestError extends DomError {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_HIERARCHY_REQUEST_ERROR = "androidx.credentials.TYPE_HIERARCHY_REQUEST_ERROR";

    /* compiled from: HierarchyRequestError.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public HierarchyRequestError() {
        super(TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_HIERARCHY_REQUEST_ERROR);
    }
}
