package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Preconditions.kt */
@Metadata
/* loaded from: classes.dex */
public final class PreconditionsKt {
    public static final void checkPrecondition(boolean z10, @NotNull Function0<String> function0) {
        if (z10) {
            return;
        }
        throwIllegalStateException(function0.invoke());
    }

    public static final void requirePrecondition(boolean z10, @NotNull Function0<String> function0) {
        if (!z10) {
            throwIllegalArgumentException(function0.invoke());
        }
    }

    public static final void throwIllegalArgumentException(@NotNull String str) {
        throw new IllegalArgumentException(str);
    }

    public static final void throwIllegalStateException(@NotNull String str) {
        throw new IllegalStateException(str);
    }

    public static final void checkPrecondition(boolean z10) {
        if (z10) {
            return;
        }
        throwIllegalStateException("Check failed.");
    }
}
