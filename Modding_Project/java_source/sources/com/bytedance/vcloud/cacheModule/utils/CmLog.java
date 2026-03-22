package com.bytedance.vcloud.cacheModule.utils;

import android.util.Log;
import com.bytedance.vcloud.cacheModule.BuildConfig;
import com.bytedance.vcloud.cacheModule.CacheModuleLoader;
import com.bytedance.vcloud.cacheModule.CalledByNative;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class CmLog {
    private static final String FORMAT = "<%s>%s";
    private static final String PROP_KEY = "debug.cacheModule.log.enable";
    private static final String TAG = "PlaylistCacheModule";
    private static final String VERSION_FORMAT = "[%s]<%s>%s";
    private static AlogCallback sAlogCallback = null;
    private static final Map<LogLevel, Boolean> sLogLevelMap = new HashMap();
    private static volatile boolean sPropLogOpened = false;

    /* loaded from: classes3.dex */
    public interface AlogCallback {
        void onLogCallback(LogLevel logLevel, String str, String str2);
    }

    /* loaded from: classes3.dex */
    public enum LogLevel {
        V,
        D,
        I,
        W,
        E
    }

    static {
        CacheModuleLoader.loadLibrary();
        initDefaultLogLevel();
        initLogLevelFromProp();
        sAlogCallback = null;
    }

    private static native void _log(int i10, String str, String str2);

    private static native void _setAlogJavaFunc(boolean z10);

    private static native void _setAlogWriteFunc(long j10);

    private static native void _turnLogLevel(int i10, boolean z10);

    private static LogLevel convertLevel(int i10) {
        LogLevel logLevel = LogLevel.V;
        if (i10 == logLevel.ordinal()) {
            return logLevel;
        }
        LogLevel logLevel2 = LogLevel.D;
        if (i10 == logLevel2.ordinal()) {
            return logLevel2;
        }
        LogLevel logLevel3 = LogLevel.I;
        if (i10 == logLevel3.ordinal()) {
            return logLevel3;
        }
        LogLevel logLevel4 = LogLevel.W;
        if (i10 == logLevel4.ordinal()) {
            return logLevel4;
        }
        LogLevel logLevel5 = LogLevel.E;
        if (i10 == logLevel5.ordinal()) {
            return logLevel5;
        }
        return logLevel;
    }

    public static void d(String str, String str2) {
        Map<LogLevel, Boolean> map = sLogLevelMap;
        LogLevel logLevel = LogLevel.D;
        if (map.get(logLevel) == Boolean.TRUE) {
            log(logLevel.ordinal(), TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static void defaultSystemLog(int i10, String str, String str2) {
        if (i10 == LogLevel.E.ordinal()) {
            Log.e(str, str2);
        } else if (i10 == LogLevel.W.ordinal()) {
            Log.w(str, str2);
        } else if (i10 == LogLevel.I.ordinal()) {
            Log.i(str, str2);
        } else if (i10 == LogLevel.D.ordinal()) {
            Log.d(str, str2);
        } else if (i10 == LogLevel.V.ordinal()) {
            Log.v(str, str2);
        }
    }

    public static void e(String str, String str2) {
        Map<LogLevel, Boolean> map = sLogLevelMap;
        LogLevel logLevel = LogLevel.E;
        if (map.get(logLevel) == Boolean.TRUE) {
            log(logLevel.ordinal(), TAG, String.format(VERSION_FORMAT, BuildConfig.VERSION, str, str2));
        }
    }

    public static void i(String str, String str2) {
        Map<LogLevel, Boolean> map = sLogLevelMap;
        LogLevel logLevel = LogLevel.I;
        if (map.get(logLevel) == Boolean.TRUE) {
            log(logLevel.ordinal(), TAG, String.format(VERSION_FORMAT, BuildConfig.VERSION, str, str2));
        }
    }

    private static synchronized void initDefaultLogLevel() {
        synchronized (CmLog.class) {
            turnLogLevelInner(LogLevel.W, true);
        }
    }

    private static void initLogLevelFromProp() {
        new Thread(new Runnable() { // from class: com.bytedance.vcloud.cacheModule.utils.CmLog.1
            /* JADX WARN: Not initialized variable reg: 2, insn: 0x007c: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:19:0x007c */
            @Override // java.lang.Runnable
            public void run() {
                InputStreamReader inputStreamReader;
                IOException e10;
                BufferedReader bufferedReader;
                BufferedReader bufferedReader2;
                Process exec;
                BufferedReader bufferedReader3 = null;
                try {
                    try {
                        exec = Runtime.getRuntime().exec("getprop debug.cacheModule.log.enable");
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader3 = bufferedReader2;
                    }
                } catch (IOException e11) {
                    inputStreamReader = null;
                    e10 = e11;
                    bufferedReader = null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStreamReader = null;
                }
                if (exec == null) {
                    return;
                }
                inputStreamReader = new InputStreamReader(exec.getInputStream());
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                    try {
                        Log.d(CmLog.TAG, "start read prop: debug.cacheModule.log.enable");
                        StringWriter stringWriter = new StringWriter();
                        char[] cArr = new char[1024];
                        int i10 = 0;
                        do {
                            int read = bufferedReader.read(cArr);
                            if (read == -1) {
                                break;
                            }
                            i10 += read;
                        } while (bufferedReader.ready());
                        stringWriter.write(cArr, 0, i10);
                        String replaceAll = stringWriter.toString().replaceAll("\n", "");
                        Log.w(CmLog.TAG, "prop debug.cacheModule.log.enable = " + replaceAll + " , len :" + i10);
                        boolean unused = CmLog.sPropLogOpened = "true".equalsIgnoreCase(replaceAll);
                        if (CmLog.sPropLogOpened) {
                            CmLog.openAllLogLevel();
                        }
                        try {
                            bufferedReader.close();
                        } catch (IOException unused2) {
                        }
                    } catch (IOException e12) {
                        e10 = e12;
                        Log.w(CmLog.TAG, "get prop debug.cacheModule.log.enable exception : " + e10.getMessage());
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (inputStreamReader == null) {
                            return;
                        }
                        inputStreamReader.close();
                    }
                } catch (IOException e13) {
                    bufferedReader = null;
                    e10 = e13;
                } catch (Throwable th4) {
                    th = th4;
                    if (bufferedReader3 != null) {
                        try {
                            bufferedReader3.close();
                        } catch (IOException unused4) {
                        }
                    }
                    if (inputStreamReader != null) {
                        try {
                            inputStreamReader.close();
                        } catch (IOException unused5) {
                        }
                    }
                    throw th;
                }
                try {
                    inputStreamReader.close();
                } catch (IOException unused6) {
                }
            }
        }).start();
    }

    private static void log(int i10, String str, String str2) {
        try {
            _log(i10, str, str2);
        } catch (UnsatisfiedLinkError unused) {
            defaultSystemLog(i10, str, str2);
        }
    }

    @CalledByNative
    private static void nOnLogCallback(int i10, String str, String str2) {
        AlogCallback alogCallback = sAlogCallback;
        if (alogCallback == null) {
            return;
        }
        alogCallback.onLogCallback(convertLevel(i10), str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void openAllLogLevel() {
        synchronized (CmLog.class) {
            turnLogLevelInner(LogLevel.V, true);
        }
    }

    public static void setAlogCallback(AlogCallback alogCallback) {
        boolean z10;
        sAlogCallback = alogCallback;
        if (CacheModuleLoader.inited) {
            try {
                if (sAlogCallback != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                _setAlogJavaFunc(z10);
            } catch (UnsatisfiedLinkError e10) {
                Log.w(TAG, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public static void setAlogWriteFunc(long j10) {
        if (CacheModuleLoader.inited) {
            try {
                _setAlogWriteFunc(j10);
            } catch (UnsatisfiedLinkError e10) {
                Log.w(TAG, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public static void turnLogLevel(LogLevel logLevel, boolean z10) {
        if (sPropLogOpened) {
            return;
        }
        turnLogLevelInner(logLevel, z10);
    }

    private static void turnLogLevelInner(LogLevel logLevel, boolean z10) {
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        Map<LogLevel, Boolean> map = sLogLevelMap;
        LogLevel logLevel2 = LogLevel.V;
        boolean z15 = false;
        if (z10 && logLevel.ordinal() <= logLevel2.ordinal()) {
            z11 = true;
        } else {
            z11 = false;
        }
        map.put(logLevel2, Boolean.valueOf(z11));
        LogLevel logLevel3 = LogLevel.D;
        if (z10 && logLevel.ordinal() <= logLevel3.ordinal()) {
            z12 = true;
        } else {
            z12 = false;
        }
        map.put(logLevel3, Boolean.valueOf(z12));
        LogLevel logLevel4 = LogLevel.I;
        if (z10 && logLevel.ordinal() <= logLevel4.ordinal()) {
            z13 = true;
        } else {
            z13 = false;
        }
        map.put(logLevel4, Boolean.valueOf(z13));
        LogLevel logLevel5 = LogLevel.W;
        if (z10 && logLevel.ordinal() <= logLevel5.ordinal()) {
            z14 = true;
        } else {
            z14 = false;
        }
        map.put(logLevel5, Boolean.valueOf(z14));
        LogLevel logLevel6 = LogLevel.E;
        if (z10 && logLevel.ordinal() <= logLevel6.ordinal()) {
            z15 = true;
        }
        map.put(logLevel6, Boolean.valueOf(z15));
        if (CacheModuleLoader.inited) {
            try {
                _turnLogLevel(logLevel.ordinal(), z10);
            } catch (UnsatisfiedLinkError e10) {
                Log.w(TAG, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public static void v(String str, String str2) {
        Map<LogLevel, Boolean> map = sLogLevelMap;
        LogLevel logLevel = LogLevel.V;
        if (map.get(logLevel) == Boolean.TRUE) {
            log(logLevel.ordinal(), TAG, String.format("<%s>%s", str, str2));
        }
    }

    public static void w(String str, String str2) {
        Map<LogLevel, Boolean> map = sLogLevelMap;
        LogLevel logLevel = LogLevel.W;
        if (map.get(logLevel) == Boolean.TRUE) {
            log(logLevel.ordinal(), TAG, String.format(VERSION_FORMAT, BuildConfig.VERSION, str, str2));
        }
    }
}
