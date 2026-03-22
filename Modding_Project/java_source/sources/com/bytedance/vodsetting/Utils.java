package com.bytedance.vodsetting;

import android.os.Build;
/* loaded from: classes3.dex */
class Utils {
    public static String TAG = "Utils";

    Utils() {
    }

    public static String getCallerName() {
        return "VideoCloud";
    }

    public static String getDeviceBrand() {
        return Build.BRAND;
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static int getSDKVersion() {
        return Build.VERSION.SDK_INT;
    }

    public static String getSystemModel() {
        return Build.MODEL;
    }

    public static String getSystemVersion() {
        return Build.VERSION.RELEASE;
    }
}
