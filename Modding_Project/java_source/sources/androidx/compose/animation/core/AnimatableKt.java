package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.FloatCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: Animatable.kt */
@Metadata
/* loaded from: classes.dex */
public final class AnimatableKt {
    @NotNull
    public static final Animatable<Float, AnimationVector1D> Animatable(float f10, float f11) {
        return new Animatable<>(Float.valueOf(f10), VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE), Float.valueOf(f11));
    }

    public static /* synthetic */ Animatable Animatable$default(float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.01f;
        }
        return Animatable(f10, f11);
    }
}
