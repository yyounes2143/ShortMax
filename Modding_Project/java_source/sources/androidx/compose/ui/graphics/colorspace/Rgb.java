package androidx.compose.ui.graphics.colorspace;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Rgb.kt */
@Metadata
/* loaded from: classes.dex */
public final class Rgb extends ColorSpace {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Function1<Double, Double> DoubleIdentity = new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb$Companion$DoubleIdentity$1
        @NotNull
        public final Double invoke(double d10) {
            return Double.valueOf(d10);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Double invoke(Double d10) {
            return invoke(d10.doubleValue());
        }
    };
    @NotNull
    private final Function1<Double, Double> eotf;
    @NotNull
    private final Function1<Double, Double> eotfOrig;
    @NotNull
    private final float[] inverseTransform;
    private final boolean isSrgb;
    private final boolean isWideGamut;
    private final float max;
    private final float min;
    @NotNull
    private final Function1<Double, Double> oetf;
    @NotNull
    private final Function1<Double, Double> oetfOrig;
    @NotNull
    private final float[] primaries;
    @Nullable
    private final TransferParameters transferParameters;
    @NotNull
    private final float[] transform;
    @NotNull
    private final WhitePoint whitePoint;

    /* compiled from: Rgb.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final float area(float[] fArr) {
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            float f13 = fArr[3];
            float f14 = fArr[4];
            float f15 = fArr[5];
            float f16 = ((((((f10 * f13) + (f11 * f14)) + (f12 * f15)) - (f13 * f14)) - (f11 * f12)) - (f10 * f15)) * 0.5f;
            if (f16 < 0.0f) {
                return -f16;
            }
            return f16;
        }

        private final boolean compare(double d10, Function1<? super Double, Double> function1, Function1<? super Double, Double> function12) {
            if (Math.abs(function1.invoke(Double.valueOf(d10)).doubleValue() - function12.invoke(Double.valueOf(d10)).doubleValue()) <= 0.001d) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final WhitePoint computeWhitePoint(float[] fArr) {
            float[] mul3x3Float3 = ColorSpaceKt.mul3x3Float3(fArr, new float[]{1.0f, 1.0f, 1.0f});
            float f10 = mul3x3Float3[0];
            float f11 = mul3x3Float3[1];
            float f12 = f10 + f11 + mul3x3Float3[2];
            return new WhitePoint(f10 / f12, f11 / f12);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float[] computeXYZMatrix(float[] fArr, WhitePoint whitePoint) {
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            float f13 = fArr[3];
            float f14 = fArr[4];
            float f15 = fArr[5];
            float x10 = whitePoint.getX();
            float y10 = whitePoint.getY();
            float f16 = 1;
            float f17 = (f16 - f10) / f11;
            float f18 = f10 / f11;
            float f19 = (f12 / f13) - f18;
            float f20 = (x10 / y10) - f18;
            float f21 = ((f16 - f12) / f13) - f17;
            float f22 = (f14 / f15) - f18;
            float f23 = (((((f16 - x10) / y10) - f17) * f19) - (f20 * f21)) / (((((f16 - f14) / f15) - f17) * f19) - (f21 * f22));
            float f24 = (f20 - (f22 * f23)) / f19;
            float f25 = (1.0f - f24) - f23;
            float f26 = f25 / f11;
            float f27 = f24 / f13;
            float f28 = f23 / f15;
            return new float[]{f26 * f10, f25, f26 * ((1.0f - f10) - f11), f27 * f12, f24, f27 * ((1.0f - f12) - f13), f28 * f14, f23, f28 * ((1.0f - f14) - f15)};
        }

        private final boolean contains(float[] fArr, float[] fArr2) {
            float f10 = fArr[0];
            float f11 = fArr2[0];
            float f12 = fArr[1];
            float f13 = fArr2[1];
            float f14 = fArr[4];
            float f15 = fArr2[4];
            float f16 = fArr[5];
            float f17 = fArr2[5];
            float[] fArr3 = {f10 - f11, f12 - f13, fArr[2] - fArr2[2], fArr[3] - fArr2[3], f14 - f15, f16 - f17};
            if (cross(fArr3[0], fArr3[1], f11 - f15, f13 - f17) < 0.0f || cross(fArr2[0] - fArr2[2], fArr2[1] - fArr2[3], fArr3[0], fArr3[1]) < 0.0f || cross(fArr3[2], fArr3[3], fArr2[2] - fArr2[0], fArr2[3] - fArr2[1]) < 0.0f || cross(fArr2[2] - fArr2[4], fArr2[3] - fArr2[5], fArr3[2], fArr3[3]) < 0.0f || cross(fArr3[4], fArr3[5], fArr2[4] - fArr2[2], fArr2[5] - fArr2[3]) < 0.0f || cross(fArr2[4] - fArr2[0], fArr2[5] - fArr2[1], fArr3[4], fArr3[5]) < 0.0f) {
                return false;
            }
            return true;
        }

        private final float cross(float f10, float f11, float f12, float f13) {
            return (f10 * f13) - (f11 * f12);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSrgb(float[] fArr, WhitePoint whitePoint, Function1<? super Double, Double> function1, Function1<? super Double, Double> function12, float f10, float f11, int i10) {
            if (i10 == 0) {
                return true;
            }
            ColorSpaces colorSpaces = ColorSpaces.INSTANCE;
            if (!ColorSpaceKt.compare(fArr, colorSpaces.getSrgbPrimaries$ui_graphics_release()) || !ColorSpaceKt.compare(whitePoint, Illuminant.INSTANCE.getD65()) || f10 != 0.0f || f11 != 1.0f) {
                return false;
            }
            Rgb srgb = colorSpaces.getSrgb();
            for (double d10 = 0.0d; d10 <= 1.0d; d10 += 0.00392156862745098d) {
                if (!compare(d10, function1, srgb.getOetfOrig$ui_graphics_release()) || !compare(d10, function12, srgb.getEotfOrig$ui_graphics_release())) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isWideGamut(float[] fArr, float f10, float f11) {
            float area = area(fArr);
            ColorSpaces colorSpaces = ColorSpaces.INSTANCE;
            if ((area / area(colorSpaces.getNtsc1953Primaries$ui_graphics_release()) > 0.9f && contains(fArr, colorSpaces.getSrgbPrimaries$ui_graphics_release())) || (f10 < 0.0f && f11 > 1.0f)) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float[] xyPrimaries(float[] fArr) {
            float[] fArr2 = new float[6];
            if (fArr.length == 9) {
                float f10 = fArr[0];
                float f11 = fArr[1];
                float f12 = f10 + f11 + fArr[2];
                fArr2[0] = f10 / f12;
                fArr2[1] = f11 / f12;
                float f13 = fArr[3];
                float f14 = fArr[4];
                float f15 = f13 + f14 + fArr[5];
                fArr2[2] = f13 / f15;
                fArr2[3] = f14 / f15;
                float f16 = fArr[6];
                float f17 = fArr[7];
                float f18 = f16 + f17 + fArr[8];
                fArr2[4] = f16 / f18;
                fArr2[5] = f17 / f18;
            } else {
                n.r(fArr, fArr2, 0, 0, 6, 6, null);
            }
            return fArr2;
        }

        @NotNull
        public final float[] computePrimaries$ui_graphics_release(@NotNull float[] toXYZ) {
            Intrinsics.checkNotNullParameter(toXYZ, "toXYZ");
            float[] mul3x3Float3 = ColorSpaceKt.mul3x3Float3(toXYZ, new float[]{1.0f, 0.0f, 0.0f});
            float[] mul3x3Float32 = ColorSpaceKt.mul3x3Float3(toXYZ, new float[]{0.0f, 1.0f, 0.0f});
            float[] mul3x3Float33 = ColorSpaceKt.mul3x3Float3(toXYZ, new float[]{0.0f, 0.0f, 1.0f});
            float f10 = mul3x3Float3[0];
            float f11 = mul3x3Float3[1];
            float f12 = f10 + f11 + mul3x3Float3[2];
            float f13 = mul3x3Float32[0];
            float f14 = mul3x3Float32[1];
            float f15 = f13 + f14 + mul3x3Float32[2];
            float f16 = mul3x3Float33[0];
            float f17 = mul3x3Float33[1];
            float f18 = f16 + f17 + mul3x3Float33[2];
            return new float[]{f10 / f12, f11 / f12, f13 / f15, f14 / f15, f16 / f18, f17 / f18};
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Rgb(@NotNull String name, @NotNull float[] primaries, @NotNull WhitePoint whitePoint, @Nullable float[] fArr, @NotNull Function1<? super Double, Double> oetf, @NotNull Function1<? super Double, Double> eotf, float f10, float f11, @Nullable TransferParameters transferParameters, int i10) {
        super(name, ColorModel.Companion.m2207getRgbxdoWZVw(), i10, null);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(primaries, "primaries");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
        Intrinsics.checkNotNullParameter(oetf, "oetf");
        Intrinsics.checkNotNullParameter(eotf, "eotf");
        this.whitePoint = whitePoint;
        this.min = f10;
        this.max = f11;
        this.transferParameters = transferParameters;
        this.oetfOrig = oetf;
        this.oetf = new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb$oetf$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @NotNull
            public final Double invoke(double d10) {
                float f12;
                float f13;
                double doubleValue = Rgb.this.getOetfOrig$ui_graphics_release().invoke(Double.valueOf(d10)).doubleValue();
                f12 = Rgb.this.min;
                double d11 = f12;
                f13 = Rgb.this.max;
                return Double.valueOf(e.l(doubleValue, d11, f13));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Double invoke(Double d10) {
                return invoke(d10.doubleValue());
            }
        };
        this.eotfOrig = eotf;
        this.eotf = new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb$eotf$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @NotNull
            public final Double invoke(double d10) {
                float f12;
                float f13;
                Function1<Double, Double> eotfOrig$ui_graphics_release = Rgb.this.getEotfOrig$ui_graphics_release();
                f12 = Rgb.this.min;
                double d11 = f12;
                f13 = Rgb.this.max;
                return eotfOrig$ui_graphics_release.invoke(Double.valueOf(e.l(d10, d11, f13)));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Double invoke(Double d10) {
                return invoke(d10.doubleValue());
            }
        };
        if (primaries.length != 6 && primaries.length != 9) {
            throw new IllegalArgumentException("The color space's primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ");
        }
        if (f10 < f11) {
            Companion companion = Companion;
            float[] xyPrimaries = companion.xyPrimaries(primaries);
            this.primaries = xyPrimaries;
            if (fArr == null) {
                this.transform = companion.computeXYZMatrix(xyPrimaries, whitePoint);
            } else if (fArr.length == 9) {
                this.transform = fArr;
            } else {
                throw new IllegalArgumentException("Transform must have 9 entries! Has " + fArr.length);
            }
            this.inverseTransform = ColorSpaceKt.inverse3x3(this.transform);
            this.isWideGamut = companion.isWideGamut(xyPrimaries, f10, f11);
            this.isSrgb = companion.isSrgb(xyPrimaries, whitePoint, oetf, eotf, f10, f11, i10);
            return;
        }
        throw new IllegalArgumentException("Invalid range: min=" + f10 + ", max=" + f11 + "; min must be strictly < max");
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(Rgb.class), Reflection.getOrCreateKotlinClass(obj.getClass())) || !super.equals(obj)) {
            return false;
        }
        Rgb rgb = (Rgb) obj;
        if (Float.compare(rgb.min, this.min) != 0 || Float.compare(rgb.max, this.max) != 0 || !Intrinsics.areEqual(this.whitePoint, rgb.whitePoint) || !Arrays.equals(this.primaries, rgb.primaries)) {
            return false;
        }
        TransferParameters transferParameters = this.transferParameters;
        if (transferParameters != null) {
            return Intrinsics.areEqual(transferParameters, rgb.transferParameters);
        }
        if (rgb.transferParameters == null) {
            return true;
        }
        if (!Intrinsics.areEqual(this.oetfOrig, rgb.oetfOrig)) {
            return false;
        }
        return Intrinsics.areEqual(this.eotfOrig, rgb.eotfOrig);
    }

    @NotNull
    public final float[] fromLinear(float f10, float f11, float f12) {
        return fromLinear(new float[]{f10, f11, f12});
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] fromXyz(@NotNull float[] v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        ColorSpaceKt.mul3x3Float3(this.inverseTransform, v10);
        v10[0] = (float) this.oetf.invoke(Double.valueOf(v10[0])).doubleValue();
        v10[1] = (float) this.oetf.invoke(Double.valueOf(v10[1])).doubleValue();
        v10[2] = (float) this.oetf.invoke(Double.valueOf(v10[2])).doubleValue();
        return v10;
    }

    @NotNull
    public final Function1<Double, Double> getEotf() {
        return this.eotf;
    }

    @NotNull
    public final Function1<Double, Double> getEotfOrig$ui_graphics_release() {
        return this.eotfOrig;
    }

    @NotNull
    public final float[] getInverseTransform() {
        float[] fArr = this.inverseTransform;
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        return copyOf;
    }

    @NotNull
    public final float[] getInverseTransform$ui_graphics_release() {
        return this.inverseTransform;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMaxValue(int i10) {
        return this.max;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMinValue(int i10) {
        return this.min;
    }

    @NotNull
    public final Function1<Double, Double> getOetf() {
        return this.oetf;
    }

    @NotNull
    public final Function1<Double, Double> getOetfOrig$ui_graphics_release() {
        return this.oetfOrig;
    }

    @NotNull
    public final float[] getPrimaries() {
        float[] fArr = this.primaries;
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        return copyOf;
    }

    @NotNull
    public final float[] getPrimaries$ui_graphics_release() {
        return this.primaries;
    }

    @Nullable
    public final TransferParameters getTransferParameters() {
        return this.transferParameters;
    }

    @NotNull
    public final float[] getTransform() {
        float[] fArr = this.transform;
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        return copyOf;
    }

    @NotNull
    public final float[] getTransform$ui_graphics_release() {
        return this.transform;
    }

    @NotNull
    public final WhitePoint getWhitePoint() {
        return this.whitePoint;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public int hashCode() {
        int floatToIntBits;
        int floatToIntBits2;
        int hashCode = ((((super.hashCode() * 31) + this.whitePoint.hashCode()) * 31) + Arrays.hashCode(this.primaries)) * 31;
        float f10 = this.min;
        int i10 = 0;
        if (f10 == 0.0f) {
            floatToIntBits = 0;
        } else {
            floatToIntBits = Float.floatToIntBits(f10);
        }
        int i11 = (hashCode + floatToIntBits) * 31;
        float f11 = this.max;
        if (f11 == 0.0f) {
            floatToIntBits2 = 0;
        } else {
            floatToIntBits2 = Float.floatToIntBits(f11);
        }
        int i12 = (i11 + floatToIntBits2) * 31;
        TransferParameters transferParameters = this.transferParameters;
        if (transferParameters != null) {
            i10 = transferParameters.hashCode();
        }
        int i13 = i12 + i10;
        if (this.transferParameters == null) {
            return (((i13 * 31) + this.oetfOrig.hashCode()) * 31) + this.eotfOrig.hashCode();
        }
        return i13;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean isSrgb() {
        return this.isSrgb;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean isWideGamut() {
        return this.isWideGamut;
    }

    @NotNull
    public final float[] toLinear(float f10, float f11, float f12) {
        return toLinear(new float[]{f10, f11, f12});
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] toXyz(@NotNull float[] v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        v10[0] = (float) this.eotf.invoke(Double.valueOf(v10[0])).doubleValue();
        v10[1] = (float) this.eotf.invoke(Double.valueOf(v10[1])).doubleValue();
        v10[2] = (float) this.eotf.invoke(Double.valueOf(v10[2])).doubleValue();
        return ColorSpaceKt.mul3x3Float3(this.transform, v10);
    }

    @NotNull
    public final float[] fromLinear(@NotNull float[] v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        v10[0] = (float) this.oetf.invoke(Double.valueOf(v10[0])).doubleValue();
        v10[1] = (float) this.oetf.invoke(Double.valueOf(v10[1])).doubleValue();
        v10[2] = (float) this.oetf.invoke(Double.valueOf(v10[2])).doubleValue();
        return v10;
    }

    @NotNull
    public final float[] getInverseTransform(@NotNull float[] inverseTransform) {
        Intrinsics.checkNotNullParameter(inverseTransform, "inverseTransform");
        return n.r(this.inverseTransform, inverseTransform, 0, 0, 0, 14, null);
    }

    @NotNull
    public final float[] getPrimaries(@NotNull float[] primaries) {
        Intrinsics.checkNotNullParameter(primaries, "primaries");
        return n.r(this.primaries, primaries, 0, 0, 0, 14, null);
    }

    @NotNull
    public final float[] getTransform(@NotNull float[] transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        return n.r(this.transform, transform, 0, 0, 0, 14, null);
    }

    @NotNull
    public final float[] toLinear(@NotNull float[] v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        v10[0] = (float) this.eotf.invoke(Double.valueOf(v10[0])).doubleValue();
        v10[1] = (float) this.eotf.invoke(Double.valueOf(v10[1])).doubleValue();
        v10[2] = (float) this.eotf.invoke(Double.valueOf(v10[2])).doubleValue();
        return v10;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Rgb(@org.jetbrains.annotations.NotNull java.lang.String r14, @org.jetbrains.annotations.NotNull float[] r15, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super java.lang.Double, java.lang.Double> r16, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super java.lang.Double, java.lang.Double> r17) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r1 = "name"
            r3 = r14
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r1)
            java.lang.String r1 = "toXYZ"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r1)
            java.lang.String r1 = "oetf"
            r7 = r16
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r1)
            java.lang.String r1 = "eotf"
            r8 = r17
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r1)
            androidx.compose.ui.graphics.colorspace.Rgb$Companion r1 = androidx.compose.ui.graphics.colorspace.Rgb.Companion
            float[] r4 = r1.computePrimaries$ui_graphics_release(r15)
            androidx.compose.ui.graphics.colorspace.WhitePoint r5 = androidx.compose.ui.graphics.colorspace.Rgb.Companion.access$computeWhitePoint(r1, r15)
            r11 = 0
            r12 = -1
            r6 = 0
            r9 = 0
            r10 = 1065353216(0x3f800000, float:1.0)
            r2 = r13
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Rgb.<init>(java.lang.String, float[], kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(@NotNull String name, @NotNull float[] primaries, @NotNull WhitePoint whitePoint, @NotNull Function1<? super Double, Double> oetf, @NotNull Function1<? super Double, Double> eotf, float f10, float f11) {
        this(name, primaries, whitePoint, null, oetf, eotf, f10, f11, null, -1);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(primaries, "primaries");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
        Intrinsics.checkNotNullParameter(oetf, "oetf");
        Intrinsics.checkNotNullParameter(eotf, "eotf");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Rgb(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull float[] r9, @org.jetbrains.annotations.NotNull androidx.compose.ui.graphics.colorspace.TransferParameters r10) {
        /*
            r7 = this;
            java.lang.String r0 = "name"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "toXYZ"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "function"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            androidx.compose.ui.graphics.colorspace.Rgb$Companion r0 = androidx.compose.ui.graphics.colorspace.Rgb.Companion
            float[] r3 = r0.computePrimaries$ui_graphics_release(r9)
            androidx.compose.ui.graphics.colorspace.WhitePoint r4 = androidx.compose.ui.graphics.colorspace.Rgb.Companion.access$computeWhitePoint(r0, r9)
            r6 = -1
            r1 = r7
            r2 = r8
            r5 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Rgb.<init>(java.lang.String, float[], androidx.compose.ui.graphics.colorspace.TransferParameters):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(@NotNull String name, @NotNull float[] primaries, @NotNull WhitePoint whitePoint, @NotNull TransferParameters function) {
        this(name, primaries, whitePoint, function, -1);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(primaries, "primaries");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
        Intrinsics.checkNotNullParameter(function, "function");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(@NotNull String name, @NotNull float[] primaries, @NotNull WhitePoint whitePoint, @NotNull final TransferParameters function, int i10) {
        this(name, primaries, whitePoint, null, (function.getE() == 0.0d && function.getF() == 0.0d) ? new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Double invoke(Double d10) {
                return invoke(d10.doubleValue());
            }

            @NotNull
            public final Double invoke(double d10) {
                return Double.valueOf(ColorSpaceKt.rcpResponse(d10, TransferParameters.this.getA(), TransferParameters.this.getB(), TransferParameters.this.getC(), TransferParameters.this.getD(), TransferParameters.this.getGamma()));
            }
        } : new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Double invoke(Double d10) {
                return invoke(d10.doubleValue());
            }

            @NotNull
            public final Double invoke(double d10) {
                return Double.valueOf(ColorSpaceKt.rcpResponse(d10, TransferParameters.this.getA(), TransferParameters.this.getB(), TransferParameters.this.getC(), TransferParameters.this.getD(), TransferParameters.this.getE(), TransferParameters.this.getF(), TransferParameters.this.getGamma()));
            }
        }, (function.getE() == 0.0d && function.getF() == 0.0d) ? new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb.3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Double invoke(Double d10) {
                return invoke(d10.doubleValue());
            }

            @NotNull
            public final Double invoke(double d10) {
                return Double.valueOf(ColorSpaceKt.response(d10, TransferParameters.this.getA(), TransferParameters.this.getB(), TransferParameters.this.getC(), TransferParameters.this.getD(), TransferParameters.this.getGamma()));
            }
        } : new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb.4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Double invoke(Double d10) {
                return invoke(d10.doubleValue());
            }

            @NotNull
            public final Double invoke(double d10) {
                return Double.valueOf(ColorSpaceKt.response(d10, TransferParameters.this.getA(), TransferParameters.this.getB(), TransferParameters.this.getC(), TransferParameters.this.getD(), TransferParameters.this.getE(), TransferParameters.this.getF(), TransferParameters.this.getGamma()));
            }
        }, 0.0f, 1.0f, function, i10);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(primaries, "primaries");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
        Intrinsics.checkNotNullParameter(function, "function");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Rgb(@org.jetbrains.annotations.NotNull java.lang.String r11, @org.jetbrains.annotations.NotNull float[] r12, double r13) {
        /*
            r10 = this;
            java.lang.String r0 = "name"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "toXYZ"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            androidx.compose.ui.graphics.colorspace.Rgb$Companion r0 = androidx.compose.ui.graphics.colorspace.Rgb.Companion
            float[] r3 = r0.computePrimaries$ui_graphics_release(r12)
            androidx.compose.ui.graphics.colorspace.WhitePoint r4 = androidx.compose.ui.graphics.colorspace.Rgb.Companion.access$computeWhitePoint(r0, r12)
            r8 = 1065353216(0x3f800000, float:1.0)
            r9 = -1
            r7 = 0
            r1 = r10
            r2 = r11
            r5 = r13
            r1.<init>(r2, r3, r4, r5, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Rgb.<init>(java.lang.String, float[], double):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(@NotNull String name, @NotNull float[] primaries, @NotNull WhitePoint whitePoint, double d10) {
        this(name, primaries, whitePoint, d10, 0.0f, 1.0f, -1);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(primaries, "primaries");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Rgb(@org.jetbrains.annotations.NotNull java.lang.String r23, @org.jetbrains.annotations.NotNull float[] r24, @org.jetbrains.annotations.NotNull androidx.compose.ui.graphics.colorspace.WhitePoint r25, final double r26, float r28, float r29, int r30) {
        /*
            r22 = this;
            r1 = r26
            java.lang.String r0 = "name"
            r13 = r23
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.lang.String r0 = "primaries"
            r14 = r24
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            java.lang.String r0 = "whitePoint"
            r11 = r25
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            r3 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r0 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r0 != 0) goto L22
            kotlin.jvm.functions.Function1<java.lang.Double, java.lang.Double> r3 = androidx.compose.ui.graphics.colorspace.Rgb.DoubleIdentity
        L1f:
            r17 = r3
            goto L28
        L22:
            androidx.compose.ui.graphics.colorspace.Rgb$5 r3 = new androidx.compose.ui.graphics.colorspace.Rgb$5
            r3.<init>()
            goto L1f
        L28:
            if (r0 != 0) goto L2f
            kotlin.jvm.functions.Function1<java.lang.Double, java.lang.Double> r0 = androidx.compose.ui.graphics.colorspace.Rgb.DoubleIdentity
        L2c:
            r18 = r0
            goto L35
        L2f:
            androidx.compose.ui.graphics.colorspace.Rgb$6 r0 = new androidx.compose.ui.graphics.colorspace.Rgb$6
            r0.<init>()
            goto L2c
        L35:
            androidx.compose.ui.graphics.colorspace.TransferParameters r19 = new androidx.compose.ui.graphics.colorspace.TransferParameters
            r0 = r19
            r15 = 96
            r16 = 0
            r3 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r5 = 0
            r7 = 0
            r9 = 0
            r20 = 0
            r11 = r20
            r13 = r20
            r1 = r26
            r0.<init>(r1, r3, r5, r7, r9, r11, r13, r15, r16)
            r5 = 0
            r1 = r22
            r2 = r23
            r3 = r24
            r4 = r25
            r6 = r17
            r7 = r18
            r8 = r28
            r9 = r29
            r10 = r19
            r11 = r30
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Rgb.<init>(java.lang.String, float[], androidx.compose.ui.graphics.colorspace.WhitePoint, double, float, float, int):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(@NotNull Rgb colorSpace, @NotNull float[] transform, @NotNull WhitePoint whitePoint) {
        this(colorSpace.getName(), colorSpace.primaries, whitePoint, transform, colorSpace.oetfOrig, colorSpace.eotfOrig, colorSpace.min, colorSpace.max, colorSpace.transferParameters, -1);
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        Intrinsics.checkNotNullParameter(transform, "transform");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
    }
}
