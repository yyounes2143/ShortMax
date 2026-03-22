package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorizedAnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public interface VectorizedDurationBasedAnimationSpec<V extends AnimationVector> extends VectorizedFiniteAnimationSpec<V> {

    /* compiled from: VectorizedAnimationSpec.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static <V extends AnimationVector> long getDurationNanos(@NotNull VectorizedDurationBasedAnimationSpec<V> vectorizedDurationBasedAnimationSpec, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
            Intrinsics.checkNotNullParameter(initialValue, "initialValue");
            Intrinsics.checkNotNullParameter(targetValue, "targetValue");
            Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
            return VectorizedDurationBasedAnimationSpec.super.getDurationNanos(initialValue, targetValue, initialVelocity);
        }

        @Deprecated
        @NotNull
        public static <V extends AnimationVector> V getEndVelocity(@NotNull VectorizedDurationBasedAnimationSpec<V> vectorizedDurationBasedAnimationSpec, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
            Intrinsics.checkNotNullParameter(initialValue, "initialValue");
            Intrinsics.checkNotNullParameter(targetValue, "targetValue");
            Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
            return (V) VectorizedDurationBasedAnimationSpec.super.getEndVelocity(initialValue, targetValue, initialVelocity);
        }

        @Deprecated
        public static <V extends AnimationVector> boolean isInfinite(@NotNull VectorizedDurationBasedAnimationSpec<V> vectorizedDurationBasedAnimationSpec) {
            return VectorizedDurationBasedAnimationSpec.super.isInfinite();
        }
    }

    int getDelayMillis();

    int getDurationMillis();

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    default long getDurationNanos(@NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return (getDelayMillis() + getDurationMillis()) * 1000000;
    }
}
