package com.bytedance.sdk.component.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes3.dex */
public final class cY {
    private static boolean Pfn = false;
    private static String ZYk = null;

    /* renamed from: ba  reason: collision with root package name */
    private static boolean f12816ba = false;
    private static String ex;
    @SuppressLint({"StaticFieldLeak"})
    private static Context oJ;
    private static Resources tB;

    public static int Pfn(Context context, String str) {
        return oJ(context, str, "id");
    }

    public static int ZYk(Context context, String str) {
        return oJ(context, str, TypedValues.Custom.S_STRING);
    }

    public static int ba(Context context, String str) {
        return oJ(context, str, TtmlNode.TAG_STYLE);
    }

    public static int cFZ(Context context, String str) {
        return ZYk(context).getColor(so(context, str));
    }

    private static String ex(Context context) {
        if (ex == null) {
            ex = context.getPackageName();
        }
        return ex;
    }

    public static int jFA(Context context, String str) {
        return oJ(context, str, "anim");
    }

    public static void oJ(Context context) {
        oJ = context;
    }

    public static int so(Context context, String str) {
        return oJ(context, str, "color");
    }

    public static Drawable tB(Context context, String str) {
        try {
            return ZYk(context).getDrawable(ex(context, str));
        } catch (Exception unused) {
            return null;
        }
    }

    public static Resources ZYk(Context context) {
        Resources resources = tB;
        if (resources == null) {
            resources = null;
        }
        Context context2 = oJ;
        if (context2 != null) {
            resources = context2.getResources();
        }
        return resources == null ? context.getResources() : resources;
    }

    public static void oJ(String str) {
        ex = str;
    }

    private static int oJ(Context context, String str, String str2) {
        int identifier = ZYk(context).getIdentifier(str, str2, ex(context));
        if (identifier == 0) {
            if (!Pfn) {
                tB(context);
                return ZYk(context).getIdentifier(str, str2, ex(context));
            }
            return context.getResources().getIdentifier(str, str2, ex(context));
        }
        return identifier;
    }

    public static synchronized void tB(Context context) {
        synchronized (cY.class) {
            try {
                if (TextUtils.isEmpty(ZYk)) {
                    return;
                }
                Pfn = true;
            } catch (Throwable th2) {
                Log.e("ResourceHelp", "makePluginResources failed", th2);
            }
        }
    }

    public static int ex(Context context, String str) {
        try {
            return oJ(context, str, "drawable");
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String oJ(Context context, String str) {
        return ZYk(context).getString(ZYk(context, str));
    }
}
