package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntSize.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class IntSize {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m4204constructorimpl(0);
    private final long packedValue;

    /* compiled from: IntSize.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getZero-YbymL2g  reason: not valid java name */
        public final long m4214getZeroYbymL2g() {
            return IntSize.Zero;
        }

        private Companion() {
        }
    }

    private /* synthetic */ IntSize(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ IntSize m4201boximpl(long j10) {
        return new IntSize(j10);
    }

    @Stable
    /* renamed from: component1-impl  reason: not valid java name */
    public static final int m4202component1impl(long j10) {
        return m4209getWidthimpl(j10);
    }

    @Stable
    /* renamed from: component2-impl  reason: not valid java name */
    public static final int m4203component2impl(long j10) {
        return m4208getHeightimpl(j10);
    }

    @Stable
    /* renamed from: div-YEO4UFw  reason: not valid java name */
    public static final long m4205divYEO4UFw(long j10, int i10) {
        return IntSizeKt.IntSize(m4209getWidthimpl(j10) / i10, m4208getHeightimpl(j10) / i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4206equalsimpl(long j10, Object obj) {
        if (!(obj instanceof IntSize) || j10 != ((IntSize) obj).m4213unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4207equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getHeight-impl  reason: not valid java name */
    public static final int m4208getHeightimpl(long j10) {
        return (int) (j10 & 4294967295L);
    }

    /* renamed from: getWidth-impl  reason: not valid java name */
    public static final int m4209getWidthimpl(long j10) {
        return (int) (j10 >> 32);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4210hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @Stable
    /* renamed from: times-YEO4UFw  reason: not valid java name */
    public static final long m4211timesYEO4UFw(long j10, int i10) {
        return IntSizeKt.IntSize(m4209getWidthimpl(j10) * i10, m4208getHeightimpl(j10) * i10);
    }

    @Stable
    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4212toStringimpl(long j10) {
        return m4209getWidthimpl(j10) + " x " + m4208getHeightimpl(j10);
    }

    public boolean equals(Object obj) {
        return m4206equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m4210hashCodeimpl(this.packedValue);
    }

    @Stable
    @NotNull
    public String toString() {
        return m4212toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m4213unboximpl() {
        return this.packedValue;
    }

    @Stable
    public static /* synthetic */ void getHeight$annotations() {
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    @Stable
    public static /* synthetic */ void getWidth$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m4204constructorimpl(long j10) {
        return j10;
    }
}
