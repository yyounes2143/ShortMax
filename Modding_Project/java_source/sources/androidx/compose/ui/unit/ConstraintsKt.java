package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.ranges.e;
/* compiled from: Constraints.kt */
@Metadata
/* loaded from: classes.dex */
public final class ConstraintsKt {
    @Stable
    public static final long Constraints(int i10, int i11, int i12, int i13) {
        if (i11 >= i10) {
            if (i13 >= i12) {
                if (i10 >= 0 && i12 >= 0) {
                    return Constraints.Companion.m4012createConstraintsZbe2FdA$ui_unit_release(i10, i11, i12, i13);
                }
                throw new IllegalArgumentException(("minWidth(" + i10 + ") and minHeight(" + i12 + ") must be >= 0").toString());
            }
            throw new IllegalArgumentException(("maxHeight(" + i13 + ") must be >= than minHeight(" + i12 + ')').toString());
        }
        throw new IllegalArgumentException(("maxWidth(" + i11 + ") must be >= than minWidth(" + i10 + ')').toString());
    }

    public static /* synthetic */ long Constraints$default(int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = 0;
        }
        if ((i14 & 2) != 0) {
            i11 = Integer.MAX_VALUE;
        }
        if ((i14 & 4) != 0) {
            i12 = 0;
        }
        if ((i14 & 8) != 0) {
            i13 = Integer.MAX_VALUE;
        }
        return Constraints(i10, i11, i12, i13);
    }

    private static final int addMaxWithMinimum(int i10, int i11) {
        if (i10 != Integer.MAX_VALUE) {
            return e.e(i10 + i11, 0);
        }
        return i10;
    }

    @Stable
    /* renamed from: constrain-4WqzIAM  reason: not valid java name */
    public static final long m4016constrain4WqzIAM(long j10, long j11) {
        return IntSizeKt.IntSize(e.n(IntSize.m4209getWidthimpl(j11), Constraints.m4007getMinWidthimpl(j10), Constraints.m4005getMaxWidthimpl(j10)), e.n(IntSize.m4208getHeightimpl(j11), Constraints.m4006getMinHeightimpl(j10), Constraints.m4004getMaxHeightimpl(j10)));
    }

    /* renamed from: constrain-N9IONVI  reason: not valid java name */
    public static final long m4017constrainN9IONVI(long j10, long j11) {
        return Constraints(e.n(Constraints.m4007getMinWidthimpl(j11), Constraints.m4007getMinWidthimpl(j10), Constraints.m4005getMaxWidthimpl(j10)), e.n(Constraints.m4005getMaxWidthimpl(j11), Constraints.m4007getMinWidthimpl(j10), Constraints.m4005getMaxWidthimpl(j10)), e.n(Constraints.m4006getMinHeightimpl(j11), Constraints.m4006getMinHeightimpl(j10), Constraints.m4004getMaxHeightimpl(j10)), e.n(Constraints.m4004getMaxHeightimpl(j11), Constraints.m4006getMinHeightimpl(j10), Constraints.m4004getMaxHeightimpl(j10)));
    }

    @Stable
    /* renamed from: constrainHeight-K40F9xA  reason: not valid java name */
    public static final int m4018constrainHeightK40F9xA(long j10, int i10) {
        return e.n(i10, Constraints.m4006getMinHeightimpl(j10), Constraints.m4004getMaxHeightimpl(j10));
    }

    @Stable
    /* renamed from: constrainWidth-K40F9xA  reason: not valid java name */
    public static final int m4019constrainWidthK40F9xA(long j10, int i10) {
        return e.n(i10, Constraints.m4007getMinWidthimpl(j10), Constraints.m4005getMaxWidthimpl(j10));
    }

    @Stable
    /* renamed from: isSatisfiedBy-4WqzIAM  reason: not valid java name */
    public static final boolean m4020isSatisfiedBy4WqzIAM(long j10, long j11) {
        int m4007getMinWidthimpl = Constraints.m4007getMinWidthimpl(j10);
        int m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(j10);
        int m4209getWidthimpl = IntSize.m4209getWidthimpl(j11);
        if (m4007getMinWidthimpl <= m4209getWidthimpl && m4209getWidthimpl <= m4005getMaxWidthimpl) {
            int m4006getMinHeightimpl = Constraints.m4006getMinHeightimpl(j10);
            int m4004getMaxHeightimpl = Constraints.m4004getMaxHeightimpl(j10);
            int m4208getHeightimpl = IntSize.m4208getHeightimpl(j11);
            if (m4006getMinHeightimpl <= m4208getHeightimpl && m4208getHeightimpl <= m4004getMaxHeightimpl) {
                return true;
            }
        }
        return false;
    }

    @Stable
    /* renamed from: offset-NN6Ew-U  reason: not valid java name */
    public static final long m4021offsetNN6EwU(long j10, int i10, int i11) {
        return Constraints(e.e(Constraints.m4007getMinWidthimpl(j10) + i10, 0), addMaxWithMinimum(Constraints.m4005getMaxWidthimpl(j10), i10), e.e(Constraints.m4006getMinHeightimpl(j10) + i11, 0), addMaxWithMinimum(Constraints.m4004getMaxHeightimpl(j10), i11));
    }

    /* renamed from: offset-NN6Ew-U$default  reason: not valid java name */
    public static /* synthetic */ long m4022offsetNN6EwU$default(long j10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return m4021offsetNN6EwU(j10, i10, i11);
    }
}
