package com.bytedance.vodsetting;
/* loaded from: classes3.dex */
class Log {
    private static final String FORMAT = "<%s> %s";
    private static final String TAG = "VodSettings";
    private static boolean debugSwitch = false;

    Log() {
    }

    public static final void e(String str, String str2) {
        if (!debugSwitch) {
            return;
        }
        android.util.Log.e(TAG, String.format(FORMAT, str, str2));
    }

    public static void setDebugSwitch(boolean z10) {
        debugSwitch = z10;
    }

    public static final void v(String str, String str2) {
        if (!debugSwitch) {
            return;
        }
        android.util.Log.i(TAG, String.format(FORMAT, str, str2));
    }
}
