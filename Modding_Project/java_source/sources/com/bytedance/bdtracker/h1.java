package com.bytedance.bdtracker;

import com.bytedance.applog.ILogger;
import com.bytedance.applog.log.ILogProcessor;
import com.bytedance.applog.log.LogInfo;
/* loaded from: classes3.dex */
public class h1 implements ILogProcessor {

    /* renamed from: a  reason: collision with root package name */
    public final ILogger f12041a;

    public h1(ILogger iLogger) {
        this.f12041a = iLogger;
    }

    @Override // com.bytedance.applog.log.ILogProcessor
    public void onLog(LogInfo logInfo) {
        ILogger iLogger = this.f12041a;
        if (iLogger != null) {
            iLogger.log(logInfo.getMessage(), logInfo.getThrowable());
        }
    }
}
