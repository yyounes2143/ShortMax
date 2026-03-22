package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Matrix.kt */
@Metadata
/* loaded from: classes.dex */
public final class Matrix {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int Perspective0 = 3;
    public static final int Perspective1 = 7;
    public static final int Perspective2 = 15;
    public static final int ScaleX = 0;
    public static final int ScaleY = 5;
    public static final int ScaleZ = 10;
    public static final int SkewX = 4;
    public static final int SkewY = 1;
    public static final int TranslateX = 12;
    public static final int TranslateY = 13;
    public static final int TranslateZ = 14;
    @NotNull
    private final float[] values;

    /* compiled from: Matrix.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private /* synthetic */ Matrix(float[] fArr) {
        this.values = fArr;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Matrix m2034boximpl(float[] fArr) {
        return new Matrix(fArr);
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static float[] m2035constructorimpl(@NotNull float[] values) {
        Intrinsics.checkNotNullParameter(values, "values");
        return values;
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ float[] m2036constructorimpl$default(float[] fArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i10 & 1) != 0) {
            fArr = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
        }
        return m2035constructorimpl(fArr);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2037equalsimpl(float[] fArr, Object obj) {
        if (!(obj instanceof Matrix) || !Intrinsics.areEqual(fArr, ((Matrix) obj).m2057unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2038equalsimpl0(float[] fArr, float[] fArr2) {
        return Intrinsics.areEqual(fArr, fArr2);
    }

    /* renamed from: get-impl  reason: not valid java name */
    public static final float m2039getimpl(float[] fArr, int i10, int i11) {
        return fArr[(i10 * 4) + i11];
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2040hashCodeimpl(float[] fArr) {
        return Arrays.hashCode(fArr);
    }

    /* renamed from: invert-impl  reason: not valid java name */
    public static final void m2041invertimpl(float[] fArr) {
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        float f13 = fArr[3];
        float f14 = fArr[4];
        float f15 = fArr[5];
        float f16 = fArr[6];
        float f17 = fArr[7];
        float f18 = fArr[8];
        float f19 = fArr[9];
        float f20 = fArr[10];
        float f21 = fArr[11];
        float f22 = fArr[12];
        float f23 = fArr[13];
        float f24 = fArr[14];
        float f25 = fArr[15];
        float f26 = (f10 * f15) - (f11 * f14);
        float f27 = (f10 * f16) - (f12 * f14);
        float f28 = (f10 * f17) - (f13 * f14);
        float f29 = (f11 * f16) - (f12 * f15);
        float f30 = (f11 * f17) - (f13 * f15);
        float f31 = (f12 * f17) - (f13 * f16);
        float f32 = (f18 * f23) - (f19 * f22);
        float f33 = (f18 * f24) - (f20 * f22);
        float f34 = (f18 * f25) - (f21 * f22);
        float f35 = (f19 * f24) - (f20 * f23);
        float f36 = (f19 * f25) - (f21 * f23);
        float f37 = (f20 * f25) - (f21 * f24);
        float f38 = (((((f26 * f37) - (f27 * f36)) + (f28 * f35)) + (f29 * f34)) - (f30 * f33)) + (f31 * f32);
        if (f38 == 0.0f) {
            return;
        }
        float f39 = 1.0f / f38;
        fArr[0] = (((f15 * f37) - (f16 * f36)) + (f17 * f35)) * f39;
        fArr[1] = ((((-f11) * f37) + (f12 * f36)) - (f13 * f35)) * f39;
        fArr[2] = (((f23 * f31) - (f24 * f30)) + (f25 * f29)) * f39;
        fArr[3] = ((((-f19) * f31) + (f20 * f30)) - (f21 * f29)) * f39;
        float f40 = -f14;
        fArr[4] = (((f40 * f37) + (f16 * f34)) - (f17 * f33)) * f39;
        fArr[5] = (((f37 * f10) - (f12 * f34)) + (f13 * f33)) * f39;
        float f41 = -f22;
        fArr[6] = (((f41 * f31) + (f24 * f28)) - (f25 * f27)) * f39;
        fArr[7] = (((f31 * f18) - (f20 * f28)) + (f21 * f27)) * f39;
        fArr[8] = (((f14 * f36) - (f15 * f34)) + (f17 * f32)) * f39;
        fArr[9] = ((((-f10) * f36) + (f34 * f11)) - (f13 * f32)) * f39;
        fArr[10] = (((f22 * f30) - (f23 * f28)) + (f25 * f26)) * f39;
        fArr[11] = ((((-f18) * f30) + (f28 * f19)) - (f21 * f26)) * f39;
        fArr[12] = (((f40 * f35) + (f15 * f33)) - (f16 * f32)) * f39;
        fArr[13] = (((f10 * f35) - (f11 * f33)) + (f12 * f32)) * f39;
        fArr[14] = (((f41 * f29) + (f23 * f27)) - (f24 * f26)) * f39;
        fArr[15] = (((f18 * f29) - (f19 * f27)) + (f20 * f26)) * f39;
    }

    /* renamed from: map-MK-Hz9U  reason: not valid java name */
    public static final long m2042mapMKHz9U(float[] fArr, long j10) {
        float m1606getXimpl = Offset.m1606getXimpl(j10);
        float m1607getYimpl = Offset.m1607getYimpl(j10);
        float f10 = 1 / (((fArr[3] * m1606getXimpl) + (fArr[7] * m1607getYimpl)) + fArr[15]);
        f10 = (Float.isInfinite(f10) || Float.isNaN(f10)) ? 0.0f : 0.0f;
        return OffsetKt.Offset(((fArr[0] * m1606getXimpl) + (fArr[4] * m1607getYimpl) + fArr[12]) * f10, f10 * ((fArr[1] * m1606getXimpl) + (fArr[5] * m1607getYimpl) + fArr[13]));
    }

    @NotNull
    /* renamed from: map-impl  reason: not valid java name */
    public static final Rect m2043mapimpl(float[] fArr, @NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        long m2042mapMKHz9U = m2042mapMKHz9U(fArr, OffsetKt.Offset(rect.getLeft(), rect.getTop()));
        long m2042mapMKHz9U2 = m2042mapMKHz9U(fArr, OffsetKt.Offset(rect.getLeft(), rect.getBottom()));
        long m2042mapMKHz9U3 = m2042mapMKHz9U(fArr, OffsetKt.Offset(rect.getRight(), rect.getTop()));
        long m2042mapMKHz9U4 = m2042mapMKHz9U(fArr, OffsetKt.Offset(rect.getRight(), rect.getBottom()));
        return new Rect(Math.min(Math.min(Offset.m1606getXimpl(m2042mapMKHz9U), Offset.m1606getXimpl(m2042mapMKHz9U2)), Math.min(Offset.m1606getXimpl(m2042mapMKHz9U3), Offset.m1606getXimpl(m2042mapMKHz9U4))), Math.min(Math.min(Offset.m1607getYimpl(m2042mapMKHz9U), Offset.m1607getYimpl(m2042mapMKHz9U2)), Math.min(Offset.m1607getYimpl(m2042mapMKHz9U3), Offset.m1607getYimpl(m2042mapMKHz9U4))), Math.max(Math.max(Offset.m1606getXimpl(m2042mapMKHz9U), Offset.m1606getXimpl(m2042mapMKHz9U2)), Math.max(Offset.m1606getXimpl(m2042mapMKHz9U3), Offset.m1606getXimpl(m2042mapMKHz9U4))), Math.max(Math.max(Offset.m1607getYimpl(m2042mapMKHz9U), Offset.m1607getYimpl(m2042mapMKHz9U2)), Math.max(Offset.m1607getYimpl(m2042mapMKHz9U3), Offset.m1607getYimpl(m2042mapMKHz9U4))));
    }

    /* renamed from: reset-impl  reason: not valid java name */
    public static final void m2045resetimpl(float[] fArr) {
        float f10;
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                if (i10 == i11) {
                    f10 = 1.0f;
                } else {
                    f10 = 0.0f;
                }
                fArr[(i11 * 4) + i10] = f10;
            }
        }
    }

    /* renamed from: rotateX-impl  reason: not valid java name */
    public static final void m2046rotateXimpl(float[] fArr, float f10) {
        double d10 = (f10 * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        float f11 = fArr[1];
        float f12 = fArr[2];
        float f13 = fArr[5];
        float f14 = fArr[6];
        float f15 = fArr[9];
        float f16 = fArr[10];
        float f17 = fArr[13];
        float f18 = fArr[14];
        fArr[1] = (f11 * cos) - (f12 * sin);
        fArr[2] = (f11 * sin) + (f12 * cos);
        fArr[5] = (f13 * cos) - (f14 * sin);
        fArr[6] = (f13 * sin) + (f14 * cos);
        fArr[9] = (f15 * cos) - (f16 * sin);
        fArr[10] = (f15 * sin) + (f16 * cos);
        fArr[13] = (f17 * cos) - (f18 * sin);
        fArr[14] = (f17 * sin) + (f18 * cos);
    }

    /* renamed from: rotateY-impl  reason: not valid java name */
    public static final void m2047rotateYimpl(float[] fArr, float f10) {
        double d10 = (f10 * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        float f11 = fArr[0];
        float f12 = fArr[2];
        float f13 = fArr[4];
        float f14 = fArr[6];
        float f15 = fArr[8];
        float f16 = fArr[10];
        float f17 = fArr[12];
        float f18 = fArr[14];
        fArr[0] = (f11 * cos) + (f12 * sin);
        fArr[2] = ((-f11) * sin) + (f12 * cos);
        fArr[4] = (f13 * cos) + (f14 * sin);
        fArr[6] = ((-f13) * sin) + (f14 * cos);
        fArr[8] = (f15 * cos) + (f16 * sin);
        fArr[10] = ((-f15) * sin) + (f16 * cos);
        fArr[12] = (f17 * cos) + (f18 * sin);
        fArr[14] = ((-f17) * sin) + (f18 * cos);
    }

    /* renamed from: rotateZ-impl  reason: not valid java name */
    public static final void m2048rotateZimpl(float[] fArr, float f10) {
        double d10 = (f10 * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        float f11 = fArr[0];
        float f12 = fArr[4];
        float f13 = -sin;
        float f14 = fArr[1];
        float f15 = fArr[5];
        float f16 = fArr[2];
        float f17 = fArr[6];
        float f18 = fArr[3];
        float f19 = fArr[7];
        fArr[0] = (cos * f11) + (sin * f12);
        fArr[1] = (cos * f14) + (sin * f15);
        fArr[2] = (cos * f16) + (sin * f17);
        fArr[3] = (cos * f18) + (sin * f19);
        fArr[4] = (f11 * f13) + (f12 * cos);
        fArr[5] = (f14 * f13) + (f15 * cos);
        fArr[6] = (f16 * f13) + (f17 * cos);
        fArr[7] = (f13 * f18) + (cos * f19);
    }

    /* renamed from: scale-impl  reason: not valid java name */
    public static final void m2049scaleimpl(float[] fArr, float f10, float f11, float f12) {
        fArr[0] = fArr[0] * f10;
        fArr[1] = fArr[1] * f10;
        fArr[2] = fArr[2] * f10;
        fArr[3] = fArr[3] * f10;
        fArr[4] = fArr[4] * f11;
        fArr[5] = fArr[5] * f11;
        fArr[6] = fArr[6] * f11;
        fArr[7] = fArr[7] * f11;
        fArr[8] = fArr[8] * f12;
        fArr[9] = fArr[9] * f12;
        fArr[10] = fArr[10] * f12;
        fArr[11] = fArr[11] * f12;
    }

    /* renamed from: scale-impl$default  reason: not valid java name */
    public static /* synthetic */ void m2050scaleimpl$default(float[] fArr, float f10, float f11, float f12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 1.0f;
        }
        if ((i10 & 4) != 0) {
            f12 = 1.0f;
        }
        m2049scaleimpl(fArr, f10, f11, f12);
    }

    /* renamed from: set-impl  reason: not valid java name */
    public static final void m2051setimpl(float[] fArr, int i10, int i11, float f10) {
        fArr[(i10 * 4) + i11] = f10;
    }

    /* renamed from: setFrom-58bKbWc  reason: not valid java name */
    public static final void m2052setFrom58bKbWc(float[] fArr, @NotNull float[] matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        for (int i10 = 0; i10 < 16; i10++) {
            fArr[i10] = matrix[i10];
        }
    }

    /* renamed from: timesAssign-58bKbWc  reason: not valid java name */
    public static final void m2053timesAssign58bKbWc(float[] fArr, @NotNull float[] m10) {
        float m2059dotp89u6pk;
        float m2059dotp89u6pk2;
        float m2059dotp89u6pk3;
        float m2059dotp89u6pk4;
        float m2059dotp89u6pk5;
        float m2059dotp89u6pk6;
        float m2059dotp89u6pk7;
        float m2059dotp89u6pk8;
        float m2059dotp89u6pk9;
        float m2059dotp89u6pk10;
        float m2059dotp89u6pk11;
        float m2059dotp89u6pk12;
        float m2059dotp89u6pk13;
        float m2059dotp89u6pk14;
        float m2059dotp89u6pk15;
        float m2059dotp89u6pk16;
        Intrinsics.checkNotNullParameter(m10, "m");
        m2059dotp89u6pk = MatrixKt.m2059dotp89u6pk(fArr, 0, m10, 0);
        m2059dotp89u6pk2 = MatrixKt.m2059dotp89u6pk(fArr, 0, m10, 1);
        m2059dotp89u6pk3 = MatrixKt.m2059dotp89u6pk(fArr, 0, m10, 2);
        m2059dotp89u6pk4 = MatrixKt.m2059dotp89u6pk(fArr, 0, m10, 3);
        m2059dotp89u6pk5 = MatrixKt.m2059dotp89u6pk(fArr, 1, m10, 0);
        m2059dotp89u6pk6 = MatrixKt.m2059dotp89u6pk(fArr, 1, m10, 1);
        m2059dotp89u6pk7 = MatrixKt.m2059dotp89u6pk(fArr, 1, m10, 2);
        m2059dotp89u6pk8 = MatrixKt.m2059dotp89u6pk(fArr, 1, m10, 3);
        m2059dotp89u6pk9 = MatrixKt.m2059dotp89u6pk(fArr, 2, m10, 0);
        m2059dotp89u6pk10 = MatrixKt.m2059dotp89u6pk(fArr, 2, m10, 1);
        m2059dotp89u6pk11 = MatrixKt.m2059dotp89u6pk(fArr, 2, m10, 2);
        m2059dotp89u6pk12 = MatrixKt.m2059dotp89u6pk(fArr, 2, m10, 3);
        m2059dotp89u6pk13 = MatrixKt.m2059dotp89u6pk(fArr, 3, m10, 0);
        m2059dotp89u6pk14 = MatrixKt.m2059dotp89u6pk(fArr, 3, m10, 1);
        m2059dotp89u6pk15 = MatrixKt.m2059dotp89u6pk(fArr, 3, m10, 2);
        m2059dotp89u6pk16 = MatrixKt.m2059dotp89u6pk(fArr, 3, m10, 3);
        fArr[0] = m2059dotp89u6pk;
        fArr[1] = m2059dotp89u6pk2;
        fArr[2] = m2059dotp89u6pk3;
        fArr[3] = m2059dotp89u6pk4;
        fArr[4] = m2059dotp89u6pk5;
        fArr[5] = m2059dotp89u6pk6;
        fArr[6] = m2059dotp89u6pk7;
        fArr[7] = m2059dotp89u6pk8;
        fArr[8] = m2059dotp89u6pk9;
        fArr[9] = m2059dotp89u6pk10;
        fArr[10] = m2059dotp89u6pk11;
        fArr[11] = m2059dotp89u6pk12;
        fArr[12] = m2059dotp89u6pk13;
        fArr[13] = m2059dotp89u6pk14;
        fArr[14] = m2059dotp89u6pk15;
        fArr[15] = m2059dotp89u6pk16;
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2054toStringimpl(float[] fArr) {
        return StringsKt.n("\n            |" + fArr[0] + ' ' + fArr[1] + ' ' + fArr[2] + ' ' + fArr[3] + "|\n            |" + fArr[4] + ' ' + fArr[5] + ' ' + fArr[6] + ' ' + fArr[7] + "|\n            |" + fArr[8] + ' ' + fArr[9] + ' ' + fArr[10] + ' ' + fArr[11] + "|\n            |" + fArr[12] + ' ' + fArr[13] + ' ' + fArr[14] + ' ' + fArr[15] + "|\n        ");
    }

    /* renamed from: translate-impl  reason: not valid java name */
    public static final void m2055translateimpl(float[] fArr, float f10, float f11, float f12) {
        float f13 = (fArr[0] * f10) + (fArr[4] * f11) + (fArr[8] * f12) + fArr[12];
        float f14 = (fArr[1] * f10) + (fArr[5] * f11) + (fArr[9] * f12) + fArr[13];
        float f15 = (fArr[2] * f10) + (fArr[6] * f11) + (fArr[10] * f12) + fArr[14];
        fArr[12] = f13;
        fArr[13] = f14;
        fArr[14] = f15;
        fArr[15] = (fArr[3] * f10) + (fArr[7] * f11) + (fArr[11] * f12) + fArr[15];
    }

    /* renamed from: translate-impl$default  reason: not valid java name */
    public static /* synthetic */ void m2056translateimpl$default(float[] fArr, float f10, float f11, float f12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        if ((i10 & 4) != 0) {
            f12 = 0.0f;
        }
        m2055translateimpl(fArr, f10, f11, f12);
    }

    public boolean equals(Object obj) {
        return m2037equalsimpl(this.values, obj);
    }

    @NotNull
    public final float[] getValues() {
        return this.values;
    }

    public int hashCode() {
        return m2040hashCodeimpl(this.values);
    }

    @NotNull
    public String toString() {
        return m2054toStringimpl(this.values);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ float[] m2057unboximpl() {
        return this.values;
    }

    /* renamed from: map-impl  reason: not valid java name */
    public static final void m2044mapimpl(float[] fArr, @NotNull MutableRect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        long m2042mapMKHz9U = m2042mapMKHz9U(fArr, OffsetKt.Offset(rect.getLeft(), rect.getTop()));
        long m2042mapMKHz9U2 = m2042mapMKHz9U(fArr, OffsetKt.Offset(rect.getLeft(), rect.getBottom()));
        long m2042mapMKHz9U3 = m2042mapMKHz9U(fArr, OffsetKt.Offset(rect.getRight(), rect.getTop()));
        long m2042mapMKHz9U4 = m2042mapMKHz9U(fArr, OffsetKt.Offset(rect.getRight(), rect.getBottom()));
        rect.setLeft(Math.min(Math.min(Offset.m1606getXimpl(m2042mapMKHz9U), Offset.m1606getXimpl(m2042mapMKHz9U2)), Math.min(Offset.m1606getXimpl(m2042mapMKHz9U3), Offset.m1606getXimpl(m2042mapMKHz9U4))));
        rect.setTop(Math.min(Math.min(Offset.m1607getYimpl(m2042mapMKHz9U), Offset.m1607getYimpl(m2042mapMKHz9U2)), Math.min(Offset.m1607getYimpl(m2042mapMKHz9U3), Offset.m1607getYimpl(m2042mapMKHz9U4))));
        rect.setRight(Math.max(Math.max(Offset.m1606getXimpl(m2042mapMKHz9U), Offset.m1606getXimpl(m2042mapMKHz9U2)), Math.max(Offset.m1606getXimpl(m2042mapMKHz9U3), Offset.m1606getXimpl(m2042mapMKHz9U4))));
        rect.setBottom(Math.max(Math.max(Offset.m1607getYimpl(m2042mapMKHz9U), Offset.m1607getYimpl(m2042mapMKHz9U2)), Math.max(Offset.m1607getYimpl(m2042mapMKHz9U3), Offset.m1607getYimpl(m2042mapMKHz9U4))));
    }
}
