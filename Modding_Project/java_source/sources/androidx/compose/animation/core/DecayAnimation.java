package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: Animation.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class DecayAnimation<T, V extends AnimationVector> implements Animation<T, V> {
    public static final int $stable = 0;
    @NotNull
    private final VectorizedDecayAnimationSpec<V> animationSpec;
    private final long durationNanos;
    @NotNull
    private final V endVelocity;
    private final T initialValue;
    @NotNull
    private final V initialValueVector;
    @NotNull
    private final V initialVelocityVector;
    private final boolean isInfinite;
    private final T targetValue;
    @NotNull
    private final TwoWayConverter<T, V> typeConverter;

    public DecayAnimation(@NotNull VectorizedDecayAnimationSpec<V> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t10, @NotNull V initialVelocityVector) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        Intrinsics.checkNotNullParameter(initialVelocityVector, "initialVelocityVector");
        this.animationSpec = animationSpec;
        this.typeConverter = typeConverter;
        this.initialValue = t10;
        V invoke = getTypeConverter().getConvertToVector().invoke(t10);
        this.initialValueVector = invoke;
        this.initialVelocityVector = (V) AnimationVectorsKt.copy(initialVelocityVector);
        this.targetValue = getTypeConverter().getConvertFromVector().invoke(animationSpec.getTargetValue(invoke, initialVelocityVector));
        this.durationNanos = animationSpec.getDurationNanos(invoke, initialVelocityVector);
        V v10 = (V) AnimationVectorsKt.copy(animationSpec.getVelocityFromNanos(getDurationNanos(), invoke, initialVelocityVector));
        this.endVelocity = v10;
        int size$animation_core_release = v10.getSize$animation_core_release();
        for (int i10 = 0; i10 < size$animation_core_release; i10++) {
            V v11 = this.endVelocity;
            v11.set$animation_core_release(i10, e.m(v11.get$animation_core_release(i10), -this.animationSpec.getAbsVelocityThreshold(), this.animationSpec.getAbsVelocityThreshold()));
        }
    }

    @Override // androidx.compose.animation.core.Animation
    public long getDurationNanos() {
        return this.durationNanos;
    }

    public final T getInitialValue() {
        return this.initialValue;
    }

    @NotNull
    public final V getInitialVelocityVector() {
        return this.initialVelocityVector;
    }

    @Override // androidx.compose.animation.core.Animation
    public T getTargetValue() {
        return this.targetValue;
    }

    @Override // androidx.compose.animation.core.Animation
    @NotNull
    public TwoWayConverter<T, V> getTypeConverter() {
        return this.typeConverter;
    }

    @Override // androidx.compose.animation.core.Animation
    public T getValueFromNanos(long j10) {
        if (!isFinishedFromNanos(j10)) {
            return getTypeConverter().getConvertFromVector().invoke(this.animationSpec.getValueFromNanos(j10, this.initialValueVector, this.initialVelocityVector));
        }
        return getTargetValue();
    }

    @Override // androidx.compose.animation.core.Animation
    @NotNull
    public V getVelocityVectorFromNanos(long j10) {
        if (!isFinishedFromNanos(j10)) {
            return this.animationSpec.getVelocityFromNanos(j10, this.initialValueVector, this.initialVelocityVector);
        }
        return this.endVelocity;
    }

    @Override // androidx.compose.animation.core.Animation
    public boolean isInfinite() {
        return this.isInfinite;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DecayAnimation(@NotNull DecayAnimationSpec<T> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t10, @NotNull V initialVelocityVector) {
        this(animationSpec.vectorize(typeConverter), typeConverter, t10, initialVelocityVector);
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        Intrinsics.checkNotNullParameter(initialVelocityVector, "initialVelocityVector");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DecayAnimation(@NotNull DecayAnimationSpec<T> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t10, T t11) {
        this(animationSpec.vectorize(typeConverter), typeConverter, t10, typeConverter.getConvertToVector().invoke(t11));
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
    }
}
