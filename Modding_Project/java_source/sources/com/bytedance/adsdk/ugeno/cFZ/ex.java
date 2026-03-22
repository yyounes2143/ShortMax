package com.bytedance.adsdk.ugeno.cFZ;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
/* loaded from: classes3.dex */
public final class ex {
    private static Resources ZYk;
    private static String oJ;
    @SuppressLint({"StaticFieldLeak"})
    private static Context tB;

    public static int ZYk(Context context, String str) {
        return oJ(context, str, "drawable");
    }

    public static void oJ(String str) {
        oJ = str;
    }

    private static String oJ(Context context) {
        if (oJ == null) {
            oJ = context.getPackageName();
        }
        return oJ;
    }

    private static int oJ(Context context, String str, String str2) {
        if (ZYk == null) {
            ZYk = context.getResources();
        }
        return ZYk.getIdentifier(str, str2, oJ(context));
    }

    public static int oJ(Context context, String str) {
        return oJ(context, str, "raw");
    }
}
