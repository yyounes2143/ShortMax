package com.adjust.sdk.scheduler;

import com.adjust.sdk.AdjustFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class SingleThreadCachedScheduler implements ThreadScheduler {
    private ThreadPoolExecutor threadPoolExecutor;
    private final List<Runnable> queue = new ArrayList();
    private boolean isThreadProcessing = false;
    private boolean isTeardown = false;

    /* loaded from: classes2.dex */
    public class a implements RejectedExecutionHandler {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f4370a;

        public a(String str) {
            this.f4370a = str;
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            AdjustFactory.getLogger().warn("Runnable [%s] rejected from [%s] ", runnable.toString(), this.f4370a);
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ long f4371a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Runnable f4372b;

        public b(long j10, Runnable runnable) {
            this.f4371a = j10;
            this.f4372b = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                Thread.sleep(this.f4371a);
            } catch (InterruptedException e10) {
                AdjustFactory.getLogger().warn("Sleep delay exception: %s", e10.getMessage());
            }
            SingleThreadCachedScheduler.this.submit(this.f4372b);
        }
    }

    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Runnable f4374a;

        public c(Runnable runnable) {
            this.f4374a = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Runnable runnable;
            SingleThreadCachedScheduler.this.tryExecuteRunnable(this.f4374a);
            while (true) {
                synchronized (SingleThreadCachedScheduler.this.queue) {
                    try {
                        if (SingleThreadCachedScheduler.this.isTeardown) {
                            return;
                        }
                        if (SingleThreadCachedScheduler.this.queue.isEmpty()) {
                            SingleThreadCachedScheduler.this.isThreadProcessing = false;
                            return;
                        } else {
                            runnable = (Runnable) SingleThreadCachedScheduler.this.queue.get(0);
                            SingleThreadCachedScheduler.this.queue.remove(0);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                SingleThreadCachedScheduler.this.tryExecuteRunnable(runnable);
            }
        }
    }

    public SingleThreadCachedScheduler(String str) {
        this.threadPoolExecutor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactoryWrapper(str), new a(str));
    }

    private void processQueue(Runnable runnable) {
        this.threadPoolExecutor.submit(new c(runnable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryExecuteRunnable(Runnable runnable) {
        try {
            if (!this.isTeardown) {
                runnable.run();
            }
        } catch (Throwable th2) {
            AdjustFactory.getLogger().warn("Execution failed: %s", th2.getMessage());
        }
    }

    @Override // com.adjust.sdk.scheduler.ThreadScheduler
    public void schedule(Runnable runnable, long j10) {
        synchronized (this.queue) {
            try {
                if (this.isTeardown) {
                    return;
                }
                this.threadPoolExecutor.submit(new b(j10, runnable));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.adjust.sdk.scheduler.ThreadExecutor
    public void submit(Runnable runnable) {
        synchronized (this.queue) {
            try {
                if (this.isTeardown) {
                    return;
                }
                if (!this.isThreadProcessing) {
                    this.isThreadProcessing = true;
                    processQueue(runnable);
                } else {
                    this.queue.add(runnable);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.adjust.sdk.scheduler.ThreadExecutor
    public void teardown() {
        synchronized (this.queue) {
            this.isTeardown = true;
            this.queue.clear();
            this.threadPoolExecutor.shutdown();
        }
    }
}
