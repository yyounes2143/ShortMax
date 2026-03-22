package com.inmobi.media;

import android.graphics.Insets;
import android.view.DisplayCutout;
import android.view.RoundedCorner;
import android.view.WindowInsets;
import androidx.core.view.WindowInsetsCompat;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.pc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3117pc {

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f25160a = kotlin.c.b(C3101oc.f25125a);

    public static final JSONObject a(String str, int i10) {
        JSONObject a10 = AbstractC2874ad.a(str, "targetViewId", "id", str);
        a10.put("errorCode", i10);
        return a10;
    }

    public static final Bf b(WindowInsets windowInsets) {
        Insets insets;
        int i10;
        int i11;
        int i12;
        int i13;
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        Bf e10 = e(windowInsets);
        Bf c10 = c(windowInsets);
        Bf d10 = d(windowInsets);
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        insets = windowInsets.getInsets(WindowInsetsCompat.Type.navigationBars());
        Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
        i10 = insets.left;
        i11 = insets.top;
        i12 = insets.right;
        i13 = insets.bottom;
        return a(e10, c10, d10, new Bf(i10, i11, i12, i13));
    }

    public static final Bf c(WindowInsets windowInsets) {
        DisplayCutout displayCutout;
        int i10;
        DisplayCutout displayCutout2;
        int i11;
        DisplayCutout displayCutout3;
        int i12;
        DisplayCutout displayCutout4;
        Insets insets;
        int i13;
        int i14;
        int i15;
        int i16;
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        L3 l32 = L3.f23796a;
        if (l32.z()) {
            insets = windowInsets.getInsets(WindowInsetsCompat.Type.displayCutout());
            Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
            i13 = insets.left;
            i14 = insets.top;
            i15 = insets.right;
            i16 = insets.bottom;
            return new Bf(i13, i14, i15, i16);
        } else if (l32.x()) {
            displayCutout = windowInsets.getDisplayCutout();
            int i17 = 0;
            if (displayCutout != null) {
                i10 = displayCutout.getSafeInsetLeft();
            } else {
                i10 = 0;
            }
            displayCutout2 = windowInsets.getDisplayCutout();
            if (displayCutout2 != null) {
                i11 = displayCutout2.getSafeInsetTop();
            } else {
                i11 = 0;
            }
            displayCutout3 = windowInsets.getDisplayCutout();
            if (displayCutout3 != null) {
                i12 = displayCutout3.getSafeInsetRight();
            } else {
                i12 = 0;
            }
            displayCutout4 = windowInsets.getDisplayCutout();
            if (displayCutout4 != null) {
                i17 = displayCutout4.getSafeInsetBottom();
            }
            return new Bf(i10, i11, i12, i17);
        } else {
            return (Bf) f25160a.getValue();
        }
    }

    public static final Bf d(WindowInsets windowInsets) {
        RoundedCorner roundedCorner;
        RoundedCorner roundedCorner2;
        RoundedCorner roundedCorner3;
        RoundedCorner roundedCorner4;
        int i10;
        int i11;
        int i12;
        int radius;
        int radius2;
        int radius3;
        int radius4;
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        if (L3.f23796a.A()) {
            roundedCorner = windowInsets.getRoundedCorner(3);
            int i13 = 0;
            roundedCorner2 = windowInsets.getRoundedCorner(0);
            roundedCorner3 = windowInsets.getRoundedCorner(1);
            roundedCorner4 = windowInsets.getRoundedCorner(2);
            if (roundedCorner != null) {
                radius4 = roundedCorner.getRadius();
                i10 = (int) (Math.sin(Math.toRadians(45.0d)) * radius4);
            } else {
                i10 = 0;
            }
            if (roundedCorner2 != null) {
                radius3 = roundedCorner2.getRadius();
                i11 = (int) (Math.sin(Math.toRadians(45.0d)) * radius3);
            } else {
                i11 = 0;
            }
            if (roundedCorner3 != null) {
                radius2 = roundedCorner3.getRadius();
                i12 = (int) (Math.sin(Math.toRadians(45.0d)) * radius2);
            } else {
                i12 = 0;
            }
            if (roundedCorner4 != null) {
                radius = roundedCorner4.getRadius();
                i13 = (int) (Math.sin(Math.toRadians(45.0d)) * radius);
            }
            return new Bf(Math.max(i10, i11), Math.max(i11, i12), Math.max(i13, i12), Math.max(i10, i13));
        }
        return (Bf) f25160a.getValue();
    }

    public static final Bf e(WindowInsets windowInsets) {
        Insets systemGestureInsets;
        int i10;
        Insets systemGestureInsets2;
        int i11;
        Insets systemGestureInsets3;
        int i12;
        Insets systemGestureInsets4;
        int i13;
        Insets insets;
        int i14;
        int i15;
        int i16;
        int i17;
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        L3 l32 = L3.f23796a;
        if (l32.z()) {
            insets = windowInsets.getInsets(WindowInsetsCompat.Type.systemGestures());
            Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
            i14 = insets.left;
            i15 = insets.top;
            i16 = insets.right;
            i17 = insets.bottom;
            return new Bf(i14, i15, i16, i17);
        } else if (l32.y()) {
            systemGestureInsets = windowInsets.getSystemGestureInsets();
            i10 = systemGestureInsets.left;
            systemGestureInsets2 = windowInsets.getSystemGestureInsets();
            i11 = systemGestureInsets2.top;
            systemGestureInsets3 = windowInsets.getSystemGestureInsets();
            i12 = systemGestureInsets3.right;
            systemGestureInsets4 = windowInsets.getSystemGestureInsets();
            i13 = systemGestureInsets4.bottom;
            return new Bf(i10, i11, i12, i13);
        } else {
            return (Bf) f25160a.getValue();
        }
    }

    public static final Bf a(WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        return a(e(windowInsets), c(windowInsets), d(windowInsets), (Bf) f25160a.getValue());
    }

    public static final Bf a(Bf area, Bf display, Bf roundedCorner, Bf navigationBar) {
        Intrinsics.checkNotNullParameter(area, "area");
        Intrinsics.checkNotNullParameter(display, "display");
        Intrinsics.checkNotNullParameter(roundedCorner, "roundedCorner");
        Intrinsics.checkNotNullParameter(navigationBar, "navigationBar");
        return new Bf(ps.a.f(area.f23521a, display.f23521a, roundedCorner.f23521a, navigationBar.f23521a), ps.a.f(area.f23522b, display.f23522b, roundedCorner.f23522b, navigationBar.f23522b), ps.a.f(area.f23523c, display.f23523c, roundedCorner.f23523c, navigationBar.f23523c), ps.a.f(area.f23524d, display.f23524d, roundedCorner.f23524d, navigationBar.f23524d));
    }
}
