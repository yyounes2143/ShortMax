package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.m0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorizedAnimationSpec.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class VectorizedFloatAnimationSpec<V extends AnimationVector> implements VectorizedFiniteAnimationSpec<V> {
    public static final int $stable = 8;
    @NotNull
    private final Animations anims;
    private V endVelocityVector;
    private V valueVector;
    private V velocityVector;

    public VectorizedFloatAnimationSpec(@NotNull Animations anims) {
        Intrinsics.checkNotNullParameter(anims, "anims");
        this.anims = anims;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long getDurationNanos(@NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        Iterator<Integer> it = e.v(0, initialValue.getSize$animation_core_release()).iterator();
        long j10 = 0;
        while (it.hasNext()) {
            int nextInt = ((m0) it).nextInt();
            j10 = Math.max(j10, this.anims.get(nextInt).getDurationNanos(initialValue.get$animation_core_release(nextInt), targetValue.get$animation_core_release(nextInt), initialVelocity.get$animation_core_release(nextInt)));
        }
        return j10;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V getEndVelocity(@NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        if (this.endVelocityVector == null) {
            this.endVelocityVector = (V) AnimationVectorsKt.newInstance(initialVelocity);
        }
        V v10 = this.endVelocityVector;
        if (v10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("endVelocityVector");
            v10 = null;
        }
        int size$animation_core_release = v10.getSize$animation_core_release();
        for (int i10 = 0; i10 < size$animation_core_release; i10++) {
            V v11 = this.endVelocityVector;
            if (v11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("endVelocityVector");
                v11 = null;
            }
            v11.set$animation_core_release(i10, this.anims.get(i10).getEndVelocity(initialValue.get$animation_core_release(i10), targetValue.get$animation_core_release(i10), initialVelocity.get$animation_core_release(i10)));
        }
        V v12 = this.endVelocityVector;
        if (v12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("endVelocityVector");
            return null;
        }
        return v12;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V getValueFromNanos(long j10, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
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
            v11.set$animation_core_release(i10, this.anims.get(i10).getValueFromNanos(j10, initialValue.get$animation_core_release(i10), targetValue.get$animation_core_release(i10), initialVelocity.get$animation_core_release(i10)));
        }
        V v12 = this.valueVector;
        if (v12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueVector");
            return null;
        }
        return v12;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V getVelocityFromNanos(long j10, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        if (this.velocityVector == null) {
            this.velocityVector = (V) AnimationVectorsKt.newInstance(initialVelocity);
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
            v11.set$animation_core_release(i10, this.anims.get(i10).getVelocityFromNanos(j10, initialValue.get$animation_core_release(i10), targetValue.get$animation_core_release(i10), initialVelocity.get$animation_core_release(i10)));
        }
        V v12 = this.velocityVector;
        if (v12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
            return null;
        }
        return v12;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VectorizedFloatAnimationSpec(@NotNull final FloatAnimationSpec anim) {
        this(new Animations() { // from class: androidx.compose.animation.core.VectorizedFloatAnimationSpec.1
            @Override // androidx.compose.animation.core.Animations
            @NotNull
            public FloatAnimationSpec get(int i10) {
                return FloatAnimationSpec.this;
            }
        });
        Intrinsics.checkNotNullParameter(anim, "anim");
    }
}
