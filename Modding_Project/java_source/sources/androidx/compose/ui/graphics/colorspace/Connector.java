package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.colorspace.ColorModel;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Connector.kt */
@Metadata
/* loaded from: classes.dex */
public class Connector {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final ColorSpace destination;
    private final int renderIntent;
    @NotNull
    private final ColorSpace source;
    @Nullable
    private final float[] transform;
    @NotNull
    private final ColorSpace transformDestination;
    @NotNull
    private final ColorSpace transformSource;

    /* compiled from: Connector.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: computeTransform-YBCOT_4  reason: not valid java name */
        public final float[] m2214computeTransformYBCOT_4(ColorSpace colorSpace, ColorSpace colorSpace2, int i10) {
            float[] d50Xyz$ui_graphics_release;
            float[] d50Xyz$ui_graphics_release2;
            if (!RenderIntent.m2219equalsimpl0(i10, RenderIntent.Companion.m2223getAbsoluteuksYyKA())) {
                return null;
            }
            long m2209getModelxdoWZVw = colorSpace.m2209getModelxdoWZVw();
            ColorModel.Companion companion = ColorModel.Companion;
            boolean m2200equalsimpl0 = ColorModel.m2200equalsimpl0(m2209getModelxdoWZVw, companion.m2207getRgbxdoWZVw());
            boolean m2200equalsimpl02 = ColorModel.m2200equalsimpl0(colorSpace2.m2209getModelxdoWZVw(), companion.m2207getRgbxdoWZVw());
            if (m2200equalsimpl0 && m2200equalsimpl02) {
                return null;
            }
            if (!m2200equalsimpl0 && !m2200equalsimpl02) {
                return null;
            }
            if (!m2200equalsimpl0) {
                colorSpace = colorSpace2;
            }
            Rgb rgb = (Rgb) colorSpace;
            if (m2200equalsimpl0) {
                d50Xyz$ui_graphics_release = rgb.getWhitePoint().toXyz$ui_graphics_release();
            } else {
                d50Xyz$ui_graphics_release = Illuminant.INSTANCE.getD50Xyz$ui_graphics_release();
            }
            if (m2200equalsimpl02) {
                d50Xyz$ui_graphics_release2 = rgb.getWhitePoint().toXyz$ui_graphics_release();
            } else {
                d50Xyz$ui_graphics_release2 = Illuminant.INSTANCE.getD50Xyz$ui_graphics_release();
            }
            return new float[]{d50Xyz$ui_graphics_release[0] / d50Xyz$ui_graphics_release2[0], d50Xyz$ui_graphics_release[1] / d50Xyz$ui_graphics_release2[1], d50Xyz$ui_graphics_release[2] / d50Xyz$ui_graphics_release2[2]};
        }

        @NotNull
        public final Connector identity$ui_graphics_release(@NotNull final ColorSpace source) {
            Intrinsics.checkNotNullParameter(source, "source");
            final int m2225getRelativeuksYyKA = RenderIntent.Companion.m2225getRelativeuksYyKA();
            return new Connector(source, m2225getRelativeuksYyKA) { // from class: androidx.compose.ui.graphics.colorspace.Connector$Companion$identity$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(source, source, m2225getRelativeuksYyKA, null);
                }

                @Override // androidx.compose.ui.graphics.colorspace.Connector
                @NotNull
                public float[] transform(@NotNull float[] v10) {
                    Intrinsics.checkNotNullParameter(v10, "v");
                    return v10;
                }
            };
        }

        private Companion() {
        }
    }

    /* compiled from: Connector.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class RgbConnector extends Connector {
        @NotNull
        private final Rgb mDestination;
        @NotNull
        private final Rgb mSource;
        @NotNull
        private final float[] mTransform;

        public /* synthetic */ RgbConnector(Rgb rgb, Rgb rgb2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(rgb, rgb2, i10);
        }

        /* renamed from: computeTransform-YBCOT_4  reason: not valid java name */
        private final float[] m2215computeTransformYBCOT_4(Rgb rgb, Rgb rgb2, int i10) {
            if (ColorSpaceKt.compare(rgb.getWhitePoint(), rgb2.getWhitePoint())) {
                return ColorSpaceKt.mul3x3(rgb2.getInverseTransform$ui_graphics_release(), rgb.getTransform$ui_graphics_release());
            }
            float[] transform$ui_graphics_release = rgb.getTransform$ui_graphics_release();
            float[] inverseTransform$ui_graphics_release = rgb2.getInverseTransform$ui_graphics_release();
            float[] xyz$ui_graphics_release = rgb.getWhitePoint().toXyz$ui_graphics_release();
            float[] xyz$ui_graphics_release2 = rgb2.getWhitePoint().toXyz$ui_graphics_release();
            WhitePoint whitePoint = rgb.getWhitePoint();
            Illuminant illuminant = Illuminant.INSTANCE;
            if (!ColorSpaceKt.compare(whitePoint, illuminant.getD50())) {
                float[] transform$ui_graphics_release2 = Adaptation.Companion.getBradford().getTransform$ui_graphics_release();
                float[] d50Xyz$ui_graphics_release = illuminant.getD50Xyz$ui_graphics_release();
                float[] copyOf = Arrays.copyOf(d50Xyz$ui_graphics_release, d50Xyz$ui_graphics_release.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
                transform$ui_graphics_release = ColorSpaceKt.mul3x3(ColorSpaceKt.chromaticAdaptation(transform$ui_graphics_release2, xyz$ui_graphics_release, copyOf), rgb.getTransform$ui_graphics_release());
            }
            if (!ColorSpaceKt.compare(rgb2.getWhitePoint(), illuminant.getD50())) {
                float[] transform$ui_graphics_release3 = Adaptation.Companion.getBradford().getTransform$ui_graphics_release();
                float[] d50Xyz$ui_graphics_release2 = illuminant.getD50Xyz$ui_graphics_release();
                float[] copyOf2 = Arrays.copyOf(d50Xyz$ui_graphics_release2, d50Xyz$ui_graphics_release2.length);
                Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, size)");
                inverseTransform$ui_graphics_release = ColorSpaceKt.inverse3x3(ColorSpaceKt.mul3x3(ColorSpaceKt.chromaticAdaptation(transform$ui_graphics_release3, xyz$ui_graphics_release2, copyOf2), rgb2.getTransform$ui_graphics_release()));
            }
            if (RenderIntent.m2219equalsimpl0(i10, RenderIntent.Companion.m2223getAbsoluteuksYyKA())) {
                transform$ui_graphics_release = ColorSpaceKt.mul3x3Diag(new float[]{xyz$ui_graphics_release[0] / xyz$ui_graphics_release2[0], xyz$ui_graphics_release[1] / xyz$ui_graphics_release2[1], xyz$ui_graphics_release[2] / xyz$ui_graphics_release2[2]}, transform$ui_graphics_release);
            }
            return ColorSpaceKt.mul3x3(inverseTransform$ui_graphics_release, transform$ui_graphics_release);
        }

        @Override // androidx.compose.ui.graphics.colorspace.Connector
        @NotNull
        public float[] transform(@NotNull float[] v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            v10[0] = (float) this.mSource.getEotf().invoke(Double.valueOf(v10[0])).doubleValue();
            v10[1] = (float) this.mSource.getEotf().invoke(Double.valueOf(v10[1])).doubleValue();
            v10[2] = (float) this.mSource.getEotf().invoke(Double.valueOf(v10[2])).doubleValue();
            ColorSpaceKt.mul3x3Float3(this.mTransform, v10);
            v10[0] = (float) this.mDestination.getOetf().invoke(Double.valueOf(v10[0])).doubleValue();
            v10[1] = (float) this.mDestination.getOetf().invoke(Double.valueOf(v10[1])).doubleValue();
            v10[2] = (float) this.mDestination.getOetf().invoke(Double.valueOf(v10[2])).doubleValue();
            return v10;
        }

        private RgbConnector(Rgb rgb, Rgb rgb2, int i10) {
            super(rgb, rgb2, rgb, rgb2, i10, null, null);
            this.mSource = rgb;
            this.mDestination = rgb2;
            this.mTransform = m2215computeTransformYBCOT_4(rgb, rgb2, i10);
        }
    }

    public /* synthetic */ Connector(ColorSpace colorSpace, ColorSpace colorSpace2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(colorSpace, colorSpace2, i10);
    }

    @NotNull
    public final ColorSpace getDestination() {
        return this.destination;
    }

    /* renamed from: getRenderIntent-uksYyKA  reason: not valid java name */
    public final int m2212getRenderIntentuksYyKA() {
        return this.renderIntent;
    }

    @NotNull
    public final ColorSpace getSource() {
        return this.source;
    }

    @NotNull
    public final float[] transform(float f10, float f11, float f12) {
        return transform(new float[]{f10, f11, f12});
    }

    public /* synthetic */ Connector(ColorSpace colorSpace, ColorSpace colorSpace2, ColorSpace colorSpace3, ColorSpace colorSpace4, int i10, float[] fArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(colorSpace, colorSpace2, colorSpace3, colorSpace4, i10, fArr);
    }

    @NotNull
    public float[] transform(@NotNull float[] v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        float[] xyz = this.transformSource.toXyz(v10);
        float[] fArr = this.transform;
        if (fArr != null) {
            xyz[0] = xyz[0] * fArr[0];
            xyz[1] = xyz[1] * fArr[1];
            xyz[2] = xyz[2] * fArr[2];
        }
        return this.transformDestination.fromXyz(xyz);
    }

    private Connector(ColorSpace colorSpace, ColorSpace colorSpace2, ColorSpace colorSpace3, ColorSpace colorSpace4, int i10, float[] fArr) {
        this.source = colorSpace;
        this.destination = colorSpace2;
        this.transformSource = colorSpace3;
        this.transformDestination = colorSpace4;
        this.renderIntent = i10;
        this.transform = fArr;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private Connector(androidx.compose.ui.graphics.colorspace.ColorSpace r13, androidx.compose.ui.graphics.colorspace.ColorSpace r14, int r15) {
        /*
            r12 = this;
            long r0 = r13.m2209getModelxdoWZVw()
            androidx.compose.ui.graphics.colorspace.ColorModel$Companion r2 = androidx.compose.ui.graphics.colorspace.ColorModel.Companion
            long r3 = r2.m2207getRgbxdoWZVw()
            boolean r0 = androidx.compose.ui.graphics.colorspace.ColorModel.m2200equalsimpl0(r0, r3)
            r1 = 2
            r3 = 0
            if (r0 == 0) goto L1e
            androidx.compose.ui.graphics.colorspace.Illuminant r0 = androidx.compose.ui.graphics.colorspace.Illuminant.INSTANCE
            androidx.compose.ui.graphics.colorspace.WhitePoint r0 = r0.getD50()
            androidx.compose.ui.graphics.colorspace.ColorSpace r0 = androidx.compose.ui.graphics.colorspace.ColorSpaceKt.adapt$default(r13, r0, r3, r1, r3)
            r7 = r0
            goto L1f
        L1e:
            r7 = r13
        L1f:
            long r4 = r14.m2209getModelxdoWZVw()
            long r8 = r2.m2207getRgbxdoWZVw()
            boolean r0 = androidx.compose.ui.graphics.colorspace.ColorModel.m2200equalsimpl0(r4, r8)
            if (r0 == 0) goto L39
            androidx.compose.ui.graphics.colorspace.Illuminant r0 = androidx.compose.ui.graphics.colorspace.Illuminant.INSTANCE
            androidx.compose.ui.graphics.colorspace.WhitePoint r0 = r0.getD50()
            androidx.compose.ui.graphics.colorspace.ColorSpace r0 = androidx.compose.ui.graphics.colorspace.ColorSpaceKt.adapt$default(r14, r0, r3, r1, r3)
            r8 = r0
            goto L3a
        L39:
            r8 = r14
        L3a:
            androidx.compose.ui.graphics.colorspace.Connector$Companion r0 = androidx.compose.ui.graphics.colorspace.Connector.Companion
            float[] r10 = androidx.compose.ui.graphics.colorspace.Connector.Companion.m2213access$computeTransformYBCOT_4(r0, r13, r14, r15)
            r11 = 0
            r4 = r12
            r5 = r13
            r6 = r14
            r9 = r15
            r4.<init>(r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Connector.<init>(androidx.compose.ui.graphics.colorspace.ColorSpace, androidx.compose.ui.graphics.colorspace.ColorSpace, int):void");
    }
}
