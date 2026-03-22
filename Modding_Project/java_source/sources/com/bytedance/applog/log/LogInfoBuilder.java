package com.bytedance.applog.log;

import java.util.List;
/* loaded from: classes3.dex */
public class LogInfoBuilder {
    private final LogInfo logInfo = new LogInfo();

    public LogInfoBuilder() {
        time(System.currentTimeMillis());
    }

    public LogInfoBuilder appId(String str) {
        this.logInfo.setAppId(str);
        return this;
    }

    public LogInfo build() {
        return this.logInfo;
    }

    public LogInfoBuilder category(int i10) {
        this.logInfo.setCategory(i10);
        return this;
    }

    public LogInfoBuilder level(int i10) {
        this.logInfo.setLevel(i10);
        return this;
    }

    public LogInfoBuilder message(String str) {
        this.logInfo.setMessage(str);
        return this;
    }

    public LogInfoBuilder tags(List<String> list) {
        this.logInfo.setTags(list);
        return this;
    }

    public LogInfoBuilder thread(String str) {
        this.logInfo.setThread(str);
        return this;
    }

    public LogInfoBuilder throwable(Throwable th2) {
        this.logInfo.setThrowable(th2);
        return this;
    }

    public LogInfoBuilder time(long j10) {
        this.logInfo.setTime(j10);
        return this;
    }
}
