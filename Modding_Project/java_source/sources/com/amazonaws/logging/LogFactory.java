package com.amazonaws.logging;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class LogFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5056a = "LogFactory";

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, Log> f5057b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static Level f5058c = null;

    /* loaded from: classes2.dex */
    public enum Level {
        ALL(Integer.MIN_VALUE),
        TRACE(0),
        DEBUG(1),
        INFO(2),
        WARN(3),
        ERROR(4),
        OFF(Integer.MAX_VALUE);
        
        private final int value;

        Level(int i10) {
            this.value = i10;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static Level a() {
        return f5058c;
    }

    public static synchronized Log b(Class<?> cls) {
        Log c10;
        synchronized (LogFactory.class) {
            c10 = c(d(cls.getSimpleName()));
        }
        return c10;
    }

    public static synchronized Log c(String str) {
        Log androidLog;
        synchronized (LogFactory.class) {
            try {
                String d10 = d(str);
                Map<String, Log> map = f5057b;
                Log log = map.get(d10);
                if (log != null) {
                    return log;
                }
                if (Environment.a()) {
                    androidLog = new ConsoleLog(d10);
                } else {
                    androidLog = new AndroidLog(d10);
                }
                map.put(d10, androidLog);
                return androidLog;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static String d(String str) {
        if (str.length() > 23) {
            c(f5056a).g("Truncating log tag length as it exceed 23, the limit imposed by Android on certain API Levels");
            return str.substring(0, 23);
        }
        return str;
    }
}
