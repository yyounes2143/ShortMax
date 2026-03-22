package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaceKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Connector;
import androidx.compose.ui.graphics.colorspace.Rgb;
import com.applovin.shadow.okhttp3.internal.ws.WebSocketProtocol;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Color.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Color {
    private final long value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Black = ColorKt.Color(4278190080L);
    private static final long DarkGray = ColorKt.Color(4282664004L);
    private static final long Gray = ColorKt.Color(4287137928L);
    private static final long LightGray = ColorKt.Color(4291611852L);
    private static final long White = ColorKt.Color(4294967295L);
    private static final long Red = ColorKt.Color(4294901760L);
    private static final long Green = ColorKt.Color(4278255360L);
    private static final long Blue = ColorKt.Color(4278190335L);
    private static final long Yellow = ColorKt.Color(4294967040L);
    private static final long Cyan = ColorKt.Color(4278255615L);
    private static final long Magenta = ColorKt.Color(4294902015L);
    private static final long Transparent = ColorKt.Color(0);
    private static final long Unspecified = ColorKt.Color(0.0f, 0.0f, 0.0f, 0.0f, ColorSpaces.INSTANCE.getUnspecified$ui_graphics_release());

    /* compiled from: Color.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: hsl-JlNiLsg$default */
        public static /* synthetic */ long m1866hslJlNiLsg$default(Companion companion, float f10, float f11, float f12, float f13, Rgb rgb, int i10, Object obj) {
            if ((i10 & 8) != 0) {
                f13 = 1.0f;
            }
            float f14 = f13;
            if ((i10 & 16) != 0) {
                rgb = ColorSpaces.INSTANCE.getSrgb();
            }
            return companion.m1881hslJlNiLsg(f10, f11, f12, f14, rgb);
        }

        private final float hslToRgbComponent(int i10, float f10, float f11, float f12) {
            float f13 = (i10 + (f10 / 30.0f)) % 12.0f;
            return f12 - ((f11 * Math.min(f12, 1.0f - f12)) * Math.max(-1.0f, Math.min(f13 - 3, Math.min(9 - f13, 1.0f))));
        }

        /* renamed from: hsv-JlNiLsg$default */
        public static /* synthetic */ long m1867hsvJlNiLsg$default(Companion companion, float f10, float f11, float f12, float f13, Rgb rgb, int i10, Object obj) {
            if ((i10 & 8) != 0) {
                f13 = 1.0f;
            }
            float f14 = f13;
            if ((i10 & 16) != 0) {
                rgb = ColorSpaces.INSTANCE.getSrgb();
            }
            return companion.m1882hsvJlNiLsg(f10, f11, f12, f14, rgb);
        }

        private final float hsvToRgbComponent(int i10, float f10, float f11, float f12) {
            float f13 = (i10 + (f10 / 60.0f)) % 6.0f;
            return f12 - ((f11 * f12) * Math.max(0.0f, Math.min(f13, Math.min(4 - f13, 1.0f))));
        }

        /* renamed from: getBlack-0d7_KjU */
        public final long m1868getBlack0d7_KjU() {
            return Color.Black;
        }

        /* renamed from: getBlue-0d7_KjU */
        public final long m1869getBlue0d7_KjU() {
            return Color.Blue;
        }

        /* renamed from: getCyan-0d7_KjU */
        public final long m1870getCyan0d7_KjU() {
            return Color.Cyan;
        }

        /* renamed from: getDarkGray-0d7_KjU */
        public final long m1871getDarkGray0d7_KjU() {
            return Color.DarkGray;
        }

        /* renamed from: getGray-0d7_KjU */
        public final long m1872getGray0d7_KjU() {
            return Color.Gray;
        }

        /* renamed from: getGreen-0d7_KjU */
        public final long m1873getGreen0d7_KjU() {
            return Color.Green;
        }

        /* renamed from: getLightGray-0d7_KjU */
        public final long m1874getLightGray0d7_KjU() {
            return Color.LightGray;
        }

        /* renamed from: getMagenta-0d7_KjU */
        public final long m1875getMagenta0d7_KjU() {
            return Color.Magenta;
        }

        /* renamed from: getRed-0d7_KjU */
        public final long m1876getRed0d7_KjU() {
            return Color.Red;
        }

        /* renamed from: getTransparent-0d7_KjU */
        public final long m1877getTransparent0d7_KjU() {
            return Color.Transparent;
        }

        /* renamed from: getUnspecified-0d7_KjU */
        public final long m1878getUnspecified0d7_KjU() {
            return Color.Unspecified;
        }

        /* renamed from: getWhite-0d7_KjU */
        public final long m1879getWhite0d7_KjU() {
            return Color.White;
        }

        /* renamed from: getYellow-0d7_KjU */
        public final long m1880getYellow0d7_KjU() {
            return Color.Yellow;
        }

        /* renamed from: hsl-JlNiLsg */
        public final long m1881hslJlNiLsg(float f10, float f11, float f12, float f13, @NotNull Rgb colorSpace) {
            Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
            if (0.0f <= f10 && f10 <= 360.0f && 0.0f <= f11 && f11 <= 1.0f && 0.0f <= f12 && f12 <= 1.0f) {
                return ColorKt.Color(hslToRgbComponent(0, f10, f11, f12), hslToRgbComponent(8, f10, f11, f12), hslToRgbComponent(4, f10, f11, f12), f13, colorSpace);
            }
            throw new IllegalArgumentException(("HSL (" + f10 + ", " + f11 + ", " + f12 + ") must be in range (0..360, 0..1, 0..1)").toString());
        }

        /* renamed from: hsv-JlNiLsg */
        public final long m1882hsvJlNiLsg(float f10, float f11, float f12, float f13, @NotNull Rgb colorSpace) {
            Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
            if (0.0f <= f10 && f10 <= 360.0f && 0.0f <= f11 && f11 <= 1.0f && 0.0f <= f12 && f12 <= 1.0f) {
                return ColorKt.Color(hsvToRgbComponent(5, f10, f11, f12), hsvToRgbComponent(3, f10, f11, f12), hsvToRgbComponent(1, f10, f11, f12), f13, colorSpace);
            }
            throw new IllegalArgumentException(("HSV (" + f10 + ", " + f11 + ", " + f12 + ") must be in range (0..360, 0..1, 0..1)").toString());
        }

        private Companion() {
        }

        @Stable
        /* renamed from: getBlack-0d7_KjU$annotations */
        public static /* synthetic */ void m1853getBlack0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getBlue-0d7_KjU$annotations */
        public static /* synthetic */ void m1854getBlue0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getCyan-0d7_KjU$annotations */
        public static /* synthetic */ void m1855getCyan0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getDarkGray-0d7_KjU$annotations */
        public static /* synthetic */ void m1856getDarkGray0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getGray-0d7_KjU$annotations */
        public static /* synthetic */ void m1857getGray0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getGreen-0d7_KjU$annotations */
        public static /* synthetic */ void m1858getGreen0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getLightGray-0d7_KjU$annotations */
        public static /* synthetic */ void m1859getLightGray0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getMagenta-0d7_KjU$annotations */
        public static /* synthetic */ void m1860getMagenta0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getRed-0d7_KjU$annotations */
        public static /* synthetic */ void m1861getRed0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getTransparent-0d7_KjU$annotations */
        public static /* synthetic */ void m1862getTransparent0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getUnspecified-0d7_KjU$annotations */
        public static /* synthetic */ void m1863getUnspecified0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getWhite-0d7_KjU$annotations */
        public static /* synthetic */ void m1864getWhite0d7_KjU$annotations() {
        }

        @Stable
        /* renamed from: getYellow-0d7_KjU$annotations */
        public static /* synthetic */ void m1865getYellow0d7_KjU$annotations() {
        }
    }

    private /* synthetic */ Color(long j10) {
        this.value = j10;
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ Color m1832boximpl(long j10) {
        return new Color(j10);
    }

    @Stable
    /* renamed from: component1-impl */
    public static final float m1833component1impl(long j10) {
        return m1848getRedimpl(j10);
    }

    @Stable
    /* renamed from: component2-impl */
    public static final float m1834component2impl(long j10) {
        return m1847getGreenimpl(j10);
    }

    @Stable
    /* renamed from: component3-impl */
    public static final float m1835component3impl(long j10) {
        return m1845getBlueimpl(j10);
    }

    @Stable
    /* renamed from: component4-impl */
    public static final float m1836component4impl(long j10) {
        return m1844getAlphaimpl(j10);
    }

    @Stable
    @NotNull
    /* renamed from: component5-impl */
    public static final ColorSpace m1837component5impl(long j10) {
        return m1846getColorSpaceimpl(j10);
    }

    /* renamed from: convert-vNxB06k */
    public static final long m1839convertvNxB06k(long j10, @NotNull ColorSpace colorSpace) {
        float[] m1889getComponents8_81llA;
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        if (Intrinsics.areEqual(colorSpace, m1846getColorSpaceimpl(j10))) {
            return j10;
        }
        Connector m2211connectYBCOT_4$default = ColorSpaceKt.m2211connectYBCOT_4$default(m1846getColorSpaceimpl(j10), colorSpace, 0, 2, null);
        m1889getComponents8_81llA = ColorKt.m1889getComponents8_81llA(j10);
        m2211connectYBCOT_4$default.transform(m1889getComponents8_81llA);
        return ColorKt.Color(m1889getComponents8_81llA[0], m1889getComponents8_81llA[1], m1889getComponents8_81llA[2], m1889getComponents8_81llA[3], colorSpace);
    }

    @Stable
    /* renamed from: copy-wmQWz5c */
    public static final long m1840copywmQWz5c(long j10, float f10, float f11, float f12, float f13) {
        return ColorKt.Color(f11, f12, f13, f10, m1846getColorSpaceimpl(j10));
    }

    /* renamed from: copy-wmQWz5c$default */
    public static /* synthetic */ long m1841copywmQWz5c$default(long j10, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = m1844getAlphaimpl(j10);
        }
        float f14 = f10;
        if ((i10 & 2) != 0) {
            f11 = m1848getRedimpl(j10);
        }
        float f15 = f11;
        if ((i10 & 4) != 0) {
            f12 = m1847getGreenimpl(j10);
        }
        float f16 = f12;
        if ((i10 & 8) != 0) {
            f13 = m1845getBlueimpl(j10);
        }
        return m1840copywmQWz5c(j10, f14, f15, f16, f13);
    }

    /* renamed from: equals-impl */
    public static boolean m1842equalsimpl(long j10, Object obj) {
        if (!(obj instanceof Color) || j10 != ((Color) obj).m1852unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0 */
    public static final boolean m1843equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getAlpha-impl */
    public static final float m1844getAlphaimpl(long j10) {
        float e10;
        float f10;
        if (ms.p.b(63 & j10) == 0) {
            e10 = (float) ms.u.e(ms.p.b(ms.p.b(j10 >>> 56) & 255));
            f10 = 255.0f;
        } else {
            e10 = (float) ms.u.e(ms.p.b(ms.p.b(j10 >>> 6) & 1023));
            f10 = 1023.0f;
        }
        return e10 / f10;
    }

    /* renamed from: getBlue-impl */
    public static final float m1845getBlueimpl(long j10) {
        if (ms.p.b(63 & j10) == 0) {
            return ((float) ms.u.e(ms.p.b(ms.p.b(j10 >>> 32) & 255))) / 255.0f;
        }
        return Float16.m1953toFloatimpl(Float16.m1937constructorimpl((short) ms.p.b(ms.p.b(j10 >>> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX)));
    }

    @NotNull
    /* renamed from: getColorSpace-impl */
    public static final ColorSpace m1846getColorSpaceimpl(long j10) {
        return ColorSpaces.INSTANCE.getColorSpacesArray$ui_graphics_release()[(int) ms.p.b(j10 & 63)];
    }

    /* renamed from: getGreen-impl */
    public static final float m1847getGreenimpl(long j10) {
        if (ms.p.b(63 & j10) == 0) {
            return ((float) ms.u.e(ms.p.b(ms.p.b(j10 >>> 40) & 255))) / 255.0f;
        }
        return Float16.m1953toFloatimpl(Float16.m1937constructorimpl((short) ms.p.b(ms.p.b(j10 >>> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX)));
    }

    /* renamed from: getRed-impl */
    public static final float m1848getRedimpl(long j10) {
        if (ms.p.b(63 & j10) == 0) {
            return ((float) ms.u.e(ms.p.b(ms.p.b(j10 >>> 48) & 255))) / 255.0f;
        }
        return Float16.m1953toFloatimpl(Float16.m1937constructorimpl((short) ms.p.b(ms.p.b(j10 >>> 48) & WebSocketProtocol.PAYLOAD_SHORT_MAX)));
    }

    /* renamed from: hashCode-impl */
    public static int m1849hashCodeimpl(long j10) {
        return ms.p.e(j10);
    }

    @NotNull
    /* renamed from: toString-impl */
    public static String m1850toStringimpl(long j10) {
        return "Color(" + m1848getRedimpl(j10) + ", " + m1847getGreenimpl(j10) + ", " + m1845getBlueimpl(j10) + ", " + m1844getAlphaimpl(j10) + ", " + m1846getColorSpaceimpl(j10).getName() + ')';
    }

    public boolean equals(Object obj) {
        return m1842equalsimpl(this.value, obj);
    }

    /* renamed from: getValue-s-VKNKU */
    public final long m1851getValuesVKNKU() {
        return this.value;
    }

    public int hashCode() {
        return m1849hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m1850toStringimpl(this.value);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ long m1852unboximpl() {
        return this.value;
    }

    @Stable
    public static /* synthetic */ void getAlpha$annotations() {
    }

    @Stable
    public static /* synthetic */ void getBlue$annotations() {
    }

    @Stable
    public static /* synthetic */ void getColorSpace$annotations() {
    }

    @Stable
    public static /* synthetic */ void getGreen$annotations() {
    }

    @Stable
    public static /* synthetic */ void getRed$annotations() {
    }

    /* renamed from: constructor-impl */
    public static long m1838constructorimpl(long j10) {
        return j10;
    }
}
