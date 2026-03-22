package androidx.compose.ui.geometry;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Size.kt */
@Metadata
/* loaded from: classes.dex */
public final class SizeKt {
    @Stable
    public static final long Size(float f10, float f11) {
        return Size.m1666constructorimpl((Float.floatToIntBits(f11) & 4294967295L) | (Float.floatToIntBits(f10) << 32));
    }

    /* renamed from: getCenter-uvyYCjk  reason: not valid java name */
    public static final long m1685getCenteruvyYCjk(long j10) {
        return OffsetKt.Offset(Size.m1675getWidthimpl(j10) / 2.0f, Size.m1672getHeightimpl(j10) / 2.0f);
    }

    /* renamed from: isSpecified-uvyYCjk  reason: not valid java name */
    public static final boolean m1687isSpecifieduvyYCjk(long j10) {
        if (j10 != Size.Companion.m1683getUnspecifiedNHjbRc()) {
            return true;
        }
        return false;
    }

    /* renamed from: isUnspecified-uvyYCjk  reason: not valid java name */
    public static final boolean m1689isUnspecifieduvyYCjk(long j10) {
        if (j10 == Size.Companion.m1683getUnspecifiedNHjbRc()) {
            return true;
        }
        return false;
    }

    @Stable
    /* renamed from: lerp-VgWVRYQ  reason: not valid java name */
    public static final long m1691lerpVgWVRYQ(long j10, long j11, float f10) {
        return Size(MathHelpersKt.lerp(Size.m1675getWidthimpl(j10), Size.m1675getWidthimpl(j11), f10), MathHelpersKt.lerp(Size.m1672getHeightimpl(j10), Size.m1672getHeightimpl(j11), f10));
    }

    /* renamed from: takeOrElse-TmRCtEA  reason: not valid java name */
    public static final long m1692takeOrElseTmRCtEA(long j10, @NotNull Function0<Size> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (j10 == Size.Companion.m1683getUnspecifiedNHjbRc()) {
            return block.invoke().m1680unboximpl();
        }
        return j10;
    }

    @Stable
    /* renamed from: times-d16Qtg0  reason: not valid java name */
    public static final long m1695timesd16Qtg0(int i10, long j10) {
        return Size.m1678times7Ah8Wj8(j10, i10);
    }

    @Stable
    @NotNull
    /* renamed from: toRect-uvyYCjk  reason: not valid java name */
    public static final Rect m1696toRectuvyYCjk(long j10) {
        return RectKt.m1646Recttz77jQw(Offset.Companion.m1622getZeroF1C5BW0(), j10);
    }

    @Stable
    /* renamed from: times-d16Qtg0  reason: not valid java name */
    public static final long m1693timesd16Qtg0(double d10, long j10) {
        return Size.m1678times7Ah8Wj8(j10, (float) d10);
    }

    @Stable
    /* renamed from: times-d16Qtg0  reason: not valid java name */
    public static final long m1694timesd16Qtg0(float f10, long j10) {
        return Size.m1678times7Ah8Wj8(j10, f10);
    }

    @Stable
    /* renamed from: getCenter-uvyYCjk$annotations  reason: not valid java name */
    public static /* synthetic */ void m1686getCenteruvyYCjk$annotations(long j10) {
    }

    @Stable
    /* renamed from: isSpecified-uvyYCjk$annotations  reason: not valid java name */
    public static /* synthetic */ void m1688isSpecifieduvyYCjk$annotations(long j10) {
    }

    @Stable
    /* renamed from: isUnspecified-uvyYCjk$annotations  reason: not valid java name */
    public static /* synthetic */ void m1690isUnspecifieduvyYCjk$annotations(long j10) {
    }
}
