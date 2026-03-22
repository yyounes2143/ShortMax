package androidx.compose.ui.graphics.colorspace;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ColorModel.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class ColorModel {
    private static final long Cmyk;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Lab;
    private static final long Rgb;
    private static final long Xyz;
    private final long packedValue;

    /* compiled from: ColorModel.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getCmyk-xdoWZVw  reason: not valid java name */
        public final long m2205getCmykxdoWZVw() {
            return ColorModel.Cmyk;
        }

        /* renamed from: getLab-xdoWZVw  reason: not valid java name */
        public final long m2206getLabxdoWZVw() {
            return ColorModel.Lab;
        }

        /* renamed from: getRgb-xdoWZVw  reason: not valid java name */
        public final long m2207getRgbxdoWZVw() {
            return ColorModel.Rgb;
        }

        /* renamed from: getXyz-xdoWZVw  reason: not valid java name */
        public final long m2208getXyzxdoWZVw() {
            return ColorModel.Xyz;
        }

        private Companion() {
        }
    }

    static {
        long j10 = 3;
        long j11 = j10 << 32;
        Rgb = m2198constructorimpl((0 & 4294967295L) | j11);
        Xyz = m2198constructorimpl((1 & 4294967295L) | j11);
        Lab = m2198constructorimpl(j11 | (2 & 4294967295L));
        Cmyk = m2198constructorimpl((j10 & 4294967295L) | (4 << 32));
    }

    private /* synthetic */ ColorModel(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ColorModel m2197boximpl(long j10) {
        return new ColorModel(j10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2199equalsimpl(long j10, Object obj) {
        if (!(obj instanceof ColorModel) || j10 != ((ColorModel) obj).m2204unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2200equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getComponentCount-impl  reason: not valid java name */
    public static final int m2201getComponentCountimpl(long j10) {
        return (int) (j10 >> 32);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2202hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2203toStringimpl(long j10) {
        if (m2200equalsimpl0(j10, Rgb)) {
            return "Rgb";
        }
        if (m2200equalsimpl0(j10, Xyz)) {
            return "Xyz";
        }
        if (m2200equalsimpl0(j10, Lab)) {
            return "Lab";
        }
        if (m2200equalsimpl0(j10, Cmyk)) {
            return "Cmyk";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2199equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2202hashCodeimpl(this.packedValue);
    }

    @NotNull
    public String toString() {
        return m2203toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m2204unboximpl() {
        return this.packedValue;
    }

    @Stable
    public static /* synthetic */ void getComponentCount$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m2198constructorimpl(long j10) {
        return j10;
    }
}
