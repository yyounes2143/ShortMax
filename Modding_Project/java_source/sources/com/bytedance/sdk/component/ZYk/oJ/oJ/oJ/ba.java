package com.bytedance.sdk.component.ZYk.oJ.oJ.oJ;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class ba extends com.bytedance.sdk.component.ZYk.oJ.ex {
    private ExecutorService oJ;
    private List<com.bytedance.sdk.component.ZYk.oJ.ZYk> ZYk = new CopyOnWriteArrayList();
    private List<com.bytedance.sdk.component.ZYk.oJ.ZYk> tB = new CopyOnWriteArrayList();
    private AtomicInteger ex = new AtomicInteger(64);

    public ba() {
        if (this.oJ == null) {
            this.oJ = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 20L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.bytedance.sdk.component.ZYk.oJ.oJ.oJ.ba.1
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable, "systemHttp Dispatcher");
                    thread.setDaemon(false);
                    thread.setPriority(10);
                    return thread;
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ex
    public ExecutorService ZYk() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ex
    public List<com.bytedance.sdk.component.ZYk.oJ.ZYk> ex() {
        return this.tB;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ex
    public void oJ(int i10) {
        this.ex.set(i10);
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ex
    public List<com.bytedance.sdk.component.ZYk.oJ.ZYk> tB() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ex
    public int oJ() {
        return this.ex.get();
    }
}
