package androidx.compose.ui.geometry;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: Offset.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Offset {
    private final long packedValue;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = OffsetKt.Offset(0.0f, 0.0f);
    private static final long Infinite = OffsetKt.Offset(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    private static final long Unspecified = OffsetKt.Offset(Float.NaN, Float.NaN);

    /* compiled from: Offset.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getInfinite-F1C5BW0  reason: not valid java name */
        public final long m1620getInfiniteF1C5BW0() {
            return Offset.Infinite;
        }

        /* renamed from: getUnspecified-F1C5BW0  reason: not valid java name */
        public final long m1621getUnspecifiedF1C5BW0() {
            return Offset.Unspecified;
        }

        /* renamed from: getZero-F1C5BW0  reason: not valid java name */
        public final long m1622getZeroF1C5BW0() {
            return Offset.Zero;
        }

        private Companion() {
        }

        @Stable
        /* renamed from: getInfinite-F1C5BW0$annotations  reason: not valid java name */
        public static /* synthetic */ void m1617getInfiniteF1C5BW0$annotations() {
        }

        @Stable
        /* renamed from: getUnspecified-F1C5BW0$annotations  reason: not valid java name */
        public static /* synthetic */ void m1618getUnspecifiedF1C5BW0$annotations() {
        }

        @Stable
        /* renamed from: getZero-F1C5BW0$annotations  reason: not valid java name */
        public static /* synthetic */ void m1619getZeroF1C5BW0$annotations() {
        }
    }

    private /* synthetic */ Offset(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Offset m1595boximpl(long j10) {
        return new Offset(j10);
    }

    @Stable
    /* renamed from: component1-impl  reason: not valid java name */
    public static final float m1596component1impl(long j10) {
        return m1606getXimpl(j10);
    }

    @Stable
    /* renamed from: component2-impl  reason: not valid java name */
    public static final float m1597component2impl(long j10) {
        return m1607getYimpl(j10);
    }

    /* renamed from: copy-dBAh8RU  reason: not valid java name */
    public static final long m1599copydBAh8RU(long j10, float f10, float f11) {
        return OffsetKt.Offset(f10, f11);
    }

    /* renamed from: copy-dBAh8RU$default  reason: not valid java name */
    public static /* synthetic */ long m1600copydBAh8RU$default(long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = m1606getXimpl(j10);
        }
        if ((i10 & 2) != 0) {
            f11 = m1607getYimpl(j10);
        }
        return m1599copydBAh8RU(j10, f10, f11);
    }

    @Stable
    /* renamed from: div-tuRUvjQ  reason: not valid java name */
    public static final long m1601divtuRUvjQ(long j10, float f10) {
        return OffsetKt.Offset(m1606getXimpl(j10) / f10, m1607getYimpl(j10) / f10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1602equalsimpl(long j10, Object obj) {
        if (!(obj instanceof Offset) || j10 != ((Offset) obj).m1616unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1603equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    @Stable
    /* renamed from: getDistance-impl  reason: not valid java name */
    public static final float m1604getDistanceimpl(long j10) {
        return (float) Math.sqrt((m1606getXimpl(j10) * m1606getXimpl(j10)) + (m1607getYimpl(j10) * m1607getYimpl(j10)));
    }

    @Stable
    /* renamed from: getDistanceSquared-impl  reason: not valid java name */
    public static final float m1605getDistanceSquaredimpl(long j10) {
        return (m1606getXimpl(j10) * m1606getXimpl(j10)) + (m1607getYimpl(j10) * m1607getYimpl(j10));
    }

    /* renamed from: getX-impl  reason: not valid java name */
    public static final float m1606getXimpl(long j10) {
        if (j10 != Unspecified) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Float.intBitsToFloat((int) (j10 >> 32));
        }
        throw new IllegalStateException("Offset is unspecified");
    }

    /* renamed from: getY-impl  reason: not valid java name */
    public static final float m1607getYimpl(long j10) {
        if (j10 != Unspecified) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Float.intBitsToFloat((int) (j10 & 4294967295L));
        }
        throw new IllegalStateException("Offset is unspecified");
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1608hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @Stable
    /* renamed from: isValid-impl  reason: not valid java name */
    public static final boolean m1609isValidimpl(long j10) {
        if (!Float.isNaN(m1606getXimpl(j10)) && !Float.isNaN(m1607getYimpl(j10))) {
            return true;
        }
        throw new IllegalStateException("Offset argument contained a NaN value.");
    }

    @Stable
    /* renamed from: minus-MK-Hz9U  reason: not valid java name */
    public static final long m1610minusMKHz9U(long j10, long j11) {
        return OffsetKt.Offset(m1606getXimpl(j10) - m1606getXimpl(j11), m1607getYimpl(j10) - m1607getYimpl(j11));
    }

    @Stable
    /* renamed from: plus-MK-Hz9U  reason: not valid java name */
    public static final long m1611plusMKHz9U(long j10, long j11) {
        return OffsetKt.Offset(m1606getXimpl(j10) + m1606getXimpl(j11), m1607getYimpl(j10) + m1607getYimpl(j11));
    }

    @Stable
    /* renamed from: rem-tuRUvjQ  reason: not valid java name */
    public static final long m1612remtuRUvjQ(long j10, float f10) {
        return OffsetKt.Offset(m1606getXimpl(j10) % f10, m1607getYimpl(j10) % f10);
    }

    @Stable
    /* renamed from: times-tuRUvjQ  reason: not valid java name */
    public static final long m1613timestuRUvjQ(long j10, float f10) {
        return OffsetKt.Offset(m1606getXimpl(j10) * f10, m1607getYimpl(j10) * f10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1614toStringimpl(long j10) {
        if (OffsetKt.m1625isSpecifiedk4lQ0M(j10)) {
            return "Offset(" + GeometryUtilsKt.toStringAsFixed(m1606getXimpl(j10), 1) + ", " + GeometryUtilsKt.toStringAsFixed(m1607getYimpl(j10), 1) + ')';
        }
        return "Offset.Unspecified";
    }

    @Stable
    /* renamed from: unaryMinus-F1C5BW0  reason: not valid java name */
    public static final long m1615unaryMinusF1C5BW0(long j10) {
        return OffsetKt.Offset(-m1606getXimpl(j10), -m1607getYimpl(j10));
    }

    public boolean equals(Object obj) {
        return m1602equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m1608hashCodeimpl(this.packedValue);
    }

    @NotNull
    public String toString() {
        return m1614toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m1616unboximpl() {
        return this.packedValue;
    }

    @Stable
    public static /* synthetic */ void getX$annotations() {
    }

    @Stable
    public static /* synthetic */ void getY$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m1598constructorimpl(long j10) {
        return j10;
    }
}
