package com.bytedance.applog.log;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public abstract class AbstractAppLogLogger implements IAppLogLogger {
    private static final char CHAR_PLACEHOLDER = ' ';
    private static final Map<String, IAppLogLogger> loggerMap = new ConcurrentHashMap();
    private String appId;
    private final List<String> loggerTags;

    public AbstractAppLogLogger() {
        ArrayList arrayList = new ArrayList();
        this.loggerTags = arrayList;
        arrayList.add("logger@" + hashCode());
    }

    public static IAppLogLogger getLogger(String str) {
        return loggerMap.get(str);
    }

    private String toString(Object obj) {
        if (obj != null) {
            return obj.toString();
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String format(String str, Object... objArr) {
        char c10;
        try {
            StringBuilder sb2 = new StringBuilder();
            if (objArr != null && objArr.length != 0 && str.contains(JsonUtils.EMPTY_JSON)) {
                int length = str.length();
                int i10 = 0;
                int i11 = 0;
                while (i10 < length) {
                    char charAt = str.charAt(i10);
                    if (i10 < length - 1) {
                        c10 = str.charAt(i10 + 1);
                    } else {
                        c10 = CHAR_PLACEHOLDER;
                    }
                    if (charAt == '{' && c10 == '}') {
                        if (i11 < objArr.length) {
                            sb2.append(toString(objArr[i11]));
                            i11++;
                        }
                        i10++;
                    } else {
                        sb2.append(charAt);
                    }
                    i10++;
                }
                return sb2.toString();
            }
            sb2.append(str);
            return sb2.toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<String> getTags(List<String> list) {
        if (list != null && list.size() > 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.loggerTags);
            arrayList.addAll(list);
            return arrayList;
        }
        return this.loggerTags;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(int i10, int i11, List<String> list, Throwable th2, String str, Object... objArr) {
        if (LogProcessorHolder.noAnyProcessor()) {
            return;
        }
        LogInfo build = LogInfo.builder().appId(this.appId).category(i10).level(i11).thread(Thread.currentThread().getName()).throwable(th2).tags(getTags(list)).message(format(str, objArr)).build();
        LogProcessorHolder.commonProcess(build);
        ILogProcessor appProcessor = LogProcessorHolder.getAppProcessor(this.appId);
        if (appProcessor != null) {
            appProcessor.onLog(build);
        }
    }

    @Override // com.bytedance.applog.log.IAppLogLogger
    public void setAppId(String str) {
        this.appId = str;
        loggerMap.put(str, this);
        debug("Current logger bind to appId {}", str);
    }
}
