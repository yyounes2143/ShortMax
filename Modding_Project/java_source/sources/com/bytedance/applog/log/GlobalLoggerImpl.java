package com.bytedance.applog.log;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public final class GlobalLoggerImpl extends LoggerImpl {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.applog.log.AbstractAppLogLogger
    public void process(int i10, int i11, List<String> list, Throwable th2, String str, Object... objArr) {
        if (LogProcessorHolder.noAnyProcessor()) {
            return;
        }
        LogInfo build = LogInfo.builder().category(i10).level(i11).thread(Thread.currentThread().getName()).throwable(th2).tags(getTags(list)).message(format(str, objArr)).build();
        LogProcessorHolder.commonProcess(build);
        Iterator<ILogProcessor> appProcessors = LogProcessorHolder.getAppProcessors();
        while (appProcessors.hasNext()) {
            appProcessors.next().onLog(build);
        }
    }

    @Override // com.bytedance.applog.log.AbstractAppLogLogger, com.bytedance.applog.log.IAppLogLogger
    public void setAppId(String str) {
        warn("You should not set appId on global logger instance", new Object[0]);
    }
}
