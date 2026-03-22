package androidx.compose.ui.graphics;

import android.graphics.PorterDuff;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.graphics.BlendMode;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidBlendMode.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidBlendMode_androidKt {
    /* renamed from: isSupported-s9anfk8  reason: not valid java name */
    public static final boolean m1697isSupporteds9anfk8(int i10) {
        if (Build.VERSION.SDK_INT < 29 && !BlendMode.m1755equalsimpl0(i10, BlendMode.Companion.m1786getSrcOver0nO6VwU()) && m1699toPorterDuffModes9anfk8(i10) == PorterDuff.Mode.SRC_OVER) {
            return false;
        }
        return true;
    }

    @RequiresApi(29)
    @NotNull
    /* renamed from: toAndroidBlendMode-s9anfk8  reason: not valid java name */
    public static final android.graphics.BlendMode m1698toAndroidBlendModes9anfk8(int i10) {
        android.graphics.BlendMode blendMode;
        android.graphics.BlendMode blendMode2;
        android.graphics.BlendMode blendMode3;
        android.graphics.BlendMode blendMode4;
        android.graphics.BlendMode blendMode5;
        android.graphics.BlendMode blendMode6;
        android.graphics.BlendMode blendMode7;
        android.graphics.BlendMode blendMode8;
        android.graphics.BlendMode blendMode9;
        android.graphics.BlendMode blendMode10;
        android.graphics.BlendMode blendMode11;
        android.graphics.BlendMode blendMode12;
        android.graphics.BlendMode blendMode13;
        android.graphics.BlendMode blendMode14;
        android.graphics.BlendMode blendMode15;
        android.graphics.BlendMode blendMode16;
        android.graphics.BlendMode blendMode17;
        android.graphics.BlendMode blendMode18;
        android.graphics.BlendMode blendMode19;
        android.graphics.BlendMode blendMode20;
        android.graphics.BlendMode blendMode21;
        android.graphics.BlendMode blendMode22;
        android.graphics.BlendMode blendMode23;
        android.graphics.BlendMode blendMode24;
        android.graphics.BlendMode blendMode25;
        android.graphics.BlendMode blendMode26;
        android.graphics.BlendMode blendMode27;
        android.graphics.BlendMode blendMode28;
        android.graphics.BlendMode blendMode29;
        android.graphics.BlendMode blendMode30;
        BlendMode.Companion companion = BlendMode.Companion;
        if (BlendMode.m1755equalsimpl0(i10, companion.m1759getClear0nO6VwU())) {
            blendMode30 = android.graphics.BlendMode.CLEAR;
            return blendMode30;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1782getSrc0nO6VwU())) {
            blendMode29 = android.graphics.BlendMode.SRC;
            return blendMode29;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1765getDst0nO6VwU())) {
            blendMode28 = android.graphics.BlendMode.DST;
            return blendMode28;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1786getSrcOver0nO6VwU())) {
            blendMode27 = android.graphics.BlendMode.SRC_OVER;
            return blendMode27;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1769getDstOver0nO6VwU())) {
            blendMode26 = android.graphics.BlendMode.DST_OVER;
            return blendMode26;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1784getSrcIn0nO6VwU())) {
            blendMode25 = android.graphics.BlendMode.SRC_IN;
            return blendMode25;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1767getDstIn0nO6VwU())) {
            blendMode24 = android.graphics.BlendMode.DST_IN;
            return blendMode24;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1785getSrcOut0nO6VwU())) {
            blendMode23 = android.graphics.BlendMode.SRC_OUT;
            return blendMode23;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1768getDstOut0nO6VwU())) {
            blendMode22 = android.graphics.BlendMode.DST_OUT;
            return blendMode22;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1783getSrcAtop0nO6VwU())) {
            blendMode21 = android.graphics.BlendMode.SRC_ATOP;
            return blendMode21;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1766getDstAtop0nO6VwU())) {
            blendMode20 = android.graphics.BlendMode.DST_ATOP;
            return blendMode20;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1787getXor0nO6VwU())) {
            blendMode19 = android.graphics.BlendMode.XOR;
            return blendMode19;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1778getPlus0nO6VwU())) {
            blendMode18 = android.graphics.BlendMode.PLUS;
            return blendMode18;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1775getModulate0nO6VwU())) {
            blendMode17 = android.graphics.BlendMode.MODULATE;
            return blendMode17;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1780getScreen0nO6VwU())) {
            blendMode16 = android.graphics.BlendMode.SCREEN;
            return blendMode16;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1777getOverlay0nO6VwU())) {
            blendMode15 = android.graphics.BlendMode.OVERLAY;
            return blendMode15;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1763getDarken0nO6VwU())) {
            blendMode14 = android.graphics.BlendMode.DARKEN;
            return blendMode14;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1773getLighten0nO6VwU())) {
            blendMode13 = android.graphics.BlendMode.LIGHTEN;
            return blendMode13;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1762getColorDodge0nO6VwU())) {
            blendMode12 = android.graphics.BlendMode.COLOR_DODGE;
            return blendMode12;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1761getColorBurn0nO6VwU())) {
            blendMode11 = android.graphics.BlendMode.COLOR_BURN;
            return blendMode11;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1771getHardlight0nO6VwU())) {
            blendMode10 = android.graphics.BlendMode.HARD_LIGHT;
            return blendMode10;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1781getSoftlight0nO6VwU())) {
            blendMode9 = android.graphics.BlendMode.SOFT_LIGHT;
            return blendMode9;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1764getDifference0nO6VwU())) {
            blendMode8 = android.graphics.BlendMode.DIFFERENCE;
            return blendMode8;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1770getExclusion0nO6VwU())) {
            blendMode7 = android.graphics.BlendMode.EXCLUSION;
            return blendMode7;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1776getMultiply0nO6VwU())) {
            blendMode6 = android.graphics.BlendMode.MULTIPLY;
            return blendMode6;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1772getHue0nO6VwU())) {
            blendMode5 = android.graphics.BlendMode.HUE;
            return blendMode5;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1779getSaturation0nO6VwU())) {
            blendMode4 = android.graphics.BlendMode.SATURATION;
            return blendMode4;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1760getColor0nO6VwU())) {
            blendMode3 = android.graphics.BlendMode.COLOR;
            return blendMode3;
        } else if (BlendMode.m1755equalsimpl0(i10, companion.m1774getLuminosity0nO6VwU())) {
            blendMode2 = android.graphics.BlendMode.LUMINOSITY;
            return blendMode2;
        } else {
            blendMode = android.graphics.BlendMode.SRC_OVER;
            return blendMode;
        }
    }

    @NotNull
    /* renamed from: toPorterDuffMode-s9anfk8  reason: not valid java name */
    public static final PorterDuff.Mode m1699toPorterDuffModes9anfk8(int i10) {
        BlendMode.Companion companion = BlendMode.Companion;
        if (BlendMode.m1755equalsimpl0(i10, companion.m1759getClear0nO6VwU())) {
            return PorterDuff.Mode.CLEAR;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1782getSrc0nO6VwU())) {
            return PorterDuff.Mode.SRC;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1765getDst0nO6VwU())) {
            return PorterDuff.Mode.DST;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1786getSrcOver0nO6VwU())) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1769getDstOver0nO6VwU())) {
            return PorterDuff.Mode.DST_OVER;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1784getSrcIn0nO6VwU())) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1767getDstIn0nO6VwU())) {
            return PorterDuff.Mode.DST_IN;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1785getSrcOut0nO6VwU())) {
            return PorterDuff.Mode.SRC_OUT;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1768getDstOut0nO6VwU())) {
            return PorterDuff.Mode.DST_OUT;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1783getSrcAtop0nO6VwU())) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1766getDstAtop0nO6VwU())) {
            return PorterDuff.Mode.DST_ATOP;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1787getXor0nO6VwU())) {
            return PorterDuff.Mode.XOR;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1778getPlus0nO6VwU())) {
            return PorterDuff.Mode.ADD;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1780getScreen0nO6VwU())) {
            return PorterDuff.Mode.SCREEN;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1777getOverlay0nO6VwU())) {
            return PorterDuff.Mode.OVERLAY;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1763getDarken0nO6VwU())) {
            return PorterDuff.Mode.DARKEN;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1773getLighten0nO6VwU())) {
            return PorterDuff.Mode.LIGHTEN;
        }
        if (BlendMode.m1755equalsimpl0(i10, companion.m1775getModulate0nO6VwU())) {
            return PorterDuff.Mode.MULTIPLY;
        }
        return PorterDuff.Mode.SRC_OVER;
    }
}
