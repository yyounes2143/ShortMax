package com.ss.ttm.utils;

import android.util.Log;
import androidx.core.internal.view.SupportMenu;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.reflect.Method;
import java.util.Locale;
/* loaded from: classes6.dex */
public final class AVLogger {
    public static final boolean DEBUG = false;
    public static final String FORMAT = "<%s,%x>%s";
    public static final int LEVEL_LOG_ALL = 0;
    public static final int LEVEL_LOG_DEBUG = 16777216;
    public static final int LEVEL_LOG_ERROR = 67108864;
    public static final int LEVEL_LOG_FATAL = 83886080;
    public static final int LEVEL_LOG_INFO = 33554432;
    public static final int LEVEL_LOG_INFO_KILL = 34603008;
    public static final int LEVEL_LOG_INFO_TRACK_FUNC = 42860544;
    public static final int LEVEL_LOG_INFO_TRACK_LIFE = 42926080;
    public static final int LEVEL_LOG_SILENT = 100663296;
    public static final int LEVEL_LOG_VERBOSE = 0;
    public static final int LEVEL_LOG_WARN = 50331648;
    private static final String TAG = "ttmj";
    private static final String TTVideoEngineLog = "com.ss.ttvideoengine.utils.TTVideoEngineLog";
    private static int gLogLevel = 33554432;
    private static Method methodLogD;
    private static Method methodLogE;
    private static Method methodLogI;
    private static Method methodLogW;
    private static Class<?> objectTTVideoEngineLog;

    public static void Error(String str, Object obj, String str2) {
        log(67108864, str, obj, str2);
    }

    public static void Info(String str, Object obj, String str2) {
        log(33554432, str, obj, str2);
    }

    public static void InfoKill(String str, Object obj, String str2) {
        log(34603008, str, obj, str2);
    }

    public static void InfoTrackFunc(String str, Object obj, String str2) {
        log(42860544, str, obj, str2);
    }

    public static void InfoTrackLife(String str, Object obj, String str2) {
        log(42926080, str, obj, str2);
    }

    public static void Warn(String str, Object obj, String str2) {
        log(50331648, str, obj, str2);
    }

    public static void d(String str, String str2) {
        Debug(str, null, str2);
    }

    public static void e(String str, String str2) {
        Error(str, null, str2);
    }

    public static void i(String str, String str2) {
        Info(str, null, str2);
    }

    public static void k(String str, String str2) {
        InfoKill(str, null, str2);
    }

    private static void log(int i10, String str, Object obj, String str2) {
        int hashCode;
        if (i10 < (gLogLevel & SupportMenu.CATEGORY_MASK)) {
            return;
        }
        if (objectTTVideoEngineLog == null) {
            try {
                objectTTVideoEngineLog = TTVideoEngineLog.class;
                methodLogD = TTVideoEngineLog.class.getMethod("d", String.class, String.class);
                methodLogI = objectTTVideoEngineLog.getMethod("i", String.class, String.class);
                methodLogW = objectTTVideoEngineLog.getMethod(SRStrategy.MEDIAINFO_KEY_WIDTH, String.class, String.class);
                methodLogE = objectTTVideoEngineLog.getMethod("e", String.class, String.class);
            } catch (Exception e10) {
                objectTTVideoEngineLog = null;
                Log.e(TAG, "reflect failed! e:" + e10);
                return;
            }
        }
        Locale locale = Locale.US;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        String format = String.format(locale, FORMAT, str, Integer.valueOf(hashCode), str2);
        try {
            if (i10 != 0 && i10 != 16777216) {
                if (i10 != 33554432 && i10 != 34603008 && i10 != 42860544 && i10 != 42926080) {
                    if (i10 != 50331648) {
                        if (i10 == 67108864) {
                            methodLogE.invoke(objectTTVideoEngineLog, TAG, format);
                        }
                    } else {
                        methodLogW.invoke(objectTTVideoEngineLog, TAG, format);
                    }
                } else {
                    methodLogI.invoke(objectTTVideoEngineLog, TAG, format);
                }
            } else {
                methodLogD.invoke(objectTTVideoEngineLog, TAG, format);
            }
        } catch (Exception e11) {
            Log.e(TAG, "invoke failed! e:" + e11);
        }
    }

    public static void setLogLevel(int i10) {
        gLogLevel = i10;
    }

    public static void v(String str, String str2) {
        Verbose(str, null, str2);
    }

    public static void w(String str, String str2) {
        Warn(str, null, str2);
    }

    public static void Debug(String str, Object obj, String str2) {
    }

    public static void Verbose(String str, Object obj, String str2) {
    }
}
