package androidx.compose.ui.geometry;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Offset.kt */
@Metadata
/* loaded from: classes.dex */
public final class OffsetKt {
    @Stable
    public static final long Offset(float f10, float f11) {
        return Offset.m1598constructorimpl((Float.floatToIntBits(f11) & 4294967295L) | (Float.floatToIntBits(f10) << 32));
    }

    /* renamed from: isFinite-k-4lQ0M  reason: not valid java name */
    public static final boolean m1623isFinitek4lQ0M(long j10) {
        float m1606getXimpl = Offset.m1606getXimpl(j10);
        if (!Float.isInfinite(m1606getXimpl) && !Float.isNaN(m1606getXimpl)) {
            float m1607getYimpl = Offset.m1607getYimpl(j10);
            if (!Float.isInfinite(m1607getYimpl) && !Float.isNaN(m1607getYimpl)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: isSpecified-k-4lQ0M  reason: not valid java name */
    public static final boolean m1625isSpecifiedk4lQ0M(long j10) {
        if (j10 != Offset.Companion.m1621getUnspecifiedF1C5BW0()) {
            return true;
        }
        return false;
    }

    /* renamed from: isUnspecified-k-4lQ0M  reason: not valid java name */
    public static final boolean m1627isUnspecifiedk4lQ0M(long j10) {
        if (j10 == Offset.Companion.m1621getUnspecifiedF1C5BW0()) {
            return true;
        }
        return false;
    }

    @Stable
    /* renamed from: lerp-Wko1d7g  reason: not valid java name */
    public static final long m1629lerpWko1d7g(long j10, long j11, float f10) {
        return Offset(MathHelpersKt.lerp(Offset.m1606getXimpl(j10), Offset.m1606getXimpl(j11), f10), MathHelpersKt.lerp(Offset.m1607getYimpl(j10), Offset.m1607getYimpl(j11), f10));
    }

    /* renamed from: takeOrElse-3MmeM6k  reason: not valid java name */
    public static final long m1630takeOrElse3MmeM6k(long j10, @NotNull Function0<Offset> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (!m1625isSpecifiedk4lQ0M(j10)) {
            return block.invoke().m1616unboximpl();
        }
        return j10;
    }

    @Stable
    /* renamed from: isFinite-k-4lQ0M$annotations  reason: not valid java name */
    public static /* synthetic */ void m1624isFinitek4lQ0M$annotations(long j10) {
    }

    @Stable
    /* renamed from: isSpecified-k-4lQ0M$annotations  reason: not valid java name */
    public static /* synthetic */ void m1626isSpecifiedk4lQ0M$annotations(long j10) {
    }

    @Stable
    /* renamed from: isUnspecified-k-4lQ0M$annotations  reason: not valid java name */
    public static /* synthetic */ void m1628isUnspecifiedk4lQ0M$annotations(long j10) {
    }
}
