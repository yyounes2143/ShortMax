package androidx.collection.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RuntimeHelpers.kt */
@Metadata
/* loaded from: classes.dex */
public final class RuntimeHelpersKt {
    public static final void checkPrecondition(boolean z10, @NotNull Function0<String> lazyMessage) {
        Intrinsics.checkNotNullParameter(lazyMessage, "lazyMessage");
        if (!z10) {
            throwIllegalStateException(lazyMessage.invoke());
        }
    }

    public static final void requirePrecondition(boolean z10, @NotNull Function0<String> lazyMessage) {
        Intrinsics.checkNotNullParameter(lazyMessage, "lazyMessage");
        if (!z10) {
            throwIllegalArgumentException(lazyMessage.invoke());
        }
    }

    public static final void throwIllegalArgumentException(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        throw new IllegalArgumentException(message);
    }

    public static final void throwIllegalStateException(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        throw new IllegalStateException(message);
    }

    public static final void throwIndexOutOfBoundsException(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        throw new IndexOutOfBoundsException(message);
    }

    public static final void throwNoSuchElementException(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        throw new NoSuchElementException(message);
    }

    @NotNull
    public static final Void throwNoSuchElementExceptionForInline(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        throw new NoSuchElementException(message);
    }
}
