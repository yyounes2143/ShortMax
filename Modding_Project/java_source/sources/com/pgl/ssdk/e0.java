package com.pgl.ssdk;

import android.content.Context;
import android.content.res.Configuration;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.ss.texturerender.TextureRenderKeys;
/* loaded from: classes6.dex */
public class e0 {

    /* renamed from: a  reason: collision with root package name */
    public static int f36744a;

    /* renamed from: b  reason: collision with root package name */
    public static int f36745b;

    /* renamed from: c  reason: collision with root package name */
    public static int f36746c;

    /* renamed from: d  reason: collision with root package name */
    public static int f36747d;

    /* renamed from: e  reason: collision with root package name */
    public static int f36748e;

    /* renamed from: f  reason: collision with root package name */
    private static int f36749f;

    /* renamed from: g  reason: collision with root package name */
    private static int f36750g;

    /* renamed from: h  reason: collision with root package name */
    private static int f36751h;

    public static int a(Context context) {
        try {
            Configuration configuration = context.getResources().getConfiguration();
            if (configuration != null) {
                return configuration.touchscreen;
            }
        } catch (Throwable unused) {
        }
        return 666666;
    }

    private static void b(Context context) {
        if (context == null) {
            return;
        }
        try {
            new DisplayMetrics();
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            f36749f = (int) displayMetrics.density;
            f36748e = displayMetrics.densityDpi;
        } catch (Throwable unused) {
        }
    }

    private static void c(Context context) {
        try {
            new DisplayMetrics();
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            f36750g = (int) displayMetrics.xdpi;
            f36751h = (int) displayMetrics.ydpi;
        } catch (Throwable unused) {
        }
    }

    private static void d(Context context) {
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            f36744a = displayMetrics.widthPixels;
            f36745b = displayMetrics.heightPixels;
            Display.Mode mode = defaultDisplay.getMode();
            f36746c = mode.getPhysicalWidth();
            f36747d = mode.getPhysicalHeight();
        } catch (Throwable unused) {
        }
    }

    public static String e(Context context) {
        int i10 = -1;
        if (context != null) {
            try {
                i10 = Settings.System.getInt(context.getContentResolver(), "screen_brightness", -1);
            } catch (Throwable unused) {
            }
        }
        return String.valueOf(i10);
    }

    public static String f(Context context) {
        try {
            d(context);
            b(context);
            c(context);
        } catch (Throwable unused) {
        }
        return f36748e + "[<!>]" + f36744a + "," + f36745b + "[<!>]" + f36746c + TextureRenderKeys.KEY_IS_X + f36747d + "[<!>]";
    }
}
