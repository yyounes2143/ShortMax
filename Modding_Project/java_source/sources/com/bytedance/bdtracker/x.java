package com.bytedance.bdtracker;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public static ExecutorService f12504a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f12505b;

    /* renamed from: c  reason: collision with root package name */
    public static final int f12506c;

    /* renamed from: d  reason: collision with root package name */
    public static final int f12507d;

    /* renamed from: e  reason: collision with root package name */
    public static final int f12508e;

    /* renamed from: f  reason: collision with root package name */
    public static final BlockingQueue<Runnable> f12509f;

    /* renamed from: g  reason: collision with root package name */
    public static final b f12510g;

    /* renamed from: h  reason: collision with root package name */
    public static final RejectedExecutionHandler f12511h;

    /* loaded from: classes3.dex */
    public static class a implements RejectedExecutionHandler {
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            Executors.newCachedThreadPool().execute(runnable);
        }
    }

    /* loaded from: classes3.dex */
    public static class b implements ThreadFactory {

        /* renamed from: d  reason: collision with root package name */
        public static final AtomicInteger f12512d = new AtomicInteger(1);

        /* renamed from: a  reason: collision with root package name */
        public final ThreadGroup f12513a;

        /* renamed from: b  reason: collision with root package name */
        public final AtomicInteger f12514b = new AtomicInteger(1);

        /* renamed from: c  reason: collision with root package name */
        public final String f12515c;

        public b(String str) {
            ThreadGroup threadGroup;
            SecurityManager securityManager = System.getSecurityManager();
            if (securityManager != null) {
                threadGroup = securityManager.getThreadGroup();
            } else {
                threadGroup = Thread.currentThread().getThreadGroup();
            }
            this.f12513a = threadGroup;
            this.f12515c = str + "-" + f12512d.getAndIncrement() + "-Thread-";
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f12513a;
            Thread thread = new Thread(threadGroup, runnable, this.f12515c + this.f12514b.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f12505b = availableProcessors;
        if (availableProcessors <= 0) {
            availableProcessors = 1;
        }
        f12506c = availableProcessors;
        int max = Math.max(2, Math.min(availableProcessors - 1, 6));
        int i10 = max * 2;
        f12507d = i10;
        int i11 = (max * 4) + 1;
        f12508e = i11;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        f12509f = linkedBlockingQueue;
        b bVar = new b("TTDefaultExecutors");
        f12510g = bVar;
        a aVar = new a();
        f12511h = aVar;
        y yVar = new y(i10, i11, 30L, TimeUnit.SECONDS, linkedBlockingQueue, bVar, aVar);
        f12504a = yVar;
        yVar.allowCoreThreadTimeOut(true);
    }
}
