package com.bytedance.vcloud.networkpredictor;

import android.util.Log;
/* loaded from: classes3.dex */
public class SpeedPredictorLog {
    public static final String FORMAT = "<%s>%s";
    public static final int LOG_DEBUG = 1;
    public static final int LOG_ERROR = 6;
    public static final int LOG_INFO = 2;
    public static final int LOG_KILL = 4;
    public static final int LOG_TRACK = 3;
    public static final int LOG_VERBOSE = 0;
    public static final int LOG_WARN = 5;
    public static int LogTurnOn = 112;
    private static final String TAG = "SpeedPredictorLog";

    public static final void d(String str, String str2) {
        if (((LogTurnOn >> 1) & 1) == 1) {
            Log.d(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static void e(String str, String str2) {
        if (((LogTurnOn >> 6) & 1) == 1) {
            Log.e(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static final void i(String str, String str2) {
        if (((LogTurnOn >> 2) & 1) == 1) {
            Log.i(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static final void k(String str, String str2) {
        if (((LogTurnOn >> 4) & 1) == 1) {
            Log.i(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static final void t(String str, String str2) {
        if (((LogTurnOn >> 3) & 1) == 1) {
            Log.i(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static final void turnOn(int i10, int i11) {
        int i12 = ((~(1 << i10)) & LogTurnOn) | (i11 << i10);
        LogTurnOn = i12;
        if (i10 == 1 && i11 == 1) {
            LogTurnOn = (i12 & (-5)) | (i11 << 2);
        }
    }

    public static final void w(String str, String str2) {
        if (((LogTurnOn >> 5) & 1) == 1) {
            Log.w(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static void d(Throwable th2) {
        if (((LogTurnOn >> 1) & 1) == 1) {
            th2.printStackTrace();
        }
    }
}
