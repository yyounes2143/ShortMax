package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dp.kt */
@Metadata
/* loaded from: classes.dex */
public final class DpKt {
    @Stable
    /* renamed from: DpOffset-YgX7TsA  reason: not valid java name */
    public static final long m4070DpOffsetYgX7TsA(float f10, float f11) {
        return DpOffset.m4105constructorimpl((Float.floatToIntBits(f11) & 4294967295L) | (Float.floatToIntBits(f10) << 32));
    }

    @Stable
    /* renamed from: DpSize-YgX7TsA  reason: not valid java name */
    public static final long m4071DpSizeYgX7TsA(float f10, float f11) {
        return DpSize.m4138constructorimpl((Float.floatToIntBits(f11) & 4294967295L) | (Float.floatToIntBits(f10) << 32));
    }

    @Stable
    /* renamed from: coerceAtLeast-YgX7TsA  reason: not valid java name */
    public static final float m4072coerceAtLeastYgX7TsA(float f10, float f11) {
        return Dp.m4049constructorimpl(e.d(f10, f11));
    }

    @Stable
    /* renamed from: coerceAtMost-YgX7TsA  reason: not valid java name */
    public static final float m4073coerceAtMostYgX7TsA(float f10, float f11) {
        return Dp.m4049constructorimpl(e.i(f10, f11));
    }

    @Stable
    /* renamed from: coerceIn-2z7ARbQ  reason: not valid java name */
    public static final float m4074coerceIn2z7ARbQ(float f10, float f11, float f12) {
        return Dp.m4049constructorimpl(e.m(f10, f11, f12));
    }

    /* renamed from: getCenter-EaSLcWc  reason: not valid java name */
    public static final long m4075getCenterEaSLcWc(long j10) {
        return m4070DpOffsetYgX7TsA(Dp.m4049constructorimpl(DpSize.m4147getWidthD9Ej5fM(j10) / 2.0f), Dp.m4049constructorimpl(DpSize.m4145getHeightD9Ej5fM(j10) / 2.0f));
    }

    public static final float getDp(int i10) {
        return Dp.m4049constructorimpl(i10);
    }

    @Stable
    public static /* synthetic */ void getDp$annotations(double d10) {
    }

    public static final float getHeight(@NotNull DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return Dp.m4049constructorimpl(dpRect.m4131getBottomD9Ej5fM() - dpRect.m4134getTopD9Ej5fM());
    }

    public static final long getSize(@NotNull DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return m4071DpSizeYgX7TsA(Dp.m4049constructorimpl(dpRect.m4133getRightD9Ej5fM() - dpRect.m4132getLeftD9Ej5fM()), Dp.m4049constructorimpl(dpRect.m4131getBottomD9Ej5fM() - dpRect.m4134getTopD9Ej5fM()));
    }

    public static final float getWidth(@NotNull DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return Dp.m4049constructorimpl(dpRect.m4133getRightD9Ej5fM() - dpRect.m4132getLeftD9Ej5fM());
    }

    /* renamed from: isFinite-0680j_4  reason: not valid java name */
    public static final boolean m4077isFinite0680j_4(float f10) {
        boolean z10;
        if (f10 == Float.POSITIVE_INFINITY) {
            z10 = true;
        } else {
            z10 = false;
        }
        return !z10;
    }

    /* renamed from: isSpecified-0680j_4  reason: not valid java name */
    public static final boolean m4079isSpecified0680j_4(float f10) {
        return !Float.isNaN(f10);
    }

    /* renamed from: isSpecified-EaSLcWc  reason: not valid java name */
    public static final boolean m4081isSpecifiedEaSLcWc(long j10) {
        if (j10 != DpSize.Companion.m4156getUnspecifiedMYxV2XQ()) {
            return true;
        }
        return false;
    }

    /* renamed from: isSpecified-jo-Fl9I  reason: not valid java name */
    public static final boolean m4083isSpecifiedjoFl9I(long j10) {
        if (j10 != DpOffset.Companion.m4119getUnspecifiedRKDOV3M()) {
            return true;
        }
        return false;
    }

    /* renamed from: isUnspecified-0680j_4  reason: not valid java name */
    public static final boolean m4085isUnspecified0680j_4(float f10) {
        return Float.isNaN(f10);
    }

    /* renamed from: isUnspecified-EaSLcWc  reason: not valid java name */
    public static final boolean m4087isUnspecifiedEaSLcWc(long j10) {
        if (j10 == DpSize.Companion.m4156getUnspecifiedMYxV2XQ()) {
            return true;
        }
        return false;
    }

    /* renamed from: isUnspecified-jo-Fl9I  reason: not valid java name */
    public static final boolean m4089isUnspecifiedjoFl9I(long j10) {
        if (j10 == DpOffset.Companion.m4119getUnspecifiedRKDOV3M()) {
            return true;
        }
        return false;
    }

    @Stable
    /* renamed from: lerp-IDex15A  reason: not valid java name */
    public static final long m4091lerpIDex15A(long j10, long j11, float f10) {
        return m4071DpSizeYgX7TsA(m4092lerpMdfbLM(DpSize.m4147getWidthD9Ej5fM(j10), DpSize.m4147getWidthD9Ej5fM(j11), f10), m4092lerpMdfbLM(DpSize.m4145getHeightD9Ej5fM(j10), DpSize.m4145getHeightD9Ej5fM(j11), f10));
    }

    @Stable
    /* renamed from: lerp-Md-fbLM  reason: not valid java name */
    public static final float m4092lerpMdfbLM(float f10, float f11, float f12) {
        return Dp.m4049constructorimpl(MathHelpersKt.lerp(f10, f11, f12));
    }

    @Stable
    /* renamed from: lerp-xhh869w  reason: not valid java name */
    public static final long m4093lerpxhh869w(long j10, long j11, float f10) {
        return m4070DpOffsetYgX7TsA(m4092lerpMdfbLM(DpOffset.m4110getXD9Ej5fM(j10), DpOffset.m4110getXD9Ej5fM(j11), f10), m4092lerpMdfbLM(DpOffset.m4112getYD9Ej5fM(j10), DpOffset.m4112getYD9Ej5fM(j11), f10));
    }

    @Stable
    /* renamed from: max-YgX7TsA  reason: not valid java name */
    public static final float m4094maxYgX7TsA(float f10, float f11) {
        return Dp.m4049constructorimpl(Math.max(f10, f11));
    }

    @Stable
    /* renamed from: min-YgX7TsA  reason: not valid java name */
    public static final float m4095minYgX7TsA(float f10, float f11) {
        return Dp.m4049constructorimpl(Math.min(f10, f11));
    }

    /* renamed from: takeOrElse-D5KLDUw  reason: not valid java name */
    public static final float m4096takeOrElseD5KLDUw(float f10, @NotNull Function0<Dp> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (Float.isNaN(f10)) {
            return block.invoke().m4063unboximpl();
        }
        return f10;
    }

    /* renamed from: takeOrElse-gVKV90s  reason: not valid java name */
    public static final long m4097takeOrElsegVKV90s(long j10, @NotNull Function0<DpOffset> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (j10 == DpOffset.Companion.m4119getUnspecifiedRKDOV3M()) {
            return block.invoke().m4118unboximpl();
        }
        return j10;
    }

    /* renamed from: takeOrElse-itqla9I  reason: not valid java name */
    public static final long m4098takeOrElseitqla9I(long j10, @NotNull Function0<DpSize> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (j10 == DpSize.Companion.m4156getUnspecifiedMYxV2XQ()) {
            return block.invoke().m4155unboximpl();
        }
        return j10;
    }

    @Stable
    /* renamed from: times-3ABfNKs  reason: not valid java name */
    public static final float m4100times3ABfNKs(float f10, float f11) {
        return Dp.m4049constructorimpl(f10 * f11);
    }

    @Stable
    /* renamed from: times-6HolHcs  reason: not valid java name */
    public static final long m4103times6HolHcs(int i10, long j10) {
        return DpSize.m4153timesGh9hcWk(j10, i10);
    }

    public static final float getDp(double d10) {
        return Dp.m4049constructorimpl((float) d10);
    }

    @Stable
    public static /* synthetic */ void getDp$annotations(float f10) {
    }

    @Stable
    /* renamed from: times-3ABfNKs  reason: not valid java name */
    public static final float m4099times3ABfNKs(double d10, float f10) {
        return Dp.m4049constructorimpl(((float) d10) * f10);
    }

    @Stable
    /* renamed from: times-6HolHcs  reason: not valid java name */
    public static final long m4102times6HolHcs(float f10, long j10) {
        return DpSize.m4152timesGh9hcWk(j10, f10);
    }

    public static final float getDp(float f10) {
        return Dp.m4049constructorimpl(f10);
    }

    @Stable
    public static /* synthetic */ void getDp$annotations(int i10) {
    }

    @Stable
    /* renamed from: times-3ABfNKs  reason: not valid java name */
    public static final float m4101times3ABfNKs(int i10, float f10) {
        return Dp.m4049constructorimpl(i10 * f10);
    }

    @Stable
    /* renamed from: getCenter-EaSLcWc$annotations  reason: not valid java name */
    public static /* synthetic */ void m4076getCenterEaSLcWc$annotations(long j10) {
    }

    @Stable
    public static /* synthetic */ void getHeight$annotations(DpRect dpRect) {
    }

    @Stable
    public static /* synthetic */ void getSize$annotations(DpRect dpRect) {
    }

    @Stable
    public static /* synthetic */ void getWidth$annotations(DpRect dpRect) {
    }

    @Stable
    /* renamed from: isFinite-0680j_4$annotations  reason: not valid java name */
    public static /* synthetic */ void m4078isFinite0680j_4$annotations(float f10) {
    }

    @Stable
    /* renamed from: isSpecified-0680j_4$annotations  reason: not valid java name */
    public static /* synthetic */ void m4080isSpecified0680j_4$annotations(float f10) {
    }

    @Stable
    /* renamed from: isSpecified-EaSLcWc$annotations  reason: not valid java name */
    public static /* synthetic */ void m4082isSpecifiedEaSLcWc$annotations(long j10) {
    }

    @Stable
    /* renamed from: isSpecified-jo-Fl9I$annotations  reason: not valid java name */
    public static /* synthetic */ void m4084isSpecifiedjoFl9I$annotations(long j10) {
    }

    @Stable
    /* renamed from: isUnspecified-0680j_4$annotations  reason: not valid java name */
    public static /* synthetic */ void m4086isUnspecified0680j_4$annotations(float f10) {
    }

    @Stable
    /* renamed from: isUnspecified-EaSLcWc$annotations  reason: not valid java name */
    public static /* synthetic */ void m4088isUnspecifiedEaSLcWc$annotations(long j10) {
    }

    @Stable
    /* renamed from: isUnspecified-jo-Fl9I$annotations  reason: not valid java name */
    public static /* synthetic */ void m4090isUnspecifiedjoFl9I$annotations(long j10) {
    }
}
