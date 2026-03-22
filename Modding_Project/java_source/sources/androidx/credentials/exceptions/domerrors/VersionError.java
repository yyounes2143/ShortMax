package androidx.credentials.exceptions.domerrors;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: VersionError.kt */
@Metadata
/* loaded from: classes.dex */
public final class VersionError extends DomError {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_VERSION_ERROR = "androidx.credentials.TYPE_VERSION_ERROR";

    /* compiled from: VersionError.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public VersionError() {
        super(TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_VERSION_ERROR);
    }
}
