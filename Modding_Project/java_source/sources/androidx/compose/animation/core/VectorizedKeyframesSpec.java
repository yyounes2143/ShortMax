package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorizedAnimationSpec.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class VectorizedKeyframesSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {
    public static final int $stable = 8;
    private final int delayMillis;
    private final int durationMillis;
    @NotNull
    private final Map<Integer, Pair<V, Easing>> keyframes;
    private V valueVector;
    private V velocityVector;

    /* JADX WARN: Multi-variable type inference failed */
    public VectorizedKeyframesSpec(@NotNull Map<Integer, ? extends Pair<? extends V, ? extends Easing>> keyframes, int i10, int i11) {
        Intrinsics.checkNotNullParameter(keyframes, "keyframes");
        this.keyframes = keyframes;
        this.durationMillis = i10;
        this.delayMillis = i11;
    }

    private final void init(V v10) {
        if (this.valueVector == null) {
            this.valueVector = (V) AnimationVectorsKt.newInstance(v10);
            this.velocityVector = (V) AnimationVectorsKt.newInstance(v10);
        }
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int getDelayMillis() {
        return this.delayMillis;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int getDurationMillis() {
        return this.durationMillis;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V getValueFromNanos(long j10, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        long clampPlayTime;
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        clampPlayTime = VectorizedAnimationSpecKt.clampPlayTime(this, j10 / 1000000);
        int i10 = (int) clampPlayTime;
        if (this.keyframes.containsKey(Integer.valueOf(i10))) {
            return (V) ((Pair) p0.j(this.keyframes, Integer.valueOf(i10))).e();
        }
        if (i10 >= getDurationMillis()) {
            return targetValue;
        }
        if (i10 <= 0) {
            return initialValue;
        }
        int durationMillis = getDurationMillis();
        Easing linearEasing = EasingKt.getLinearEasing();
        int i11 = 0;
        V v10 = initialValue;
        int i12 = 0;
        for (Map.Entry<Integer, Pair<V, Easing>> entry : this.keyframes.entrySet()) {
            int intValue = entry.getKey().intValue();
            Pair<V, Easing> value = entry.getValue();
            if (i10 > intValue && intValue >= i12) {
                v10 = value.e();
                linearEasing = value.f();
                i12 = intValue;
            } else if (i10 < intValue && intValue <= durationMillis) {
                targetValue = value.e();
                durationMillis = intValue;
            }
        }
        float transform = linearEasing.transform((i10 - i12) / (durationMillis - i12));
        init(initialValue);
        int size$animation_core_release = v10.getSize$animation_core_release();
        while (true) {
            V v11 = null;
            if (i11 >= size$animation_core_release) {
                break;
            }
            V v12 = this.valueVector;
            if (v12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("valueVector");
            } else {
                v11 = v12;
            }
            v11.set$animation_core_release(i11, VectorConvertersKt.lerp(v10.get$animation_core_release(i11), targetValue.get$animation_core_release(i11), transform));
            i11++;
        }
        V v13 = this.valueVector;
        if (v13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueVector");
            return null;
        }
        return v13;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V getVelocityFromNanos(long j10, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        long clampPlayTime;
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        clampPlayTime = VectorizedAnimationSpecKt.clampPlayTime(this, j10 / 1000000);
        if (clampPlayTime <= 0) {
            return initialVelocity;
        }
        AnimationVector valueFromMillis = VectorizedAnimationSpecKt.getValueFromMillis(this, clampPlayTime - 1, initialValue, targetValue, initialVelocity);
        AnimationVector valueFromMillis2 = VectorizedAnimationSpecKt.getValueFromMillis(this, clampPlayTime, initialValue, targetValue, initialVelocity);
        init(initialValue);
        int size$animation_core_release = valueFromMillis.getSize$animation_core_release();
        int i10 = 0;
        while (true) {
            V v10 = null;
            if (i10 >= size$animation_core_release) {
                break;
            }
            V v11 = this.velocityVector;
            if (v11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
            } else {
                v10 = v11;
            }
            v10.set$animation_core_release(i10, (valueFromMillis.get$animation_core_release(i10) - valueFromMillis2.get$animation_core_release(i10)) * 1000.0f);
            i10++;
        }
        V v12 = this.velocityVector;
        if (v12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
            return null;
        }
        return v12;
    }

    public /* synthetic */ VectorizedKeyframesSpec(Map map, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(map, i10, (i12 & 4) != 0 ? 0 : i11);
    }
}
