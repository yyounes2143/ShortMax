package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DecayAnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
final class VectorizedFloatDecaySpec<V extends AnimationVector> implements VectorizedDecayAnimationSpec<V> {
    private final float absVelocityThreshold;
    @NotNull
    private final FloatDecayAnimationSpec floatDecaySpec;
    private V targetVector;
    private V valueVector;
    private V velocityVector;

    public VectorizedFloatDecaySpec(@NotNull FloatDecayAnimationSpec floatDecaySpec) {
        Intrinsics.checkNotNullParameter(floatDecaySpec, "floatDecaySpec");
        this.floatDecaySpec = floatDecaySpec;
        this.absVelocityThreshold = floatDecaySpec.getAbsVelocityThreshold();
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public float getAbsVelocityThreshold() {
        return this.absVelocityThreshold;
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public long getDurationNanos(@NotNull V initialValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        if (this.velocityVector == null) {
            this.velocityVector = (V) AnimationVectorsKt.newInstance(initialValue);
        }
        V v10 = this.velocityVector;
        if (v10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
            v10 = null;
        }
        int size$animation_core_release = v10.getSize$animation_core_release();
        long j10 = 0;
        for (int i10 = 0; i10 < size$animation_core_release; i10++) {
            j10 = Math.max(j10, this.floatDecaySpec.getDurationNanos(initialValue.get$animation_core_release(i10), initialVelocity.get$animation_core_release(i10)));
        }
        return j10;
    }

    @NotNull
    public final FloatDecayAnimationSpec getFloatDecaySpec() {
        return this.floatDecaySpec;
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    @NotNull
    public V getTargetValue(@NotNull V initialValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        if (this.targetVector == null) {
            this.targetVector = (V) AnimationVectorsKt.newInstance(initialValue);
        }
        V v10 = this.targetVector;
        if (v10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("targetVector");
            v10 = null;
        }
        int size$animation_core_release = v10.getSize$animation_core_release();
        for (int i10 = 0; i10 < size$animation_core_release; i10++) {
            V v11 = this.targetVector;
            if (v11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("targetVector");
                v11 = null;
            }
            v11.set$animation_core_release(i10, this.floatDecaySpec.getTargetValue(initialValue.get$animation_core_release(i10), initialVelocity.get$animation_core_release(i10)));
        }
        V v12 = this.targetVector;
        if (v12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("targetVector");
            return null;
        }
        return v12;
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    @NotNull
    public V getValueFromNanos(long j10, @NotNull V initialValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        if (this.valueVector == null) {
            this.valueVector = (V) AnimationVectorsKt.newInstance(initialValue);
        }
        V v10 = this.valueVector;
        if (v10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueVector");
            v10 = null;
        }
        int size$animation_core_release = v10.getSize$animation_core_release();
        for (int i10 = 0; i10 < size$animation_core_release; i10++) {
            V v11 = this.valueVector;
            if (v11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("valueVector");
                v11 = null;
            }
            v11.set$animation_core_release(i10, this.floatDecaySpec.getValueFromNanos(j10, initialValue.get$animation_core_release(i10), initialVelocity.get$animation_core_release(i10)));
        }
        V v12 = this.valueVector;
        if (v12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueVector");
            return null;
        }
        return v12;
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    @NotNull
    public V getVelocityFromNanos(long j10, @NotNull V initialValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        if (this.velocityVector == null) {
            this.velocityVector = (V) AnimationVectorsKt.newInstance(initialValue);
        }
        V v10 = this.velocityVector;
        if (v10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
            v10 = null;
        }
        int size$animation_core_release = v10.getSize$animation_core_release();
        for (int i10 = 0; i10 < size$animation_core_release; i10++) {
            V v11 = this.velocityVector;
            if (v11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
                v11 = null;
            }
            v11.set$animation_core_release(i10, this.floatDecaySpec.getVelocityFromNanos(j10, initialValue.get$animation_core_release(i10), initialVelocity.get$animation_core_release(i10)));
        }
        V v12 = this.velocityVector;
        if (v12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
            return null;
        }
        return v12;
    }
}
