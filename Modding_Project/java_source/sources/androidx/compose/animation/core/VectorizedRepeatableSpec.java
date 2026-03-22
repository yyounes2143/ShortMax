package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorizedAnimationSpec.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class VectorizedRepeatableSpec<V extends AnimationVector> implements VectorizedFiniteAnimationSpec<V> {
    public static final int $stable = 8;
    @NotNull
    private final VectorizedDurationBasedAnimationSpec<V> animation;
    private final long durationNanos;
    private final long initialOffsetNanos;
    private final int iterations;
    @NotNull
    private final RepeatMode repeatMode;

    public /* synthetic */ VectorizedRepeatableSpec(int i10, VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, vectorizedDurationBasedAnimationSpec, repeatMode, j10);
    }

    private final long repetitionPlayTimeNanos(long j10) {
        long j11 = this.initialOffsetNanos;
        if (j10 + j11 <= 0) {
            return 0L;
        }
        long j12 = j10 + j11;
        long min = Math.min(j12 / this.durationNanos, this.iterations - 1);
        if (this.repeatMode != RepeatMode.Restart && min % 2 != 0) {
            return ((min + 1) * this.durationNanos) - j12;
        }
        return j12 - (min * this.durationNanos);
    }

    private final V repetitionStartVelocity(long j10, V v10, V v11, V v12) {
        long j11 = this.initialOffsetNanos;
        long j12 = this.durationNanos;
        if (j10 + j11 > j12) {
            return getVelocityFromNanos(j12 - j11, v10, v11, v12);
        }
        return v11;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long getDurationNanos(@NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return (this.iterations * this.durationNanos) - this.initialOffsetNanos;
    }

    public final long getDurationNanos$animation_core_release() {
        return this.durationNanos;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V getValueFromNanos(long j10, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return this.animation.getValueFromNanos(repetitionPlayTimeNanos(j10), initialValue, targetValue, repetitionStartVelocity(j10, initialValue, initialVelocity, targetValue));
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V getVelocityFromNanos(long j10, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return this.animation.getVelocityFromNanos(repetitionPlayTimeNanos(j10), initialValue, targetValue, repetitionStartVelocity(j10, initialValue, initialVelocity, targetValue));
    }

    private VectorizedRepeatableSpec(int i10, VectorizedDurationBasedAnimationSpec<V> vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, long j10) {
        this.iterations = i10;
        this.animation = vectorizedDurationBasedAnimationSpec;
        this.repeatMode = repeatMode;
        if (i10 >= 1) {
            this.durationNanos = (vectorizedDurationBasedAnimationSpec.getDelayMillis() + vectorizedDurationBasedAnimationSpec.getDurationMillis()) * 1000000;
            this.initialOffsetNanos = j10 * 1000000;
            return;
        }
        throw new IllegalArgumentException("Iterations count can't be less than 1");
    }

    public /* synthetic */ VectorizedRepeatableSpec(int i10, VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, long j10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, vectorizedDurationBasedAnimationSpec, (i11 & 4) != 0 ? RepeatMode.Restart : repeatMode, (i11 & 8) != 0 ? StartOffset.m158constructorimpl$default(0, 0, 2, null) : j10, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ VectorizedRepeatableSpec(int i10, VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, vectorizedDurationBasedAnimationSpec, (i11 & 4) != 0 ? RepeatMode.Restart : repeatMode);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @c
    public /* synthetic */ VectorizedRepeatableSpec(int i10, VectorizedDurationBasedAnimationSpec animation, RepeatMode repeatMode) {
        this(i10, animation, repeatMode, StartOffset.m158constructorimpl$default(0, 0, 2, null), (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(animation, "animation");
        Intrinsics.checkNotNullParameter(repeatMode, "repeatMode");
    }
}
