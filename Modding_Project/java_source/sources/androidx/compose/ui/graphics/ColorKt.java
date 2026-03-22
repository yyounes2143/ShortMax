package androidx.compose.ui.graphics;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.colorspace.ColorModel;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaceKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.util.MathHelpersKt;
import com.applovin.shadow.okhttp3.internal.ws.WebSocketProtocol;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Color.kt */
@Metadata
/* loaded from: classes.dex */
public final class ColorKt {
    @Stable
    public static final long Color(float f10, float f11, float f12, float f13, @NotNull ColorSpace colorSpace) {
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        float minValue = colorSpace.getMinValue(0);
        if (f10 <= colorSpace.getMaxValue(0) && minValue <= f10) {
            float minValue2 = colorSpace.getMinValue(1);
            if (f11 <= colorSpace.getMaxValue(1) && minValue2 <= f11) {
                float minValue3 = colorSpace.getMinValue(2);
                if (f12 <= colorSpace.getMaxValue(2) && minValue3 <= f12 && 0.0f <= f13 && f13 <= 1.0f) {
                    if (colorSpace.isSrgb()) {
                        return Color.m1838constructorimpl(ms.p.b(ms.p.b(ms.p.b((((((int) ((f10 * 255.0f) + 0.5f)) << 16) | (((int) ((f13 * 255.0f) + 0.5f)) << 24)) | (((int) ((f11 * 255.0f) + 0.5f)) << 8)) | ((int) ((f12 * 255.0f) + 0.5f))) & 4294967295L) << 32));
                    } else if (colorSpace.getComponentCount() == 3) {
                        int id$ui_graphics_release = colorSpace.getId$ui_graphics_release();
                        if (id$ui_graphics_release != -1) {
                            short m1936constructorimpl = Float16.m1936constructorimpl(f10);
                            short m1936constructorimpl2 = Float16.m1936constructorimpl(f11);
                            short m1936constructorimpl3 = Float16.m1936constructorimpl(f12);
                            return Color.m1838constructorimpl(ms.p.b(ms.p.b(ms.p.b(ms.p.b(ms.p.b(ms.p.b(ms.p.b(m1936constructorimpl2) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ms.p.b(ms.p.b(ms.p.b(m1936constructorimpl) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48)) | ms.p.b(ms.p.b(ms.p.b(m1936constructorimpl3) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16)) | ms.p.b(ms.p.b(ms.p.b((int) ((Math.max(0.0f, Math.min(f13, 1.0f)) * 1023.0f) + 0.5f)) & 1023) << 6)) | ms.p.b(ms.p.b(id$ui_graphics_release) & 63)));
                        }
                        throw new IllegalArgumentException("Unknown color space, please use a color space in ColorSpaces");
                    } else {
                        throw new IllegalArgumentException("Color only works with ColorSpaces with 3 components");
                    }
                }
            }
        }
        throw new IllegalArgumentException(("red = " + f10 + ", green = " + f11 + ", blue = " + f12 + ", alpha = " + f13 + " outside the range for " + colorSpace).toString());
    }

    public static /* synthetic */ long Color$default(float f10, float f11, float f12, float f13, ColorSpace colorSpace, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            f13 = 1.0f;
        }
        if ((i10 & 16) != 0) {
            colorSpace = ColorSpaces.INSTANCE.getSrgb();
        }
        return Color(f10, f11, f12, f13, colorSpace);
    }

    /* renamed from: access$getComponents-8_81llA */
    public static final /* synthetic */ float[] m1887access$getComponents8_81llA(long j10) {
        return m1889getComponents8_81llA(j10);
    }

    private static final float compositeComponent(float f10, float f11, float f12, float f13, float f14) {
        if (f14 == 0.0f) {
            return 0.0f;
        }
        return ((f10 * f12) + ((f11 * f13) * (1.0f - f12))) / f14;
    }

    @Stable
    /* renamed from: compositeOver--OWjLjI */
    public static final long m1888compositeOverOWjLjI(long j10, long j11) {
        float f10;
        float f11;
        long m1839convertvNxB06k = Color.m1839convertvNxB06k(j10, Color.m1846getColorSpaceimpl(j11));
        float m1844getAlphaimpl = Color.m1844getAlphaimpl(j11);
        float m1844getAlphaimpl2 = Color.m1844getAlphaimpl(m1839convertvNxB06k);
        float f12 = 1.0f - m1844getAlphaimpl2;
        float f13 = (m1844getAlphaimpl * f12) + m1844getAlphaimpl2;
        float m1848getRedimpl = Color.m1848getRedimpl(m1839convertvNxB06k);
        float m1848getRedimpl2 = Color.m1848getRedimpl(j11);
        float f14 = 0.0f;
        int i10 = (f13 > 0.0f ? 1 : (f13 == 0.0f ? 0 : -1));
        if (i10 == 0) {
            f10 = 0.0f;
        } else {
            f10 = ((m1848getRedimpl * m1844getAlphaimpl2) + ((m1848getRedimpl2 * m1844getAlphaimpl) * f12)) / f13;
        }
        float m1847getGreenimpl = Color.m1847getGreenimpl(m1839convertvNxB06k);
        float m1847getGreenimpl2 = Color.m1847getGreenimpl(j11);
        if (i10 == 0) {
            f11 = 0.0f;
        } else {
            f11 = ((m1847getGreenimpl * m1844getAlphaimpl2) + ((m1847getGreenimpl2 * m1844getAlphaimpl) * f12)) / f13;
        }
        float m1845getBlueimpl = Color.m1845getBlueimpl(m1839convertvNxB06k);
        float m1845getBlueimpl2 = Color.m1845getBlueimpl(j11);
        if (i10 != 0) {
            f14 = ((m1845getBlueimpl * m1844getAlphaimpl2) + ((m1845getBlueimpl2 * m1844getAlphaimpl) * f12)) / f13;
        }
        return Color(f10, f11, f14, f13, Color.m1846getColorSpaceimpl(j11));
    }

    /* renamed from: getComponents-8_81llA */
    public static final float[] m1889getComponents8_81llA(long j10) {
        return new float[]{Color.m1848getRedimpl(j10), Color.m1847getGreenimpl(j10), Color.m1845getBlueimpl(j10), Color.m1844getAlphaimpl(j10)};
    }

    /* renamed from: isSpecified-8_81llA */
    public static final boolean m1890isSpecified8_81llA(long j10) {
        if (j10 != Color.Companion.m1878getUnspecified0d7_KjU()) {
            return true;
        }
        return false;
    }

    /* renamed from: isUnspecified-8_81llA */
    public static final boolean m1892isUnspecified8_81llA(long j10) {
        if (j10 == Color.Companion.m1878getUnspecified0d7_KjU()) {
            return true;
        }
        return false;
    }

    @Stable
    /* renamed from: lerp-jxsXWHM */
    public static final long m1894lerpjxsXWHM(long j10, long j11, float f10) {
        ColorSpace oklab = ColorSpaces.INSTANCE.getOklab();
        long m1839convertvNxB06k = Color.m1839convertvNxB06k(j10, oklab);
        long m1839convertvNxB06k2 = Color.m1839convertvNxB06k(j11, oklab);
        float m1844getAlphaimpl = Color.m1844getAlphaimpl(m1839convertvNxB06k);
        float m1848getRedimpl = Color.m1848getRedimpl(m1839convertvNxB06k);
        float m1847getGreenimpl = Color.m1847getGreenimpl(m1839convertvNxB06k);
        float m1845getBlueimpl = Color.m1845getBlueimpl(m1839convertvNxB06k);
        float m1844getAlphaimpl2 = Color.m1844getAlphaimpl(m1839convertvNxB06k2);
        float m1848getRedimpl2 = Color.m1848getRedimpl(m1839convertvNxB06k2);
        float m1847getGreenimpl2 = Color.m1847getGreenimpl(m1839convertvNxB06k2);
        float m1845getBlueimpl2 = Color.m1845getBlueimpl(m1839convertvNxB06k2);
        return Color.m1839convertvNxB06k(Color(MathHelpersKt.lerp(m1848getRedimpl, m1848getRedimpl2, f10), MathHelpersKt.lerp(m1847getGreenimpl, m1847getGreenimpl2, f10), MathHelpersKt.lerp(m1845getBlueimpl, m1845getBlueimpl2, f10), MathHelpersKt.lerp(m1844getAlphaimpl, m1844getAlphaimpl2, f10), oklab), Color.m1846getColorSpaceimpl(j11));
    }

    @Stable
    /* renamed from: luminance-8_81llA */
    public static final float m1895luminance8_81llA(long j10) {
        ColorSpace m1846getColorSpaceimpl = Color.m1846getColorSpaceimpl(j10);
        if (ColorModel.m2200equalsimpl0(m1846getColorSpaceimpl.m2209getModelxdoWZVw(), ColorModel.Companion.m2207getRgbxdoWZVw())) {
            Function1<Double, Double> eotf = ((Rgb) m1846getColorSpaceimpl).getEotf();
            return saturate((float) ((eotf.invoke(Double.valueOf(Color.m1848getRedimpl(j10))).doubleValue() * 0.2126d) + (eotf.invoke(Double.valueOf(Color.m1847getGreenimpl(j10))).doubleValue() * 0.7152d) + (eotf.invoke(Double.valueOf(Color.m1845getBlueimpl(j10))).doubleValue() * 0.0722d)));
        }
        throw new IllegalArgumentException(("The specified color must be encoded in an RGB color space. The supplied color space is " + ((Object) ColorModel.m2203toStringimpl(m1846getColorSpaceimpl.m2209getModelxdoWZVw()))).toString());
    }

    private static final float saturate(float f10) {
        float f11 = 0.0f;
        if (f10 > 0.0f) {
            f11 = 1.0f;
            if (f10 < 1.0f) {
                return f10;
            }
        }
        return f11;
    }

    /* renamed from: takeOrElse-DxMtmZc */
    public static final long m1896takeOrElseDxMtmZc(long j10, @NotNull Function0<Color> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (j10 == Color.Companion.m1878getUnspecified0d7_KjU()) {
            return block.invoke().m1852unboximpl();
        }
        return j10;
    }

    @Stable
    /* renamed from: toArgb-8_81llA */
    public static final int m1897toArgb8_81llA(long j10) {
        ColorSpace m1846getColorSpaceimpl = Color.m1846getColorSpaceimpl(j10);
        if (m1846getColorSpaceimpl.isSrgb()) {
            return (int) ms.p.b(j10 >>> 32);
        }
        float[] m1889getComponents8_81llA = m1889getComponents8_81llA(j10);
        ColorSpaceKt.m2211connectYBCOT_4$default(m1846getColorSpaceimpl, null, 0, 3, null).transform(m1889getComponents8_81llA);
        return ((int) ((m1889getComponents8_81llA[2] * 255.0f) + 0.5f)) | (((int) ((m1889getComponents8_81llA[3] * 255.0f) + 0.5f)) << 24) | (((int) ((m1889getComponents8_81llA[0] * 255.0f) + 0.5f)) << 16) | (((int) ((m1889getComponents8_81llA[1] * 255.0f) + 0.5f)) << 8);
    }

    public static /* synthetic */ long Color$default(int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 8) != 0) {
            i13 = 255;
        }
        return Color(i10, i11, i12, i13);
    }

    @Stable
    public static final long Color(int i10) {
        return Color.m1838constructorimpl(ms.p.b(ms.p.b(i10) << 32));
    }

    @Stable
    public static final long Color(long j10) {
        return Color.m1838constructorimpl(ms.p.b(ms.p.b(ms.p.b(j10) & 4294967295L) << 32));
    }

    @Stable
    public static final long Color(int i10, int i11, int i12, int i13) {
        return Color(((i10 & 255) << 16) | ((i13 & 255) << 24) | ((i11 & 255) << 8) | (i12 & 255));
    }

    @Stable
    /* renamed from: isSpecified-8_81llA$annotations */
    public static /* synthetic */ void m1891isSpecified8_81llA$annotations(long j10) {
    }

    @Stable
    /* renamed from: isUnspecified-8_81llA$annotations */
    public static /* synthetic */ void m1893isUnspecified8_81llA$annotations(long j10) {
    }
}
