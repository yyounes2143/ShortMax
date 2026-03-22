package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.view.Window;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import com.google.android.material.color.MaterialColors;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public class EdgeToEdgeUtils {
    private static final int EDGE_TO_EDGE_BAR_ALPHA = 128;

    private EdgeToEdgeUtils() {
    }

    public static void applyEdgeToEdge(@NonNull Window window, boolean z10) {
        applyEdgeToEdge(window, z10, null, null);
    }

    @TargetApi(21)
    private static int getNavigationBarColor(Context context, boolean z10) {
        if (z10 && Build.VERSION.SDK_INT < 27) {
            return ColorUtils.setAlphaComponent(MaterialColors.getColor(context, 16843858, (int) ViewCompat.MEASURED_STATE_MASK), 128);
        }
        if (z10) {
            return 0;
        }
        return MaterialColors.getColor(context, 16843858, (int) ViewCompat.MEASURED_STATE_MASK);
    }

    @TargetApi(21)
    private static int getStatusBarColor(Context context, boolean z10) {
        if (z10) {
            return 0;
        }
        return MaterialColors.getColor(context, 16843857, (int) ViewCompat.MEASURED_STATE_MASK);
    }

    private static boolean isUsingLightSystemBar(int i10, boolean z10) {
        if (!MaterialColors.isColorLight(i10) && (i10 != 0 || !z10)) {
            return false;
        }
        return true;
    }

    public static void setLightNavigationBar(@NonNull Window window, boolean z10) {
        WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightNavigationBars(z10);
    }

    public static void setLightStatusBar(@NonNull Window window, boolean z10) {
        WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(z10);
    }

    public static void applyEdgeToEdge(@NonNull Window window, boolean z10, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2) {
        boolean z11 = false;
        boolean z12 = num == null || num.intValue() == 0;
        if (num2 == null || num2.intValue() == 0) {
            z11 = true;
        }
        if (z12 || z11) {
            int color = MaterialColors.getColor(window.getContext(), 16842801, (int) ViewCompat.MEASURED_STATE_MASK);
            if (z12) {
                num = Integer.valueOf(color);
            }
            if (z11) {
                num2 = Integer.valueOf(color);
            }
        }
        WindowCompat.setDecorFitsSystemWindows(window, !z10);
        int statusBarColor = getStatusBarColor(window.getContext(), z10);
        int navigationBarColor = getNavigationBarColor(window.getContext(), z10);
        window.setStatusBarColor(statusBarColor);
        window.setNavigationBarColor(navigationBarColor);
        setLightStatusBar(window, isUsingLightSystemBar(statusBarColor, MaterialColors.isColorLight(num.intValue())));
        setLightNavigationBar(window, isUsingLightSystemBar(navigationBarColor, MaterialColors.isColorLight(num2.intValue())));
    }
}
