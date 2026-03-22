package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorizedAnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public interface VectorizedFiniteAnimationSpec<V extends AnimationVector> extends VectorizedAnimationSpec<V> {

    /* compiled from: VectorizedAnimationSpec.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        @NotNull
        public static <V extends AnimationVector> V getEndVelocity(@NotNull VectorizedFiniteAnimationSpec<V> vectorizedFiniteAnimationSpec, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
            Intrinsics.checkNotNullParameter(initialValue, "initialValue");
            Intrinsics.checkNotNullParameter(targetValue, "targetValue");
            Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
            return (V) VectorizedFiniteAnimationSpec.super.getEndVelocity(initialValue, targetValue, initialVelocity);
        }

        @Deprecated
        public static <V extends AnimationVector> boolean isInfinite(@NotNull VectorizedFiniteAnimationSpec<V> vectorizedFiniteAnimationSpec) {
            return VectorizedFiniteAnimationSpec.super.isInfinite();
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    default boolean isInfinite() {
        return false;
    }
}
