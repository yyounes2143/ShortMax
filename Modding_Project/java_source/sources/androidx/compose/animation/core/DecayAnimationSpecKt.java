package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DecayAnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public final class DecayAnimationSpecKt {
    public static final <T, V extends AnimationVector> T calculateTargetValue(@NotNull DecayAnimationSpec<T> decayAnimationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t10, T t11) {
        Intrinsics.checkNotNullParameter(decayAnimationSpec, "<this>");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        return typeConverter.getConvertFromVector().invoke(decayAnimationSpec.vectorize(typeConverter).getTargetValue(typeConverter.getConvertToVector().invoke(t10), typeConverter.getConvertToVector().invoke(t11)));
    }

    @NotNull
    public static final <T> DecayAnimationSpec<T> exponentialDecay(float f10, float f11) {
        return generateDecayAnimationSpec(new FloatExponentialDecaySpec(f10, f11));
    }

    public static /* synthetic */ DecayAnimationSpec exponentialDecay$default(float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 0.1f;
        }
        return exponentialDecay(f10, f11);
    }

    @NotNull
    public static final <T> DecayAnimationSpec<T> generateDecayAnimationSpec(@NotNull FloatDecayAnimationSpec floatDecayAnimationSpec) {
        Intrinsics.checkNotNullParameter(floatDecayAnimationSpec, "<this>");
        return new DecayAnimationSpecImpl(floatDecayAnimationSpec);
    }

    public static final float calculateTargetValue(@NotNull DecayAnimationSpec<Float> decayAnimationSpec, float f10, float f11) {
        Intrinsics.checkNotNullParameter(decayAnimationSpec, "<this>");
        return ((AnimationVector1D) decayAnimationSpec.vectorize(VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE)).getTargetValue(AnimationVectorsKt.AnimationVector(f10), AnimationVectorsKt.AnimationVector(f11))).getValue();
    }
}
