package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
/* loaded from: classes3.dex */
public class tB {
    public static int oJ = -1;

    public static int oJ(Context context, int i10, int i11) {
        int round;
        int oJ2 = oJ(context, i11);
        if (oJ2 == -1) {
            return oJ;
        }
        int min = Math.min(90, Math.round(oJ2 * 0.15f));
        if (i10 > 655) {
            round = Math.round((i10 / 728.0f) * 90.0f);
        } else if (i10 > 632) {
            round = 81;
        } else if (i10 > 526) {
            round = Math.round((i10 / 468.0f) * 60.0f);
        } else {
            round = i10 > 432 ? 68 : Math.round((i10 / 320.0f) * 50.0f);
        }
        return Math.max(Math.min(round, min), 50);
    }

    public static int oJ(Context context, int i10) {
        DisplayMetrics displayMetrics;
        Configuration configuration;
        if (context != null) {
            try {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                Resources resources = context.getResources();
                if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null && (configuration = resources.getConfiguration()) != null) {
                    int i11 = configuration.orientation;
                    if (i10 == 0) {
                        i10 = i11;
                    }
                    if (i10 == i11) {
                        return Math.round(displayMetrics.heightPixels / displayMetrics.density);
                    }
                    return Math.round(displayMetrics.widthPixels / displayMetrics.density);
                }
            } catch (Throwable unused) {
                return oJ;
            }
        }
        return oJ;
    }
}
