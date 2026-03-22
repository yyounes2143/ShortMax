package com.bytedance.sdk.openadsdk.QSm;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class ZYk {
    private oJ Pfn;
    private so ZYk;
    private int ex;
    private ScheduledExecutorService oJ = null;
    private long tB = 0;

    /* loaded from: classes3.dex */
    public interface oJ {
    }

    public ZYk(so soVar, int i10) {
        this.ZYk = soVar;
        this.ex = i10;
    }

    public boolean ZYk() {
        ScheduledExecutorService scheduledExecutorService = this.oJ;
        if (scheduledExecutorService != null) {
            return scheduledExecutorService.isShutdown();
        }
        return true;
    }

    public void oJ(long j10) {
        this.tB = j10;
    }

    public void oJ(int i10) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1);
        this.oJ = newScheduledThreadPool;
        newScheduledThreadPool.scheduleAtFixedRate(new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.ZYk.1
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                long unused = ZYk.this.tB;
                if (System.currentTimeMillis() - ZYk.this.tB > ZYk.this.ex) {
                    ZYk.this.oJ.shutdown();
                    if (ZYk.this.ZYk != null) {
                        ZYk.this.ZYk.ZYk(0, "Automatic detection of stuck");
                    }
                    if (ZYk.this.Pfn != null) {
                        oJ unused2 = ZYk.this.Pfn;
                    }
                }
            }
        }, 0L, i10, TimeUnit.MILLISECONDS);
    }

    public void oJ() {
        ScheduledExecutorService scheduledExecutorService = this.oJ;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
        }
    }
}
