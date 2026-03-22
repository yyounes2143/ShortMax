package com.huawei.hms.utils;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.huawei.hms.support.log.HMSLog;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes5.dex */
public abstract class ResourceLoaderUtil {

    /* renamed from: a  reason: collision with root package name */
    private static Context f22420a;

    /* renamed from: b  reason: collision with root package name */
    private static String f22421b;

    public static int getAnimId(String str) {
        Context context = f22420a;
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier(str, "anim", f22421b);
    }

    public static int getColorId(String str) {
        Context context = f22420a;
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier(str, "color", f22421b);
    }

    public static int getDimenId(String str) {
        Context context = f22420a;
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier(str, "dimen", f22421b);
    }

    public static Drawable getDrawable(String str) {
        Context context = f22420a;
        if (context == null) {
            return null;
        }
        return context.getResources().getDrawable(getDrawableId(str));
    }

    public static int getDrawableId(String str) {
        Context context = f22420a;
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier(str, "drawable", f22421b);
    }

    public static int getIdId(String str) {
        Context context = f22420a;
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier(str, "id", f22421b);
    }

    public static int getLayoutId(String str) {
        Context context = f22420a;
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier(str, TtmlNode.TAG_LAYOUT, f22421b);
    }

    public static String getString(String str) {
        Context context = f22420a;
        if (context == null) {
            return "";
        }
        return context.getResources().getString(getStringId(str));
    }

    public static int getStringId(String str) {
        Context context = f22420a;
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier(str, TypedValues.Custom.S_STRING, f22421b);
    }

    public static int getStyleId(String str) {
        Context context = f22420a;
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier(str, TtmlNode.TAG_STYLE, f22421b);
    }

    public static Context getmContext() {
        return f22420a;
    }

    public static void setmContext(Context context) {
        f22420a = context;
        if (context != null) {
            f22421b = context.getPackageName();
            return;
        }
        f22421b = null;
        HMSLog.e("ResourceLoaderUtil", "context is null");
    }

    public static String getString(String str, Object... objArr) {
        Context context = f22420a;
        if (context == null) {
            return "";
        }
        return context.getResources().getString(getStringId(str), objArr);
    }
}
