package com.bytedance.sdk.component.so.tB;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class ex implements ThreadFactory {
    public static volatile boolean tB;
    protected final String ZYk;
    private final AtomicInteger ex = new AtomicInteger(1);
    protected final ThreadGroup oJ;

    public ex(String str) {
        this.oJ = new ThreadGroup("pag_g_".concat(String.valueOf(str)));
        this.ZYk = oJ(str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        if (tB) {
            return null;
        }
        ThreadGroup threadGroup = this.oJ;
        Thread oJ = oJ(threadGroup, runnable, this.ZYk + "_" + this.ex.getAndIncrement());
        if (oJ.isDaemon()) {
            oJ.setDaemon(false);
        }
        return oJ;
    }

    protected Thread oJ(ThreadGroup threadGroup, Runnable runnable, String str) {
        return new Thread(threadGroup, runnable, str);
    }

    public static String oJ(String str) {
        return "pag_".concat(String.valueOf(str));
    }
}
