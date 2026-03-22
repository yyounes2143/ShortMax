package com.bytedance.bdtracker;

import android.util.Log;
import com.bytedance.applog.log.ILogProcessor;
import com.bytedance.applog.log.LogInfo;
import com.bytedance.applog.log.LogInfoBuilder;
/* loaded from: classes3.dex */
public class g1 implements ILogProcessor {
    public g1(d dVar) {
        LogInfoBuilder thread = LogInfo.builder().appId(dVar.f11913m).level(1).thread(Thread.currentThread().getName());
        StringBuilder a10 = a.a("Console logger debug is:");
        a10.append(dVar.G);
        onLog(thread.message(a10.toString()).build());
    }

    @Override // com.bytedance.applog.log.ILogProcessor
    public void onLog(LogInfo logInfo) {
        int level = logInfo.getLevel();
        if (level != 2) {
            if (level != 3) {
                if (level != 4 && level != 5) {
                    Log.d("AppLog", logInfo.toLiteString());
                    return;
                } else {
                    Log.e("AppLog", logInfo.toLiteString(), logInfo.getThrowable());
                    return;
                }
            }
            Log.w("AppLog", logInfo.toLiteString(), logInfo.getThrowable());
            return;
        }
        Log.i("AppLog", logInfo.toLiteString());
    }
}
