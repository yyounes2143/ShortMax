package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Animation.kt */
@Metadata
/* loaded from: classes.dex */
public final class AnimationKt {
    public static final long MillisToNanos = 1000000;

    @NotNull
    public static final DecayAnimation<Float, AnimationVector1D> DecayAnimation(@NotNull FloatDecayAnimationSpec animationSpec, float f10, float f11) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        return new DecayAnimation<>(DecayAnimationSpecKt.generateDecayAnimationSpec(animationSpec), VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE), Float.valueOf(f10), AnimationVectorsKt.AnimationVector(f11));
    }

    public static /* synthetic */ DecayAnimation DecayAnimation$default(FloatDecayAnimationSpec floatDecayAnimationSpec, float f10, float f11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        return DecayAnimation(floatDecayAnimationSpec, f10, f11);
    }

    @NotNull
    public static final <T, V extends AnimationVector> TargetBasedAnimation<T, V> TargetBasedAnimation(@NotNull AnimationSpec<T> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t10, T t11, T t12) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        return new TargetBasedAnimation<>(animationSpec, typeConverter, t10, t11, typeConverter.getConvertToVector().invoke(t12));
    }

    @NotNull
    public static final <V extends AnimationVector> TargetBasedAnimation<V, V> createAnimation(@NotNull VectorizedAnimationSpec<V> vectorizedAnimationSpec, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(vectorizedAnimationSpec, "<this>");
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return new TargetBasedAnimation<>(vectorizedAnimationSpec, VectorConvertersKt.TwoWayConverter(new Function1<V, V>() { // from class: androidx.compose.animation.core.AnimationKt$createAnimation$1
            /* JADX WARN: Incorrect return type in method signature: (TV;)TV; */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final AnimationVector invoke(@NotNull AnimationVector it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it;
            }
        }, new Function1<V, V>() { // from class: androidx.compose.animation.core.AnimationKt$createAnimation$2
            /* JADX WARN: Incorrect return type in method signature: (TV;)TV; */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final AnimationVector invoke(@NotNull AnimationVector it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it;
            }
        }), initialValue, targetValue, initialVelocity);
    }

    public static final long getDurationMillis(@NotNull Animation<?, ?> animation) {
        Intrinsics.checkNotNullParameter(animation, "<this>");
        return animation.getDurationNanos() / 1000000;
    }

    public static final <T, V extends AnimationVector> T getVelocityFromNanos(@NotNull Animation<T, V> animation, long j10) {
        Intrinsics.checkNotNullParameter(animation, "<this>");
        return animation.getTypeConverter().getConvertFromVector().invoke(animation.getVelocityVectorFromNanos(j10));
    }
}
