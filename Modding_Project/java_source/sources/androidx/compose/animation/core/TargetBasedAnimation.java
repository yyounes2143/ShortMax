package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Animation.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class TargetBasedAnimation<T, V extends AnimationVector> implements Animation<T, V> {
    public static final int $stable = 0;
    @NotNull
    private final VectorizedAnimationSpec<V> animationSpec;
    private final long durationNanos;
    @NotNull
    private final V endVelocity;
    private final T initialValue;
    @NotNull
    private final V initialValueVector;
    @NotNull
    private final V initialVelocityVector;
    private final T targetValue;
    @NotNull
    private final V targetValueVector;
    @NotNull
    private final TwoWayConverter<T, V> typeConverter;

    public TargetBasedAnimation(@NotNull VectorizedAnimationSpec<V> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t10, T t11, @Nullable V v10) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        this.animationSpec = animationSpec;
        this.typeConverter = typeConverter;
        this.initialValue = t10;
        this.targetValue = t11;
        V invoke = getTypeConverter().getConvertToVector().invoke(t10);
        this.initialValueVector = invoke;
        V invoke2 = getTypeConverter().getConvertToVector().invoke(getTargetValue());
        this.targetValueVector = invoke2;
        V v11 = (v10 == null || (v11 = (V) AnimationVectorsKt.copy(v10)) == null) ? (V) AnimationVectorsKt.newInstance(getTypeConverter().getConvertToVector().invoke(t10)) : v11;
        this.initialVelocityVector = v11;
        this.durationNanos = animationSpec.getDurationNanos(invoke, invoke2, v11);
        this.endVelocity = animationSpec.getEndVelocity(invoke, invoke2, v11);
    }

    @NotNull
    public final VectorizedAnimationSpec<V> getAnimationSpec$animation_core_release() {
        return this.animationSpec;
    }

    @Override // androidx.compose.animation.core.Animation
    public long getDurationNanos() {
        return this.durationNanos;
    }

    public final T getInitialValue() {
        return this.initialValue;
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
            return getTypeConverter().getConvertFromVector().invoke(this.animationSpec.getValueFromNanos(j10, this.initialValueVector, this.targetValueVector, this.initialVelocityVector));
        }
        return getTargetValue();
    }

    @Override // androidx.compose.animation.core.Animation
    @NotNull
    public V getVelocityVectorFromNanos(long j10) {
        if (!isFinishedFromNanos(j10)) {
            return this.animationSpec.getVelocityFromNanos(j10, this.initialValueVector, this.targetValueVector, this.initialVelocityVector);
        }
        return this.endVelocity;
    }

    @Override // androidx.compose.animation.core.Animation
    public boolean isInfinite() {
        return this.animationSpec.isInfinite();
    }

    @NotNull
    public String toString() {
        return "TargetBasedAnimation: " + this.initialValue + " -> " + getTargetValue() + ",initial velocity: " + this.initialVelocityVector + ", duration: " + AnimationKt.getDurationMillis(this) + " ms";
    }

    public /* synthetic */ TargetBasedAnimation(VectorizedAnimationSpec vectorizedAnimationSpec, TwoWayConverter twoWayConverter, Object obj, Object obj2, AnimationVector animationVector, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(vectorizedAnimationSpec, twoWayConverter, obj, obj2, (i10 & 16) != 0 ? null : animationVector);
    }

    public /* synthetic */ TargetBasedAnimation(AnimationSpec animationSpec, TwoWayConverter twoWayConverter, Object obj, Object obj2, AnimationVector animationVector, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(animationSpec, twoWayConverter, obj, obj2, (i10 & 16) != 0 ? null : animationVector);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TargetBasedAnimation(@NotNull AnimationSpec<T> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t10, T t11, @Nullable V v10) {
        this(animationSpec.vectorize(typeConverter), typeConverter, t10, t11, v10);
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
    }
}
