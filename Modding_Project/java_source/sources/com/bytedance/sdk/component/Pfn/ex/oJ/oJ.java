package com.bytedance.sdk.component.Pfn.ex.oJ;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class oJ implements ThreadFactory {
    private final AtomicInteger ZYk = new AtomicInteger(1);
    private final ThreadGroup oJ;

    public oJ(String str) {
        this.oJ = new ThreadGroup("tt_img_".concat(String.valueOf(str)));
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        ThreadGroup threadGroup = this.oJ;
        Thread thread = new Thread(threadGroup, runnable, "tt_img_" + this.ZYk.getAndIncrement());
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        return thread;
    }
}
