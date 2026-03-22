package androidx.compose.ui.graphics.colorspace;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: Lab.kt */
@Metadata
/* loaded from: classes.dex */
public final class Lab extends ColorSpace {
    private static final float A = 0.008856452f;
    private static final float B = 7.787037f;
    private static final float C = 0.13793103f;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float D = 0.20689656f;

    /* compiled from: Lab.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Lab(@NotNull String name, int i10) {
        super(name, ColorModel.Companion.m2206getLabxdoWZVw(), i10, null);
        Intrinsics.checkNotNullParameter(name, "name");
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] fromXyz(@NotNull float[] v10) {
        float f10;
        float f11;
        float f12;
        Intrinsics.checkNotNullParameter(v10, "v");
        float f13 = v10[0];
        Illuminant illuminant = Illuminant.INSTANCE;
        float f14 = f13 / illuminant.getD50Xyz$ui_graphics_release()[0];
        float f15 = v10[1] / illuminant.getD50Xyz$ui_graphics_release()[1];
        float f16 = v10[2] / illuminant.getD50Xyz$ui_graphics_release()[2];
        if (f14 > A) {
            f10 = (float) Math.pow(f14, 0.33333334f);
        } else {
            f10 = (f14 * B) + C;
        }
        if (f15 > A) {
            f11 = (float) Math.pow(f15, 0.33333334f);
        } else {
            f11 = (f15 * B) + C;
        }
        if (f16 > A) {
            f12 = (float) Math.pow(f16, 0.33333334f);
        } else {
            f12 = (f16 * B) + C;
        }
        v10[0] = e.m((116.0f * f11) - 16.0f, 0.0f, 100.0f);
        v10[1] = e.m((f10 - f11) * 500.0f, -128.0f, 128.0f);
        v10[2] = e.m((f11 - f12) * 200.0f, -128.0f, 128.0f);
        return v10;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMaxValue(int i10) {
        if (i10 == 0) {
            return 100.0f;
        }
        return 128.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMinValue(int i10) {
        if (i10 == 0) {
            return 0.0f;
        }
        return -128.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean isWideGamut() {
        return true;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] toXyz(@NotNull float[] v10) {
        float f10;
        float f11;
        float f12;
        Intrinsics.checkNotNullParameter(v10, "v");
        v10[0] = e.m(v10[0], 0.0f, 100.0f);
        v10[1] = e.m(v10[1], -128.0f, 128.0f);
        float m10 = e.m(v10[2], -128.0f, 128.0f);
        v10[2] = m10;
        float f13 = (v10[0] + 16.0f) / 116.0f;
        float f14 = (v10[1] * 0.002f) + f13;
        float f15 = f13 - (m10 * 0.005f);
        if (f14 > D) {
            f10 = f14 * f14 * f14;
        } else {
            f10 = (f14 - C) * 0.12841855f;
        }
        if (f13 > D) {
            f11 = f13 * f13 * f13;
        } else {
            f11 = (f13 - C) * 0.12841855f;
        }
        if (f15 > D) {
            f12 = f15 * f15 * f15;
        } else {
            f12 = (f15 - C) * 0.12841855f;
        }
        Illuminant illuminant = Illuminant.INSTANCE;
        v10[0] = f10 * illuminant.getD50Xyz$ui_graphics_release()[0];
        v10[1] = f11 * illuminant.getD50Xyz$ui_graphics_release()[1];
        v10[2] = f12 * illuminant.getD50Xyz$ui_graphics_release()[2];
        return v10;
    }
}
