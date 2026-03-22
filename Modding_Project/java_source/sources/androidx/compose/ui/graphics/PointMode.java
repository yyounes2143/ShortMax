package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointMode.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class PointMode {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Points = m2101constructorimpl(0);
    private static final int Lines = m2101constructorimpl(1);
    private static final int Polygon = m2101constructorimpl(2);

    /* compiled from: PointMode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getLines-r_lszbg  reason: not valid java name */
        public final int m2107getLinesr_lszbg() {
            return PointMode.Lines;
        }

        /* renamed from: getPoints-r_lszbg  reason: not valid java name */
        public final int m2108getPointsr_lszbg() {
            return PointMode.Points;
        }

        /* renamed from: getPolygon-r_lszbg  reason: not valid java name */
        public final int m2109getPolygonr_lszbg() {
            return PointMode.Polygon;
        }

        private Companion() {
        }
    }

    private /* synthetic */ PointMode(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ PointMode m2100boximpl(int i10) {
        return new PointMode(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2102equalsimpl(int i10, Object obj) {
        if (!(obj instanceof PointMode) || i10 != ((PointMode) obj).m2106unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2103equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2104hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2105toStringimpl(int i10) {
        if (m2103equalsimpl0(i10, Points)) {
            return "Points";
        }
        if (m2103equalsimpl0(i10, Lines)) {
            return "Lines";
        }
        if (m2103equalsimpl0(i10, Polygon)) {
            return "Polygon";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2102equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2104hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2105toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2106unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2101constructorimpl(int i10) {
        return i10;
    }
}
