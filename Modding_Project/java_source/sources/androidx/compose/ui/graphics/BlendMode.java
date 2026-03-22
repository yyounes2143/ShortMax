package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: BlendMode.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class BlendMode {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Clear = m1753constructorimpl(0);
    private static final int Src = m1753constructorimpl(1);
    private static final int Dst = m1753constructorimpl(2);
    private static final int SrcOver = m1753constructorimpl(3);
    private static final int DstOver = m1753constructorimpl(4);
    private static final int SrcIn = m1753constructorimpl(5);
    private static final int DstIn = m1753constructorimpl(6);
    private static final int SrcOut = m1753constructorimpl(7);
    private static final int DstOut = m1753constructorimpl(8);
    private static final int SrcAtop = m1753constructorimpl(9);
    private static final int DstAtop = m1753constructorimpl(10);
    private static final int Xor = m1753constructorimpl(11);
    private static final int Plus = m1753constructorimpl(12);
    private static final int Modulate = m1753constructorimpl(13);
    private static final int Screen = m1753constructorimpl(14);
    private static final int Overlay = m1753constructorimpl(15);
    private static final int Darken = m1753constructorimpl(16);
    private static final int Lighten = m1753constructorimpl(17);
    private static final int ColorDodge = m1753constructorimpl(18);
    private static final int ColorBurn = m1753constructorimpl(19);
    private static final int Hardlight = m1753constructorimpl(20);
    private static final int Softlight = m1753constructorimpl(21);
    private static final int Difference = m1753constructorimpl(22);
    private static final int Exclusion = m1753constructorimpl(23);
    private static final int Multiply = m1753constructorimpl(24);
    private static final int Hue = m1753constructorimpl(25);
    private static final int Saturation = m1753constructorimpl(26);
    private static final int Color = m1753constructorimpl(27);
    private static final int Luminosity = m1753constructorimpl(28);

    /* compiled from: BlendMode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getClear-0nO6VwU  reason: not valid java name */
        public final int m1759getClear0nO6VwU() {
            return BlendMode.Clear;
        }

        /* renamed from: getColor-0nO6VwU  reason: not valid java name */
        public final int m1760getColor0nO6VwU() {
            return BlendMode.Color;
        }

        /* renamed from: getColorBurn-0nO6VwU  reason: not valid java name */
        public final int m1761getColorBurn0nO6VwU() {
            return BlendMode.ColorBurn;
        }

        /* renamed from: getColorDodge-0nO6VwU  reason: not valid java name */
        public final int m1762getColorDodge0nO6VwU() {
            return BlendMode.ColorDodge;
        }

        /* renamed from: getDarken-0nO6VwU  reason: not valid java name */
        public final int m1763getDarken0nO6VwU() {
            return BlendMode.Darken;
        }

        /* renamed from: getDifference-0nO6VwU  reason: not valid java name */
        public final int m1764getDifference0nO6VwU() {
            return BlendMode.Difference;
        }

        /* renamed from: getDst-0nO6VwU  reason: not valid java name */
        public final int m1765getDst0nO6VwU() {
            return BlendMode.Dst;
        }

        /* renamed from: getDstAtop-0nO6VwU  reason: not valid java name */
        public final int m1766getDstAtop0nO6VwU() {
            return BlendMode.DstAtop;
        }

        /* renamed from: getDstIn-0nO6VwU  reason: not valid java name */
        public final int m1767getDstIn0nO6VwU() {
            return BlendMode.DstIn;
        }

        /* renamed from: getDstOut-0nO6VwU  reason: not valid java name */
        public final int m1768getDstOut0nO6VwU() {
            return BlendMode.DstOut;
        }

        /* renamed from: getDstOver-0nO6VwU  reason: not valid java name */
        public final int m1769getDstOver0nO6VwU() {
            return BlendMode.DstOver;
        }

        /* renamed from: getExclusion-0nO6VwU  reason: not valid java name */
        public final int m1770getExclusion0nO6VwU() {
            return BlendMode.Exclusion;
        }

        /* renamed from: getHardlight-0nO6VwU  reason: not valid java name */
        public final int m1771getHardlight0nO6VwU() {
            return BlendMode.Hardlight;
        }

        /* renamed from: getHue-0nO6VwU  reason: not valid java name */
        public final int m1772getHue0nO6VwU() {
            return BlendMode.Hue;
        }

        /* renamed from: getLighten-0nO6VwU  reason: not valid java name */
        public final int m1773getLighten0nO6VwU() {
            return BlendMode.Lighten;
        }

        /* renamed from: getLuminosity-0nO6VwU  reason: not valid java name */
        public final int m1774getLuminosity0nO6VwU() {
            return BlendMode.Luminosity;
        }

        /* renamed from: getModulate-0nO6VwU  reason: not valid java name */
        public final int m1775getModulate0nO6VwU() {
            return BlendMode.Modulate;
        }

        /* renamed from: getMultiply-0nO6VwU  reason: not valid java name */
        public final int m1776getMultiply0nO6VwU() {
            return BlendMode.Multiply;
        }

        /* renamed from: getOverlay-0nO6VwU  reason: not valid java name */
        public final int m1777getOverlay0nO6VwU() {
            return BlendMode.Overlay;
        }

        /* renamed from: getPlus-0nO6VwU  reason: not valid java name */
        public final int m1778getPlus0nO6VwU() {
            return BlendMode.Plus;
        }

        /* renamed from: getSaturation-0nO6VwU  reason: not valid java name */
        public final int m1779getSaturation0nO6VwU() {
            return BlendMode.Saturation;
        }

        /* renamed from: getScreen-0nO6VwU  reason: not valid java name */
        public final int m1780getScreen0nO6VwU() {
            return BlendMode.Screen;
        }

        /* renamed from: getSoftlight-0nO6VwU  reason: not valid java name */
        public final int m1781getSoftlight0nO6VwU() {
            return BlendMode.Softlight;
        }

        /* renamed from: getSrc-0nO6VwU  reason: not valid java name */
        public final int m1782getSrc0nO6VwU() {
            return BlendMode.Src;
        }

        /* renamed from: getSrcAtop-0nO6VwU  reason: not valid java name */
        public final int m1783getSrcAtop0nO6VwU() {
            return BlendMode.SrcAtop;
        }

        /* renamed from: getSrcIn-0nO6VwU  reason: not valid java name */
        public final int m1784getSrcIn0nO6VwU() {
            return BlendMode.SrcIn;
        }

        /* renamed from: getSrcOut-0nO6VwU  reason: not valid java name */
        public final int m1785getSrcOut0nO6VwU() {
            return BlendMode.SrcOut;
        }

        /* renamed from: getSrcOver-0nO6VwU  reason: not valid java name */
        public final int m1786getSrcOver0nO6VwU() {
            return BlendMode.SrcOver;
        }

        /* renamed from: getXor-0nO6VwU  reason: not valid java name */
        public final int m1787getXor0nO6VwU() {
            return BlendMode.Xor;
        }

        private Companion() {
        }
    }

    private /* synthetic */ BlendMode(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ BlendMode m1752boximpl(int i10) {
        return new BlendMode(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1754equalsimpl(int i10, Object obj) {
        if (!(obj instanceof BlendMode) || i10 != ((BlendMode) obj).m1758unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1755equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1756hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1757toStringimpl(int i10) {
        if (m1755equalsimpl0(i10, Clear)) {
            return "Clear";
        }
        if (m1755equalsimpl0(i10, Src)) {
            return "Src";
        }
        if (m1755equalsimpl0(i10, Dst)) {
            return "Dst";
        }
        if (m1755equalsimpl0(i10, SrcOver)) {
            return "SrcOver";
        }
        if (m1755equalsimpl0(i10, DstOver)) {
            return "DstOver";
        }
        if (m1755equalsimpl0(i10, SrcIn)) {
            return "SrcIn";
        }
        if (m1755equalsimpl0(i10, DstIn)) {
            return "DstIn";
        }
        if (m1755equalsimpl0(i10, SrcOut)) {
            return "SrcOut";
        }
        if (m1755equalsimpl0(i10, DstOut)) {
            return "DstOut";
        }
        if (m1755equalsimpl0(i10, SrcAtop)) {
            return "SrcAtop";
        }
        if (m1755equalsimpl0(i10, DstAtop)) {
            return "DstAtop";
        }
        if (m1755equalsimpl0(i10, Xor)) {
            return "Xor";
        }
        if (m1755equalsimpl0(i10, Plus)) {
            return "Plus";
        }
        if (m1755equalsimpl0(i10, Modulate)) {
            return "Modulate";
        }
        if (m1755equalsimpl0(i10, Screen)) {
            return "Screen";
        }
        if (m1755equalsimpl0(i10, Overlay)) {
            return "Overlay";
        }
        if (m1755equalsimpl0(i10, Darken)) {
            return "Darken";
        }
        if (m1755equalsimpl0(i10, Lighten)) {
            return "Lighten";
        }
        if (m1755equalsimpl0(i10, ColorDodge)) {
            return "ColorDodge";
        }
        if (m1755equalsimpl0(i10, ColorBurn)) {
            return "ColorBurn";
        }
        if (m1755equalsimpl0(i10, Hardlight)) {
            return "HardLight";
        }
        if (m1755equalsimpl0(i10, Softlight)) {
            return "Softlight";
        }
        if (m1755equalsimpl0(i10, Difference)) {
            return "Difference";
        }
        if (m1755equalsimpl0(i10, Exclusion)) {
            return "Exclusion";
        }
        if (m1755equalsimpl0(i10, Multiply)) {
            return "Multiply";
        }
        if (m1755equalsimpl0(i10, Hue)) {
            return "Hue";
        }
        if (m1755equalsimpl0(i10, Saturation)) {
            return ExifInterface.TAG_SATURATION;
        }
        if (m1755equalsimpl0(i10, Color)) {
            return "Color";
        }
        if (m1755equalsimpl0(i10, Luminosity)) {
            return "Luminosity";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m1754equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1756hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m1757toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m1758unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m1753constructorimpl(int i10) {
        return i10;
    }
}
