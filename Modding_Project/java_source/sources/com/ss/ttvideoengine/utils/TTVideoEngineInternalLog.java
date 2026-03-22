package com.ss.ttvideoengine.utils;

import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes6.dex */
public class TTVideoEngineInternalLog {
    public static final String FORMAT = "<%s>%s";
    public static final int LOG_DEBUG = 1;
    public static final int LOG_ERROR = 6;
    public static final int LOG_INFO = 2;
    public static final int LOG_KILL = 4;
    public static final int LOG_TRACK = 3;
    public static final int LOG_VERBOSE = 0;
    public static final int LOG_WARN = 5;
    public static int LogNotifyLevel = 116;
    public static int LogTurnOn = 112;
    private static final String TAG = "TTVideoEngineLog";
    public static TTVideoEngineLogListener mListener;

    /* JADX INFO: Access modifiers changed from: protected */
    public static void _notifyListener(String str, String str2) {
        if (mListener != null && !TextUtils.isEmpty(str2)) {
            TTVideoEngineLogListener tTVideoEngineLogListener = mListener;
            if (!TextUtils.isEmpty(str)) {
                str2 = "TTVideoEngine: tag = " + str + ";  " + str2;
            }
            tTVideoEngineLogListener.consoleLog(str2);
        }
    }

    public static void d(String str, String str2) {
        if (((LogNotifyLevel >> 1) & 1) == 1) {
            _notifyListener(str, str2);
        }
        if (((LogTurnOn >> 1) & 1) == 1) {
            Log.d(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static void e(String str, String str2) {
        if (((LogNotifyLevel >> 6) & 1) == 1) {
            _notifyListener(str, str2);
        }
        if (((LogTurnOn >> 6) & 1) == 1) {
            Log.e(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static void i(String str, String str2) {
        if (((LogNotifyLevel >> 2) & 1) == 1) {
            _notifyListener(str, str2);
        }
        if (((LogTurnOn >> 2) & 1) == 1) {
            Log.i(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static void k(String str, String str2) {
        if (((LogNotifyLevel >> 4) & 1) == 1) {
            _notifyListener(str, str2);
        }
        if (((LogTurnOn >> 4) & 1) == 1) {
            Log.i(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static void setListener(TTVideoEngineLogListener tTVideoEngineLogListener) {
        mListener = tTVideoEngineLogListener;
    }

    public static void setLogNotifyLevel(int i10, int i11) {
        LogNotifyLevel = (i11 << i10) | ((~(1 << i10)) & LogNotifyLevel);
    }

    public static void t(String str, String str2) {
        if (((LogNotifyLevel >> 3) & 1) == 1) {
            _notifyListener(str, str2);
        }
        if (((LogTurnOn >> 3) & 1) == 1) {
            Log.i(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static void turnOn(int i10, int i11) {
        int i12 = ((~(1 << i10)) & LogTurnOn) | (i11 << i10);
        LogTurnOn = i12;
        if (i10 == 1 && i11 == 1) {
            LogTurnOn = (i12 & (-5)) | (i11 << 2);
        }
    }

    public static void w(String str, String str2) {
        if (((LogNotifyLevel >> 5) & 1) == 1) {
            _notifyListener(str, str2);
        }
        if (((LogTurnOn >> 5) & 1) == 1) {
            Log.w(TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static void d(Throwable th2) {
        if (((LogTurnOn >> 1) & 1) == 1) {
            th2.printStackTrace();
        }
    }

    public static boolean e() {
        return ((LogTurnOn >> 6) & 1) == 1 || ((LogNotifyLevel >> 6) & 1) == 1;
    }

    public static boolean d() {
        return ((LogTurnOn >> 1) & 1) == 1 || ((LogNotifyLevel >> 1) & 1) == 1;
    }
}
