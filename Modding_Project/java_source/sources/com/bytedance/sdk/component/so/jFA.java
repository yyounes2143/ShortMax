package com.bytedance.sdk.component.so;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class jFA implements ThreadFactory {
    public static final String THREAD_GROUP_NAME_PRE = "csj_g_";
    public static final String THREAD_NAME_PRE = "csj_";
    public static volatile boolean sCrashHappened;
    protected final String ZYk;
    private final AtomicInteger ex;
    protected final ThreadGroup oJ;
    protected int tB;

    public jFA(String str) {
        this(5, str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        if (sCrashHappened) {
            return null;
        }
        ThreadGroup threadGroup = this.oJ;
        Thread oJ = oJ(threadGroup, runnable, this.ZYk + this.ex.getAndIncrement());
        if (oJ.isDaemon()) {
            oJ.setDaemon(false);
        }
        int i10 = this.tB;
        if (i10 > 10 || i10 <= 0) {
            this.tB = 5;
        }
        oJ.setPriority(this.tB);
        return oJ;
    }

    protected Thread oJ(ThreadGroup threadGroup, Runnable runnable, String str) {
        return new Thread(threadGroup, runnable, str);
    }

    public jFA(int i10, String str) {
        this.ex = new AtomicInteger(1);
        this.tB = i10;
        this.oJ = new ThreadGroup(THREAD_GROUP_NAME_PRE.concat(String.valueOf(str)));
        this.ZYk = THREAD_NAME_PRE.concat(String.valueOf(str));
    }
}
