package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatAnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public interface FloatAnimationSpec extends AnimationSpec<Float> {

    /* compiled from: FloatAnimationSpec.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static float getEndVelocity(@NotNull FloatAnimationSpec floatAnimationSpec, float f10, float f11, float f12) {
            return FloatAnimationSpec.super.getEndVelocity(f10, f11, f12);
        }

        @Deprecated
        @NotNull
        public static <V extends AnimationVector> VectorizedFloatAnimationSpec<V> vectorize(@NotNull FloatAnimationSpec floatAnimationSpec, @NotNull TwoWayConverter<Float, V> converter) {
            Intrinsics.checkNotNullParameter(converter, "converter");
            return FloatAnimationSpec.super.vectorize((TwoWayConverter) converter);
        }
    }

    long getDurationNanos(float f10, float f11, float f12);

    default float getEndVelocity(float f10, float f11, float f12) {
        return getVelocityFromNanos(getDurationNanos(f10, f11, f12), f10, f11, f12);
    }

    float getValueFromNanos(long j10, float f10, float f11, float f12);

    float getVelocityFromNanos(long j10, float f10, float f11, float f12);

    @Override // androidx.compose.animation.core.AnimationSpec
    @NotNull
    default <V extends AnimationVector> VectorizedFloatAnimationSpec<V> vectorize(@NotNull TwoWayConverter<Float, V> converter) {
        Intrinsics.checkNotNullParameter(converter, "converter");
        return new VectorizedFloatAnimationSpec<>(this);
    }
}
