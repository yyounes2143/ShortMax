package androidx.compose.ui.geometry;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: Size.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Size {
    private final long packedValue;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = SizeKt.Size(0.0f, 0.0f);
    private static final long Unspecified = SizeKt.Size(Float.NaN, Float.NaN);

    /* compiled from: Size.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getUnspecified-NH-jbRc  reason: not valid java name */
        public final long m1683getUnspecifiedNHjbRc() {
            return Size.Unspecified;
        }

        /* renamed from: getZero-NH-jbRc  reason: not valid java name */
        public final long m1684getZeroNHjbRc() {
            return Size.Zero;
        }

        private Companion() {
        }

        @Stable
        /* renamed from: getUnspecified-NH-jbRc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1681getUnspecifiedNHjbRc$annotations() {
        }

        @Stable
        /* renamed from: getZero-NH-jbRc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1682getZeroNHjbRc$annotations() {
        }
    }

    private /* synthetic */ Size(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Size m1663boximpl(long j10) {
        return new Size(j10);
    }

    @Stable
    /* renamed from: component1-impl  reason: not valid java name */
    public static final float m1664component1impl(long j10) {
        return m1675getWidthimpl(j10);
    }

    @Stable
    /* renamed from: component2-impl  reason: not valid java name */
    public static final float m1665component2impl(long j10) {
        return m1672getHeightimpl(j10);
    }

    /* renamed from: copy-xjbvk4A  reason: not valid java name */
    public static final long m1667copyxjbvk4A(long j10, float f10, float f11) {
        return SizeKt.Size(f10, f11);
    }

    /* renamed from: copy-xjbvk4A$default  reason: not valid java name */
    public static /* synthetic */ long m1668copyxjbvk4A$default(long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = m1675getWidthimpl(j10);
        }
        if ((i10 & 2) != 0) {
            f11 = m1672getHeightimpl(j10);
        }
        return m1667copyxjbvk4A(j10, f10, f11);
    }

    @Stable
    /* renamed from: div-7Ah8Wj8  reason: not valid java name */
    public static final long m1669div7Ah8Wj8(long j10, float f10) {
        return SizeKt.Size(m1675getWidthimpl(j10) / f10, m1672getHeightimpl(j10) / f10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1670equalsimpl(long j10, Object obj) {
        if (!(obj instanceof Size) || j10 != ((Size) obj).m1680unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1671equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getHeight-impl  reason: not valid java name */
    public static final float m1672getHeightimpl(long j10) {
        if (j10 != Unspecified) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Float.intBitsToFloat((int) (j10 & 4294967295L));
        }
        throw new IllegalStateException("Size is unspecified");
    }

    /* renamed from: getMaxDimension-impl  reason: not valid java name */
    public static final float m1673getMaxDimensionimpl(long j10) {
        return Math.max(Math.abs(m1675getWidthimpl(j10)), Math.abs(m1672getHeightimpl(j10)));
    }

    /* renamed from: getMinDimension-impl  reason: not valid java name */
    public static final float m1674getMinDimensionimpl(long j10) {
        return Math.min(Math.abs(m1675getWidthimpl(j10)), Math.abs(m1672getHeightimpl(j10)));
    }

    /* renamed from: getWidth-impl  reason: not valid java name */
    public static final float m1675getWidthimpl(long j10) {
        if (j10 != Unspecified) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Float.intBitsToFloat((int) (j10 >> 32));
        }
        throw new IllegalStateException("Size is unspecified");
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1676hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @Stable
    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static final boolean m1677isEmptyimpl(long j10) {
        if (m1675getWidthimpl(j10) > 0.0f && m1672getHeightimpl(j10) > 0.0f) {
            return false;
        }
        return true;
    }

    @Stable
    /* renamed from: times-7Ah8Wj8  reason: not valid java name */
    public static final long m1678times7Ah8Wj8(long j10, float f10) {
        return SizeKt.Size(m1675getWidthimpl(j10) * f10, m1672getHeightimpl(j10) * f10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1679toStringimpl(long j10) {
        if (j10 != Companion.m1683getUnspecifiedNHjbRc()) {
            return "Size(" + GeometryUtilsKt.toStringAsFixed(m1675getWidthimpl(j10), 1) + ", " + GeometryUtilsKt.toStringAsFixed(m1672getHeightimpl(j10), 1) + ')';
        }
        return "Size.Unspecified";
    }

    public boolean equals(Object obj) {
        return m1670equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m1676hashCodeimpl(this.packedValue);
    }

    @NotNull
    public String toString() {
        return m1679toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m1680unboximpl() {
        return this.packedValue;
    }

    @Stable
    public static /* synthetic */ void getHeight$annotations() {
    }

    @Stable
    public static /* synthetic */ void getMaxDimension$annotations() {
    }

    @Stable
    public static /* synthetic */ void getMinDimension$annotations() {
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    @Stable
    public static /* synthetic */ void getWidth$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m1666constructorimpl(long j10) {
        return j10;
    }
}
