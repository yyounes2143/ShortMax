package com.bytedance.sdk.component.adexpress.ex;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.cY;
import java.util.Locale;
/* loaded from: classes3.dex */
public class cFZ {
    public static int ZYk(Context context, float f10) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().ZYk();
        }
        float ex = ex(context);
        if (ex <= 0.0f) {
            ex = 1.0f;
        }
        return (int) ((f10 / ex) + 0.5f);
    }

    private static float ex(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static int oJ(float f10, float f11, float f12, float f13) {
        return (((int) ((f10 * 255.0f) + 0.5f)) << 24) | (((int) ((f11 * 255.0f) + 0.5f)) << 16) | (((int) ((f12 * 255.0f) + 0.5f)) << 8) | ((int) ((f13 * 255.0f) + 0.5f));
    }

    public static float tB(Context context, float f10) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().ZYk();
        }
        return f10 * ex(context);
    }

    public static float oJ(Context context, float f10) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().ZYk();
        }
        return (f10 * ex(context)) + 0.5f;
    }

    public static int ZYk(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().ZYk();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static String tB(@NonNull Context context) {
        String str;
        try {
            Locale locale = cY.ZYk(context).getConfiguration().getLocales().get(0);
            str = locale.getLanguage();
            try {
                if (locale.getCountry().equals("TW")) {
                    str = "zhHant";
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            str = "";
        }
        return oJ(str);
    }

    public static int oJ(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().ZYk();
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    private static String oJ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 3121:
                if (str.equals("ar")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3383:
                if (str.equals("ja")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3428:
                if (str.equals("ko")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3494:
                if (str.equals("ms")) {
                    c10 = 3;
                    break;
                }
                break;
            case 3886:
                if (str.equals("zh")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return "aa";
            case 1:
                return "japan";
            case 2:
                return "korea";
            case 3:
                return "my";
            case 4:
                return "cn";
            default:
                return str;
        }
    }
}
