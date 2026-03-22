package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorizedAnimationSpec.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class VectorizedTweenSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {
    public static final int $stable = 8;
    @NotNull
    private final VectorizedFloatAnimationSpec<V> anim;
    private final int delayMillis;
    private final int durationMillis;
    @NotNull
    private final Easing easing;

    public VectorizedTweenSpec() {
        this(0, 0, null, 7, null);
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int getDelayMillis() {
        return this.delayMillis;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int getDurationMillis() {
        return this.durationMillis;
    }

    @NotNull
    public final Easing getEasing() {
        return this.easing;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V getValueFromNanos(long j10, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return this.anim.getValueFromNanos(j10, initialValue, targetValue, initialVelocity);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V getVelocityFromNanos(long j10, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return this.anim.getVelocityFromNanos(j10, initialValue, targetValue, initialVelocity);
    }

    public VectorizedTweenSpec(int i10, int i11, @NotNull Easing easing) {
        Intrinsics.checkNotNullParameter(easing, "easing");
        this.durationMillis = i10;
        this.delayMillis = i11;
        this.easing = easing;
        this.anim = new VectorizedFloatAnimationSpec<>(new FloatTweenSpec(getDurationMillis(), getDelayMillis(), easing));
    }

    public /* synthetic */ VectorizedTweenSpec(int i10, int i11, Easing easing, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 300 : i10, (i12 & 2) != 0 ? 0 : i11, (i12 & 4) != 0 ? EasingKt.getFastOutSlowInEasing() : easing);
    }
}
