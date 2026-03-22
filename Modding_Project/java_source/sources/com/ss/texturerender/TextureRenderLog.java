package com.ss.texturerender;

import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes6.dex */
public class TextureRenderLog {
    public static final int LOG_DEBUG = 1;
    public static final int LOG_ERROR = 6;
    public static final int LOG_INFO = 2;
    public static final int LOG_KILL = 4;
    public static final int LOG_TRACK = 3;
    public static final int LOG_VERBOSE = 0;
    public static final int LOG_WARN = 5;
    private static OnLogListener mLogListener;
    private static ConcurrentHashMap<Integer, OnLogListenerExt> mLogListenerExts = new ConcurrentHashMap<>();

    /* loaded from: classes6.dex */
    public interface OnLogListener {
        int log(String str, String str2);
    }

    /* loaded from: classes6.dex */
    public interface OnLogListenerExt {
        void d(String str, String str2);

        void e(String str, String str2);

        void i(String str, String str2);

        void k(String str, String str2);

        void t(String str, String str2);

        void w(String str, String str2);
    }

    public static void d(int i10, String str, String str2) {
        log(1, i10, str, str2);
    }

    public static void e(int i10, String str, String str2) {
        log(6, i10, str, str2);
    }

    public static void i(int i10, String str, String str2) {
        log(2, i10, str, str2);
    }

    public static void k(int i10, String str, String str2) {
        log(4, i10, str, str2);
    }

    private static synchronized void log(int i10, int i11, String str, String str2) {
        synchronized (TextureRenderLog.class) {
            try {
                ConcurrentHashMap<Integer, OnLogListenerExt> concurrentHashMap = mLogListenerExts;
                if (concurrentHashMap != null) {
                    if (i11 == -1) {
                        for (OnLogListenerExt onLogListenerExt : concurrentHashMap.values()) {
                            notifyListener(i10, onLogListenerExt, str, str2);
                        }
                    } else {
                        OnLogListenerExt onLogListenerExt2 = concurrentHashMap.get(Integer.valueOf(i11));
                        if (onLogListenerExt2 != null) {
                            notifyListener(i10, onLogListenerExt2, str, str2);
                        }
                        OnLogListenerExt onLogListenerExt3 = mLogListenerExts.get(-1);
                        if (onLogListenerExt3 != null) {
                            notifyListener(i10, onLogListenerExt3, str, str2);
                        }
                    }
                }
                OnLogListener onLogListener = mLogListener;
                if (onLogListener != null) {
                    onLogListener.log(str, str2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void notifyListener(int i10, OnLogListenerExt onLogListenerExt, String str, String str2) {
        switch (i10) {
            case 1:
                onLogListenerExt.d(str, str2);
                return;
            case 2:
                onLogListenerExt.i(str, str2);
                return;
            case 3:
                onLogListenerExt.t(str, str2);
                return;
            case 4:
                onLogListenerExt.k(str, str2);
                return;
            case 5:
                onLogListenerExt.w(str, str2);
                return;
            case 6:
                onLogListenerExt.e(str, str2);
                return;
            default:
                return;
        }
    }

    public static synchronized void setOnLogListener(OnLogListener onLogListener) {
        synchronized (TextureRenderLog.class) {
            mLogListener = onLogListener;
        }
    }

    public static synchronized void setOnLogListenerExt(int i10, OnLogListenerExt onLogListenerExt) {
        synchronized (TextureRenderLog.class) {
            ConcurrentHashMap<Integer, OnLogListenerExt> concurrentHashMap = mLogListenerExts;
            if (concurrentHashMap != null) {
                concurrentHashMap.put(Integer.valueOf(i10), onLogListenerExt);
            }
        }
    }

    public static void t(int i10, String str, String str2) {
        log(3, i10, str, str2);
    }

    public static void w(int i10, String str, String str2) {
        log(5, i10, str, str2);
    }
}
