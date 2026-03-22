package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorizedAnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public interface VectorizedAnimationSpec<V extends AnimationVector> {

    /* compiled from: VectorizedAnimationSpec.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        @NotNull
        public static <V extends AnimationVector> V getEndVelocity(@NotNull VectorizedAnimationSpec<V> vectorizedAnimationSpec, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
            Intrinsics.checkNotNullParameter(initialValue, "initialValue");
            Intrinsics.checkNotNullParameter(targetValue, "targetValue");
            Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
            return (V) VectorizedAnimationSpec.super.getEndVelocity(initialValue, targetValue, initialVelocity);
        }
    }

    long getDurationNanos(@NotNull V v10, @NotNull V v11, @NotNull V v12);

    @NotNull
    default V getEndVelocity(@NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return getVelocityFromNanos(getDurationNanos(initialValue, targetValue, initialVelocity), initialValue, targetValue, initialVelocity);
    }

    @NotNull
    V getValueFromNanos(long j10, @NotNull V v10, @NotNull V v11, @NotNull V v12);

    @NotNull
    V getVelocityFromNanos(long j10, @NotNull V v10, @NotNull V v11, @NotNull V v12);

    boolean isInfinite();
}
