package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: ColorVectorConverter.kt */
@Metadata
/* loaded from: classes.dex */
public final class ColorVectorConverterKt {
    @NotNull
    private static final Function1<ColorSpace, TwoWayConverter<Color, AnimationVector4D>> ColorToVector = new Function1<ColorSpace, TwoWayConverter<Color, AnimationVector4D>>() { // from class: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final TwoWayConverter<Color, AnimationVector4D> invoke(@NotNull final ColorSpace colorSpace) {
            Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
            return VectorConvertersKt.TwoWayConverter(new Function1<Color, AnimationVector4D>() { // from class: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ AnimationVector4D invoke(Color color) {
                    return m73invoke8_81llA(color.m1852unboximpl());
                }

                @NotNull
                /* renamed from: invoke-8_81llA  reason: not valid java name */
                public final AnimationVector4D m73invoke8_81llA(long j10) {
                    float[] fArr;
                    float multiplyColumn;
                    float[] fArr2;
                    float multiplyColumn2;
                    float[] fArr3;
                    float multiplyColumn3;
                    long m1839convertvNxB06k = Color.m1839convertvNxB06k(j10, ColorSpaces.INSTANCE.getCieXyz());
                    float m1848getRedimpl = Color.m1848getRedimpl(m1839convertvNxB06k);
                    float m1847getGreenimpl = Color.m1847getGreenimpl(m1839convertvNxB06k);
                    float m1845getBlueimpl = Color.m1845getBlueimpl(m1839convertvNxB06k);
                    fArr = ColorVectorConverterKt.M1;
                    multiplyColumn = ColorVectorConverterKt.multiplyColumn(0, m1848getRedimpl, m1847getGreenimpl, m1845getBlueimpl, fArr);
                    double d10 = 0.33333334f;
                    float pow = (float) Math.pow(multiplyColumn, d10);
                    fArr2 = ColorVectorConverterKt.M1;
                    multiplyColumn2 = ColorVectorConverterKt.multiplyColumn(1, m1848getRedimpl, m1847getGreenimpl, m1845getBlueimpl, fArr2);
                    fArr3 = ColorVectorConverterKt.M1;
                    multiplyColumn3 = ColorVectorConverterKt.multiplyColumn(2, m1848getRedimpl, m1847getGreenimpl, m1845getBlueimpl, fArr3);
                    return new AnimationVector4D(Color.m1844getAlphaimpl(j10), pow, (float) Math.pow(multiplyColumn2, d10), (float) Math.pow(multiplyColumn3, d10));
                }
            }, new Function1<AnimationVector4D, Color>() { // from class: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1.2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Color invoke(AnimationVector4D animationVector4D) {
                    return Color.m1832boximpl(m74invokevNxB06k(animationVector4D));
                }

                /* renamed from: invoke-vNxB06k  reason: not valid java name */
                public final long m74invokevNxB06k(@NotNull AnimationVector4D it) {
                    float[] fArr;
                    float multiplyColumn;
                    float[] fArr2;
                    float multiplyColumn2;
                    float[] fArr3;
                    float multiplyColumn3;
                    Intrinsics.checkNotNullParameter(it, "it");
                    double d10 = 3.0f;
                    float pow = (float) Math.pow(it.getV2(), d10);
                    float pow2 = (float) Math.pow(it.getV3(), d10);
                    float pow3 = (float) Math.pow(it.getV4(), d10);
                    fArr = ColorVectorConverterKt.InverseM1;
                    multiplyColumn = ColorVectorConverterKt.multiplyColumn(0, pow, pow2, pow3, fArr);
                    fArr2 = ColorVectorConverterKt.InverseM1;
                    multiplyColumn2 = ColorVectorConverterKt.multiplyColumn(1, pow, pow2, pow3, fArr2);
                    fArr3 = ColorVectorConverterKt.InverseM1;
                    multiplyColumn3 = ColorVectorConverterKt.multiplyColumn(2, pow, pow2, pow3, fArr3);
                    return Color.m1839convertvNxB06k(ColorKt.Color(e.m(multiplyColumn, -2.0f, 2.0f), e.m(multiplyColumn2, -2.0f, 2.0f), e.m(multiplyColumn3, -2.0f, 2.0f), e.m(it.getV1(), 0.0f, 1.0f), ColorSpaces.INSTANCE.getCieXyz()), ColorSpace.this);
                }
            });
        }
    };
    @NotNull
    private static final float[] M1 = {0.80405736f, 0.026893456f, 0.04586542f, 0.3188387f, 0.9319606f, 0.26299807f, -0.11419419f, 0.05105356f, 0.83999807f};
    @NotNull
    private static final float[] InverseM1 = {1.2485008f, -0.032856926f, -0.057883114f, -0.48331892f, 1.1044513f, -0.3194066f, 0.19910365f, -0.07159331f, 1.202023f};

    @NotNull
    public static final Function1<ColorSpace, TwoWayConverter<Color, AnimationVector4D>> getVectorConverter(@NotNull Color.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return ColorToVector;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float multiplyColumn(int i10, float f10, float f11, float f12, float[] fArr) {
        return (f10 * fArr[i10]) + (f11 * fArr[i10 + 3]) + (f12 * fArr[i10 + 6]);
    }
}
