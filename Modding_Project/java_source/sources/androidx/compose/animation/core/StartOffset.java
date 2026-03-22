package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: AnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public final class StartOffset {
    private final long value;

    private /* synthetic */ StartOffset(long j10) {
        this.value = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ StartOffset m155boximpl(long j10) {
        return new StartOffset(j10);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    private static long m157constructorimpl(long j10) {
        return j10;
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ long m158constructorimpl$default(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i12 & 2) != 0) {
            i11 = StartOffsetType.Companion.m173getDelayEo1U57Q();
        }
        return m156constructorimpl(i10, i11);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m159equalsimpl(long j10, Object obj) {
        if (!(obj instanceof StartOffset) || j10 != ((StartOffset) obj).m165unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m160equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getOffsetMillis-impl  reason: not valid java name */
    public static final int m161getOffsetMillisimpl(long j10) {
        return Math.abs((int) j10);
    }

    /* renamed from: getOffsetType-Eo1U57Q  reason: not valid java name */
    public static final int m162getOffsetTypeEo1U57Q(long j10) {
        boolean z10;
        if (j10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return StartOffsetType.Companion.m174getFastForwardEo1U57Q();
        }
        if (!z10) {
            return StartOffsetType.Companion.m173getDelayEo1U57Q();
        }
        throw new NoWhenBranchMatchedException();
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m163hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m164toStringimpl(long j10) {
        return "StartOffset(value=" + j10 + ')';
    }

    public boolean equals(Object obj) {
        return m159equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m163hashCodeimpl(this.value);
    }

    public String toString() {
        return m164toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m165unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m156constructorimpl(int i10, int i11) {
        return m157constructorimpl(i10 * i11);
    }
}
