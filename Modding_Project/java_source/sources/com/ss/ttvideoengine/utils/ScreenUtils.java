package com.ss.ttvideoengine.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.provider.Settings;
import android.view.WindowManager;
/* loaded from: classes6.dex */
public class ScreenUtils {
    public static final int MAX_SYSTEM_BRIGHTNESS = 255;
    public static final int MIN_SYSTEM_BRIGHTNESS = 0;

    public static float getNormalizedBrightness(Context context) {
        return (getSystemBrightness(context) * 1.0f) / 255.0f;
    }

    public static Point getRealScreenSize(Context context) {
        Point point = new Point();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealSize(point);
        return point;
    }

    public static int getScreenHeight() {
        return Resources.getSystem().getDisplayMetrics().heightPixels;
    }

    public static int getScreenPixelDensity() {
        return Resources.getSystem().getDisplayMetrics().densityDpi;
    }

    public static int getScreenWidth() {
        return Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    public static float getScreenXdpi() {
        return Resources.getSystem().getDisplayMetrics().xdpi;
    }

    public static float getScreenYdpi() {
        return Resources.getSystem().getDisplayMetrics().ydpi;
    }

    public static int getSystemBrightness(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "screen_brightness");
        } catch (Settings.SettingNotFoundException e10) {
            e10.printStackTrace();
            return 0;
        }
    }
}
