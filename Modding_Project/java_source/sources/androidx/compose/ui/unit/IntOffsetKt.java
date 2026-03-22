package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.util.MathHelpersKt;
import bt.a;
import kotlin.Metadata;
/* compiled from: IntOffset.kt */
@Metadata
/* loaded from: classes.dex */
public final class IntOffsetKt {
    @Stable
    public static final long IntOffset(int i10, int i11) {
        return IntOffset.m4161constructorimpl((i11 & 4294967295L) | (i10 << 32));
    }

    @Stable
    /* renamed from: lerp-81ZRxRo  reason: not valid java name */
    public static final long m4178lerp81ZRxRo(long j10, long j11, float f10) {
        return IntOffset(MathHelpersKt.lerp(IntOffset.m4167getXimpl(j10), IntOffset.m4167getXimpl(j11), f10), MathHelpersKt.lerp(IntOffset.m4168getYimpl(j10), IntOffset.m4168getYimpl(j11), f10));
    }

    @Stable
    /* renamed from: minus-Nv-tHpc  reason: not valid java name */
    public static final long m4179minusNvtHpc(long j10, long j11) {
        return OffsetKt.Offset(Offset.m1606getXimpl(j10) - IntOffset.m4167getXimpl(j11), Offset.m1607getYimpl(j10) - IntOffset.m4168getYimpl(j11));
    }

    @Stable
    /* renamed from: minus-oCl6YwE  reason: not valid java name */
    public static final long m4180minusoCl6YwE(long j10, long j11) {
        return OffsetKt.Offset(IntOffset.m4167getXimpl(j10) - Offset.m1606getXimpl(j11), IntOffset.m4168getYimpl(j10) - Offset.m1607getYimpl(j11));
    }

    @Stable
    /* renamed from: plus-Nv-tHpc  reason: not valid java name */
    public static final long m4181plusNvtHpc(long j10, long j11) {
        return OffsetKt.Offset(Offset.m1606getXimpl(j10) + IntOffset.m4167getXimpl(j11), Offset.m1607getYimpl(j10) + IntOffset.m4168getYimpl(j11));
    }

    @Stable
    /* renamed from: plus-oCl6YwE  reason: not valid java name */
    public static final long m4182plusoCl6YwE(long j10, long j11) {
        return OffsetKt.Offset(IntOffset.m4167getXimpl(j10) + Offset.m1606getXimpl(j11), IntOffset.m4168getYimpl(j10) + Offset.m1607getYimpl(j11));
    }

    @Stable
    /* renamed from: round-k-4lQ0M  reason: not valid java name */
    public static final long m4183roundk4lQ0M(long j10) {
        return IntOffset(a.c(Offset.m1606getXimpl(j10)), a.c(Offset.m1607getYimpl(j10)));
    }

    @Stable
    /* renamed from: toOffset--gyyYBs  reason: not valid java name */
    public static final long m4184toOffsetgyyYBs(long j10) {
        return OffsetKt.Offset(IntOffset.m4167getXimpl(j10), IntOffset.m4168getYimpl(j10));
    }
}
