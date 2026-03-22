package androidx.compose.ui.graphics;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ColorMatrix.kt */
@Metadata
/* loaded from: classes.dex */
public final class ColorMatrix {
    @NotNull
    private final float[] values;

    private /* synthetic */ ColorMatrix(float[] fArr) {
        this.values = fArr;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ColorMatrix m1898boximpl(float[] fArr) {
        return new ColorMatrix(fArr);
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static float[] m1899constructorimpl(@NotNull float[] values) {
        Intrinsics.checkNotNullParameter(values, "values");
        return values;
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ float[] m1900constructorimpl$default(float[] fArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i10 & 1) != 0) {
            fArr = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
        }
        return m1899constructorimpl(fArr);
    }

    /* renamed from: convertRgbToYuv-impl  reason: not valid java name */
    public static final void m1901convertRgbToYuvimpl(float[] fArr) {
        m1908resetimpl(fArr);
        fArr[0] = 0.299f;
        fArr[1] = 0.587f;
        fArr[2] = 0.114f;
        fArr[5] = -0.16874f;
        fArr[6] = -0.33126f;
        fArr[7] = 0.5f;
        fArr[10] = 0.5f;
        fArr[11] = -0.41869f;
        fArr[12] = -0.08131f;
    }

    /* renamed from: convertYuvToRgb-impl  reason: not valid java name */
    public static final void m1902convertYuvToRgbimpl(float[] fArr) {
        m1908resetimpl(fArr);
        fArr[2] = 1.402f;
        fArr[5] = 1.0f;
        fArr[6] = -0.34414f;
        fArr[7] = -0.71414f;
        fArr[10] = 1.0f;
        fArr[11] = 1.772f;
        fArr[12] = 0.0f;
    }

    /* renamed from: dot-Me4OoYI  reason: not valid java name */
    private static final float m1903dotMe4OoYI(float[] fArr, float[] fArr2, int i10, float[] fArr3, int i11) {
        int i12 = i10 * 5;
        return (fArr2[i12] * fArr3[i11]) + (fArr2[i12 + 1] * fArr3[5 + i11]) + (fArr2[i12 + 2] * fArr3[10 + i11]) + (fArr2[i12 + 3] * fArr3[15 + i11]);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1904equalsimpl(float[] fArr, Object obj) {
        if (!(obj instanceof ColorMatrix) || !Intrinsics.areEqual(fArr, ((ColorMatrix) obj).m1919unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1905equalsimpl0(float[] fArr, float[] fArr2) {
        return Intrinsics.areEqual(fArr, fArr2);
    }

    /* renamed from: get-impl  reason: not valid java name */
    public static final float m1906getimpl(float[] fArr, int i10, int i11) {
        return fArr[(i10 * 5) + i11];
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1907hashCodeimpl(float[] fArr) {
        return Arrays.hashCode(fArr);
    }

    /* renamed from: reset-impl  reason: not valid java name */
    public static final void m1908resetimpl(float[] fArr) {
        kotlin.collections.n.E(fArr, 0.0f, 0, 0, 6, null);
        fArr[0] = 1.0f;
        fArr[12] = 1.0f;
        fArr[6] = 1.0f;
        fArr[18] = 1.0f;
    }

    /* renamed from: rotateInternal-impl  reason: not valid java name */
    private static final void m1909rotateInternalimpl(float[] fArr, float f10, Function2<? super Float, ? super Float, Unit> function2) {
        m1908resetimpl(fArr);
        double d10 = (f10 * 3.141592653589793d) / 180.0d;
        function2.invoke(Float.valueOf((float) Math.cos(d10)), Float.valueOf((float) Math.sin(d10)));
    }

    /* renamed from: set-impl  reason: not valid java name */
    public static final void m1910setimpl(float[] fArr, int i10, int i11, float f10) {
        fArr[(i10 * 5) + i11] = f10;
    }

    /* renamed from: set-jHG-Opc  reason: not valid java name */
    public static final void m1911setjHGOpc(float[] fArr, @NotNull float[] src) {
        Intrinsics.checkNotNullParameter(src, "src");
        kotlin.collections.n.r(src, fArr, 0, 0, 0, 14, null);
    }

    /* renamed from: setToRotateBlue-impl  reason: not valid java name */
    public static final void m1912setToRotateBlueimpl(float[] fArr, float f10) {
        m1908resetimpl(fArr);
        double d10 = (f10 * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        fArr[6] = cos;
        fArr[0] = cos;
        fArr[1] = sin;
        fArr[5] = -sin;
    }

    /* renamed from: setToRotateGreen-impl  reason: not valid java name */
    public static final void m1913setToRotateGreenimpl(float[] fArr, float f10) {
        m1908resetimpl(fArr);
        double d10 = (f10 * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        fArr[12] = cos;
        fArr[0] = cos;
        fArr[2] = -sin;
        fArr[10] = sin;
    }

    /* renamed from: setToRotateRed-impl  reason: not valid java name */
    public static final void m1914setToRotateRedimpl(float[] fArr, float f10) {
        m1908resetimpl(fArr);
        double d10 = (f10 * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        fArr[12] = cos;
        fArr[6] = cos;
        fArr[7] = sin;
        fArr[11] = -sin;
    }

    /* renamed from: setToSaturation-impl  reason: not valid java name */
    public static final void m1915setToSaturationimpl(float[] fArr, float f10) {
        m1908resetimpl(fArr);
        float f11 = 1 - f10;
        float f12 = 0.213f * f11;
        float f13 = 0.715f * f11;
        float f14 = f11 * 0.072f;
        fArr[0] = f12 + f10;
        fArr[1] = f13;
        fArr[2] = f14;
        fArr[5] = f12;
        fArr[6] = f13 + f10;
        fArr[7] = f14;
        fArr[10] = f12;
        fArr[11] = f13;
        fArr[12] = f14 + f10;
    }

    /* renamed from: setToScale-impl  reason: not valid java name */
    public static final void m1916setToScaleimpl(float[] fArr, float f10, float f11, float f12, float f13) {
        m1908resetimpl(fArr);
        fArr[0] = f10;
        fArr[6] = f11;
        fArr[12] = f12;
        fArr[18] = f13;
    }

    /* renamed from: timesAssign-jHG-Opc  reason: not valid java name */
    public static final void m1917timesAssignjHGOpc(float[] fArr, @NotNull float[] colorMatrix) {
        Intrinsics.checkNotNullParameter(colorMatrix, "colorMatrix");
        float m1903dotMe4OoYI = m1903dotMe4OoYI(fArr, fArr, 0, colorMatrix, 0);
        float m1903dotMe4OoYI2 = m1903dotMe4OoYI(fArr, fArr, 0, colorMatrix, 1);
        float m1903dotMe4OoYI3 = m1903dotMe4OoYI(fArr, fArr, 0, colorMatrix, 2);
        float m1903dotMe4OoYI4 = m1903dotMe4OoYI(fArr, fArr, 0, colorMatrix, 3);
        float f10 = (fArr[0] * colorMatrix[4]) + (fArr[1] * colorMatrix[9]) + (fArr[2] * colorMatrix[14]) + (fArr[3] * colorMatrix[19]) + fArr[4];
        float m1903dotMe4OoYI5 = m1903dotMe4OoYI(fArr, fArr, 1, colorMatrix, 0);
        float m1903dotMe4OoYI6 = m1903dotMe4OoYI(fArr, fArr, 1, colorMatrix, 1);
        float m1903dotMe4OoYI7 = m1903dotMe4OoYI(fArr, fArr, 1, colorMatrix, 2);
        float m1903dotMe4OoYI8 = m1903dotMe4OoYI(fArr, fArr, 1, colorMatrix, 3);
        float f11 = (fArr[5] * colorMatrix[4]) + (fArr[6] * colorMatrix[9]) + (fArr[7] * colorMatrix[14]) + (fArr[8] * colorMatrix[19]) + fArr[9];
        float m1903dotMe4OoYI9 = m1903dotMe4OoYI(fArr, fArr, 2, colorMatrix, 0);
        float m1903dotMe4OoYI10 = m1903dotMe4OoYI(fArr, fArr, 2, colorMatrix, 1);
        float m1903dotMe4OoYI11 = m1903dotMe4OoYI(fArr, fArr, 2, colorMatrix, 2);
        float m1903dotMe4OoYI12 = m1903dotMe4OoYI(fArr, fArr, 2, colorMatrix, 3);
        float f12 = (fArr[10] * colorMatrix[4]) + (fArr[11] * colorMatrix[9]) + (fArr[12] * colorMatrix[14]) + (fArr[13] * colorMatrix[19]) + fArr[14];
        float m1903dotMe4OoYI13 = m1903dotMe4OoYI(fArr, fArr, 3, colorMatrix, 0);
        float m1903dotMe4OoYI14 = m1903dotMe4OoYI(fArr, fArr, 3, colorMatrix, 1);
        float m1903dotMe4OoYI15 = m1903dotMe4OoYI(fArr, fArr, 3, colorMatrix, 2);
        float m1903dotMe4OoYI16 = m1903dotMe4OoYI(fArr, fArr, 3, colorMatrix, 3);
        fArr[0] = m1903dotMe4OoYI;
        fArr[1] = m1903dotMe4OoYI2;
        fArr[2] = m1903dotMe4OoYI3;
        fArr[3] = m1903dotMe4OoYI4;
        fArr[4] = f10;
        fArr[5] = m1903dotMe4OoYI5;
        fArr[6] = m1903dotMe4OoYI6;
        fArr[7] = m1903dotMe4OoYI7;
        fArr[8] = m1903dotMe4OoYI8;
        fArr[9] = f11;
        fArr[10] = m1903dotMe4OoYI9;
        fArr[11] = m1903dotMe4OoYI10;
        fArr[12] = m1903dotMe4OoYI11;
        fArr[13] = m1903dotMe4OoYI12;
        fArr[14] = f12;
        fArr[15] = m1903dotMe4OoYI13;
        fArr[16] = m1903dotMe4OoYI14;
        fArr[17] = m1903dotMe4OoYI15;
        fArr[18] = m1903dotMe4OoYI16;
        fArr[19] = (fArr[15] * colorMatrix[4]) + (fArr[16] * colorMatrix[9]) + (fArr[17] * colorMatrix[14]) + (fArr[18] * colorMatrix[19]) + fArr[19];
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1918toStringimpl(float[] fArr) {
        return "ColorMatrix(values=" + Arrays.toString(fArr) + ')';
    }

    public boolean equals(Object obj) {
        return m1904equalsimpl(this.values, obj);
    }

    @NotNull
    public final float[] getValues() {
        return this.values;
    }

    public int hashCode() {
        return m1907hashCodeimpl(this.values);
    }

    public String toString() {
        return m1918toStringimpl(this.values);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ float[] m1919unboximpl() {
        return this.values;
    }
}
