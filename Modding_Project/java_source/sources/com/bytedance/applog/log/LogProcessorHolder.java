package com.bytedance.applog.log;

import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes3.dex */
public class LogProcessorHolder {
    private static final CopyOnWriteArraySet<ILogProcessor> commonProcessors = new CopyOnWriteArraySet<>();
    private static final Map<String, ILogProcessor> mAppProcessors = new ConcurrentHashMap();

    public static void addProcessor(ILogProcessor iLogProcessor) {
        commonProcessors.add(iLogProcessor);
    }

    public static void commonProcess(LogInfo logInfo) {
        if (logInfo == null || commonProcessors.isEmpty()) {
            return;
        }
        Iterator<ILogProcessor> commonProcessors2 = getCommonProcessors();
        while (commonProcessors2.hasNext()) {
            commonProcessors2.next().onLog(logInfo);
        }
    }

    public static ILogProcessor getAppProcessor(String str) {
        if (isNotEmpty(str)) {
            return mAppProcessors.get(str);
        }
        return null;
    }

    public static Iterator<ILogProcessor> getAppProcessors() {
        return mAppProcessors.values().iterator();
    }

    public static Iterator<ILogProcessor> getCommonProcessors() {
        return commonProcessors.iterator();
    }

    private static boolean isNotEmpty(String str) {
        if (str != null && str.length() > 0) {
            return true;
        }
        return false;
    }

    public static boolean noAnyProcessor() {
        if (commonProcessors.isEmpty() && mAppProcessors.isEmpty()) {
            return true;
        }
        return false;
    }

    public static void setProcessor(String str, ILogProcessor iLogProcessor) {
        mAppProcessors.put(str, iLogProcessor);
    }
}
