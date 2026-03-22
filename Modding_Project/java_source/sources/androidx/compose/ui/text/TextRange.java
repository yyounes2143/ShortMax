package androidx.compose.ui.text;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextRange.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TextRange {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = TextRangeKt.TextRange(0);
    private final long packedValue;

    /* compiled from: TextRange.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getZero-d9O1mEE  reason: not valid java name */
        public final long m3702getZerod9O1mEE() {
            return TextRange.Zero;
        }

        private Companion() {
        }
    }

    private /* synthetic */ TextRange(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ TextRange m3685boximpl(long j10) {
        return new TextRange(j10);
    }

    /* renamed from: contains-5zc-tL8  reason: not valid java name */
    public static final boolean m3687contains5zctL8(long j10, long j11) {
        if (m3695getMinimpl(j10) <= m3695getMinimpl(j11) && m3694getMaximpl(j11) <= m3694getMaximpl(j10)) {
            return true;
        }
        return false;
    }

    /* renamed from: contains-impl  reason: not valid java name */
    public static final boolean m3688containsimpl(long j10, int i10) {
        int m3695getMinimpl = m3695getMinimpl(j10);
        if (i10 >= m3694getMaximpl(j10) || m3695getMinimpl > i10) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3689equalsimpl(long j10, Object obj) {
        if (!(obj instanceof TextRange) || j10 != ((TextRange) obj).m3701unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3690equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getCollapsed-impl  reason: not valid java name */
    public static final boolean m3691getCollapsedimpl(long j10) {
        if (m3697getStartimpl(j10) == m3692getEndimpl(j10)) {
            return true;
        }
        return false;
    }

    /* renamed from: getEnd-impl  reason: not valid java name */
    public static final int m3692getEndimpl(long j10) {
        return (int) (j10 & 4294967295L);
    }

    /* renamed from: getLength-impl  reason: not valid java name */
    public static final int m3693getLengthimpl(long j10) {
        return m3694getMaximpl(j10) - m3695getMinimpl(j10);
    }

    /* renamed from: getMax-impl  reason: not valid java name */
    public static final int m3694getMaximpl(long j10) {
        if (m3697getStartimpl(j10) > m3692getEndimpl(j10)) {
            return m3697getStartimpl(j10);
        }
        return m3692getEndimpl(j10);
    }

    /* renamed from: getMin-impl  reason: not valid java name */
    public static final int m3695getMinimpl(long j10) {
        if (m3697getStartimpl(j10) > m3692getEndimpl(j10)) {
            return m3692getEndimpl(j10);
        }
        return m3697getStartimpl(j10);
    }

    /* renamed from: getReversed-impl  reason: not valid java name */
    public static final boolean m3696getReversedimpl(long j10) {
        if (m3697getStartimpl(j10) > m3692getEndimpl(j10)) {
            return true;
        }
        return false;
    }

    /* renamed from: getStart-impl  reason: not valid java name */
    public static final int m3697getStartimpl(long j10) {
        return (int) (j10 >> 32);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3698hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    /* renamed from: intersects-5zc-tL8  reason: not valid java name */
    public static final boolean m3699intersects5zctL8(long j10, long j11) {
        if (m3695getMinimpl(j10) < m3694getMaximpl(j11) && m3695getMinimpl(j11) < m3694getMaximpl(j10)) {
            return true;
        }
        return false;
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3700toStringimpl(long j10) {
        return "TextRange(" + m3697getStartimpl(j10) + ", " + m3692getEndimpl(j10) + ')';
    }

    public boolean equals(Object obj) {
        return m3689equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m3698hashCodeimpl(this.packedValue);
    }

    @NotNull
    public String toString() {
        return m3700toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m3701unboximpl() {
        return this.packedValue;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m3686constructorimpl(long j10) {
        return j10;
    }
}
