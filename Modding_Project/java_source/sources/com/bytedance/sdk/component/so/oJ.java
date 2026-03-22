package com.bytedance.sdk.component.so;

import android.os.Looper;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class oJ extends ThreadPoolExecutor {
    private String oJ;

    /* renamed from: com.bytedance.sdk.component.so.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0178oJ {

        /* renamed from: so  reason: collision with root package name */
        private RejectedExecutionHandler f12808so;
        private String oJ = "io";
        private int ZYk = 1;
        private long tB = 30;
        private TimeUnit ex = TimeUnit.SECONDS;
        private int Pfn = Integer.MAX_VALUE;

        /* renamed from: ba  reason: collision with root package name */
        private BlockingQueue<Runnable> f12807ba = null;
        private ThreadFactory cFZ = null;
        private int jFA = 5;

        public C0178oJ ZYk(int i10) {
            this.jFA = i10;
            return this;
        }

        public C0178oJ oJ(String str) {
            this.oJ = str;
            return this;
        }

        public C0178oJ oJ(int i10) {
            this.ZYk = i10;
            return this;
        }

        public C0178oJ oJ(long j10) {
            this.tB = j10;
            return this;
        }

        public C0178oJ oJ(TimeUnit timeUnit) {
            this.ex = timeUnit;
            return this;
        }

        public C0178oJ oJ(BlockingQueue<Runnable> blockingQueue) {
            this.f12807ba = blockingQueue;
            return this;
        }

        public C0178oJ oJ(ThreadFactory threadFactory) {
            this.cFZ = threadFactory;
            return this;
        }

        public C0178oJ oJ(RejectedExecutionHandler rejectedExecutionHandler) {
            this.f12808so = rejectedExecutionHandler;
            return this;
        }

        public oJ oJ() {
            if (this.cFZ == null) {
                this.cFZ = Pfn.oJ().createThreadFactory(this.jFA, this.oJ);
            }
            if (this.f12808so == null) {
                this.f12808so = ba.so();
            }
            if (this.f12807ba == null) {
                this.f12807ba = new LinkedBlockingQueue();
            }
            return new oJ(this.oJ, this.ZYk, this.Pfn, this.tB, this.ex, this.f12807ba, this.cFZ, this.f12808so);
        }
    }

    public oJ(String str, int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i10, i11, j10, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.oJ = str;
    }

    private void oJ(Runnable runnable) {
        try {
            super.execute(runnable);
        } catch (OutOfMemoryError e10) {
            oJ(runnable, e10);
        } catch (Throwable th2) {
            oJ(runnable, th2);
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th2) {
        BlockingQueue<Runnable> queue;
        super.afterExecute(runnable, th2);
        if (ba.cFZ() && !TextUtils.isEmpty(this.oJ) && (queue = getQueue()) != null) {
            String str = this.oJ;
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case 3366:
                    if (str.equals("io")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 107332:
                    if (str.equals("log")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 2993840:
                    if (str.equals("aidl")) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    oJ(queue, 2);
                    return;
                case 1:
                    oJ(queue, 4);
                    return;
                case 2:
                    oJ(queue, 2);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        BlockingQueue<Runnable> queue;
        if (runnable instanceof so) {
            oJ(new ZYk((so) runnable, this));
        } else {
            oJ(new ZYk(new so("unknown") { // from class: com.bytedance.sdk.component.so.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    runnable.run();
                }
            }, this));
        }
        if (ba.cFZ() && !TextUtils.isEmpty(this.oJ) && (queue = getQueue()) != null) {
            String str = this.oJ;
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case 3366:
                    if (str.equals("io")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 107332:
                    if (str.equals("log")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 2993840:
                    if (str.equals("aidl")) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    oJ(queue, ba.oJ + 2, getCorePoolSize() * 2);
                    return;
                case 1:
                    oJ(queue, 8, 8);
                    return;
                case 2:
                    oJ(queue, 5, 5);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public void shutdown() {
        if (!"io".equals(this.oJ) && !"aidl".equals(this.oJ)) {
            super.shutdown();
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        if (!"io".equals(this.oJ) && !"aidl".equals(this.oJ)) {
            return super.shutdownNow();
        }
        return Collections.emptyList();
    }

    private void oJ(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        oJ(runnable, (Throwable) outOfMemoryError);
    }

    private void oJ(Runnable runnable, Throwable th2) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                runnable.run();
            } catch (Throwable unused) {
            }
        }
    }

    private void oJ(BlockingQueue<Runnable> blockingQueue, int i10) {
        if (getCorePoolSize() == i10 || blockingQueue == null || blockingQueue.size() > 0) {
            return;
        }
        try {
            setCorePoolSize(i10);
            getCorePoolSize();
            getMaximumPoolSize();
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    private void oJ(BlockingQueue<Runnable> blockingQueue, int i10, int i11) {
        if (getCorePoolSize() == i10 || blockingQueue == null || blockingQueue.size() < i11) {
            return;
        }
        try {
            setCorePoolSize(i10);
            getCorePoolSize();
            getMaximumPoolSize();
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    public String oJ() {
        return this.oJ;
    }
}
