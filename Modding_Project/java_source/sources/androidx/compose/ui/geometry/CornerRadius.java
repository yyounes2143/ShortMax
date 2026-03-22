package androidx.compose.ui.geometry;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: CornerRadius.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class CornerRadius {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = CornerRadiusKt.CornerRadius$default(0.0f, 0.0f, 2, null);
    private final long packedValue;

    /* compiled from: CornerRadius.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getZero-kKHJgLs  reason: not valid java name */
        public final long m1591getZerokKHJgLs() {
            return CornerRadius.Zero;
        }

        private Companion() {
        }

        @Stable
        /* renamed from: getZero-kKHJgLs$annotations  reason: not valid java name */
        public static /* synthetic */ void m1590getZerokKHJgLs$annotations() {
        }
    }

    private /* synthetic */ CornerRadius(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ CornerRadius m1572boximpl(long j10) {
        return new CornerRadius(j10);
    }

    @Stable
    /* renamed from: component1-impl  reason: not valid java name */
    public static final float m1573component1impl(long j10) {
        return m1581getXimpl(j10);
    }

    @Stable
    /* renamed from: component2-impl  reason: not valid java name */
    public static final float m1574component2impl(long j10) {
        return m1582getYimpl(j10);
    }

    /* renamed from: copy-OHQCggk  reason: not valid java name */
    public static final long m1576copyOHQCggk(long j10, float f10, float f11) {
        return CornerRadiusKt.CornerRadius(f10, f11);
    }

    /* renamed from: copy-OHQCggk$default  reason: not valid java name */
    public static /* synthetic */ long m1577copyOHQCggk$default(long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = m1581getXimpl(j10);
        }
        if ((i10 & 2) != 0) {
            f11 = m1582getYimpl(j10);
        }
        return m1576copyOHQCggk(j10, f10, f11);
    }

    @Stable
    /* renamed from: div-Bz7bX_o  reason: not valid java name */
    public static final long m1578divBz7bX_o(long j10, float f10) {
        return CornerRadiusKt.CornerRadius(m1581getXimpl(j10) / f10, m1582getYimpl(j10) / f10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1579equalsimpl(long j10, Object obj) {
        if (!(obj instanceof CornerRadius) || j10 != ((CornerRadius) obj).m1589unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1580equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getX-impl  reason: not valid java name */
    public static final float m1581getXimpl(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    /* renamed from: getY-impl  reason: not valid java name */
    public static final float m1582getYimpl(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1583hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @Stable
    /* renamed from: minus-vF7b-mM  reason: not valid java name */
    public static final long m1584minusvF7bmM(long j10, long j11) {
        return CornerRadiusKt.CornerRadius(m1581getXimpl(j10) - m1581getXimpl(j11), m1582getYimpl(j10) - m1582getYimpl(j11));
    }

    @Stable
    /* renamed from: plus-vF7b-mM  reason: not valid java name */
    public static final long m1585plusvF7bmM(long j10, long j11) {
        return CornerRadiusKt.CornerRadius(m1581getXimpl(j10) + m1581getXimpl(j11), m1582getYimpl(j10) + m1582getYimpl(j11));
    }

    @Stable
    /* renamed from: times-Bz7bX_o  reason: not valid java name */
    public static final long m1586timesBz7bX_o(long j10, float f10) {
        return CornerRadiusKt.CornerRadius(m1581getXimpl(j10) * f10, m1582getYimpl(j10) * f10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1587toStringimpl(long j10) {
        if (m1581getXimpl(j10) == m1582getYimpl(j10)) {
            return "CornerRadius.circular(" + GeometryUtilsKt.toStringAsFixed(m1581getXimpl(j10), 1) + ')';
        }
        return "CornerRadius.elliptical(" + GeometryUtilsKt.toStringAsFixed(m1581getXimpl(j10), 1) + ", " + GeometryUtilsKt.toStringAsFixed(m1582getYimpl(j10), 1) + ')';
    }

    @Stable
    /* renamed from: unaryMinus-kKHJgLs  reason: not valid java name */
    public static final long m1588unaryMinuskKHJgLs(long j10) {
        return CornerRadiusKt.CornerRadius(-m1581getXimpl(j10), -m1582getYimpl(j10));
    }

    public boolean equals(Object obj) {
        return m1579equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m1583hashCodeimpl(this.packedValue);
    }

    @NotNull
    public String toString() {
        return m1587toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m1589unboximpl() {
        return this.packedValue;
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    @Stable
    public static /* synthetic */ void getX$annotations() {
    }

    @Stable
    public static /* synthetic */ void getY$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m1575constructorimpl(long j10) {
        return j10;
    }
}
