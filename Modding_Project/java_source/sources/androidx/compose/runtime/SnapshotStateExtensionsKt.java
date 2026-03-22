package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateExtensions.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotStateExtensionsKt {
    @Stable
    @NotNull
    public static final DoubleState asDoubleState(@NotNull State<Double> state) {
        if (state instanceof DoubleState) {
            return (DoubleState) state;
        }
        return new UnboxedDoubleState(state);
    }

    @Stable
    @NotNull
    public static final FloatState asFloatState(@NotNull State<Float> state) {
        if (state instanceof FloatState) {
            return (FloatState) state;
        }
        return new UnboxedFloatState(state);
    }

    @Stable
    @NotNull
    public static final IntState asIntState(@NotNull State<Integer> state) {
        if (state instanceof IntState) {
            return (IntState) state;
        }
        return new UnboxedIntState(state);
    }

    @Stable
    @NotNull
    public static final LongState asLongState(@NotNull State<Long> state) {
        if (state instanceof LongState) {
            return (LongState) state;
        }
        return new UnboxedLongState(state);
    }
}
