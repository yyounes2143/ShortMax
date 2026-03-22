package androidx.credentials.exceptions.domerrors;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: InUseAttributeError.kt */
@Metadata
/* loaded from: classes.dex */
public final class InUseAttributeError extends DomError {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_IN_USE_ATTRIBUTE_ERROR = "androidx.credentials.TYPE_IN_USE_ATTRIBUTE_ERROR";

    /* compiled from: InUseAttributeError.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public InUseAttributeError() {
        super(TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_IN_USE_ATTRIBUTE_ERROR);
    }
}
