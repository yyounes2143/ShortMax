package com.bytedance.sdk.component.adexpress.ex;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class ex {
    public static void ZYk(com.bytedance.sdk.component.so.so soVar, int i10) {
        ExecutorService executorService;
        if (soVar == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.oJ.oJ.tB tB = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB();
        if (tB != null) {
            executorService = tB.PiB();
        } else {
            executorService = null;
        }
        if (executorService != null) {
            soVar.setPriority(i10);
            executorService.execute(soVar);
            return;
        }
        com.bytedance.sdk.component.so.ba.oJ(soVar);
    }

    public static void oJ(com.bytedance.sdk.component.so.so soVar, int i10) {
        if (soVar == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.oJ.oJ.tB tB = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB();
        ExecutorService WcQ = tB != null ? tB.WcQ() : null;
        if (WcQ != null) {
            soVar.setPriority(i10);
            WcQ.execute(soVar);
            return;
        }
        com.bytedance.sdk.component.so.ba.oJ(soVar, i10);
    }

    public static ScheduledFuture oJ(Runnable runnable, long j10, TimeUnit timeUnit) {
        return com.bytedance.sdk.component.so.ba.ba().schedule(runnable, j10, timeUnit);
    }
}
