package com.bytedance.sdk.component.so.tB;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class ba extends ThreadPoolExecutor {
    private boolean Pfn;
    private int ZYk;
    private int ex;
    private final String oJ;
    private int tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        private String oJ = "cache";
        private int ZYk = 4;
        private int tB = 100;
        private int ex = 0;
        private long Pfn = 30000;

        /* renamed from: ba  reason: collision with root package name */
        private boolean f12810ba = false;
        private TimeUnit cFZ = TimeUnit.MILLISECONDS;

        /* renamed from: so  reason: collision with root package name */
        private boolean f12811so = false;
        private BlockingQueue<Runnable> jFA = new PriorityBlockingQueue();
        private ThreadFactory kkU = null;

        public oJ Pfn(int i10) {
            return this;
        }

        public oJ ex(int i10) {
            return this;
        }

        public oJ ZYk(int i10) {
            this.tB = i10;
            return this;
        }

        public oJ oJ(String str) {
            this.oJ = str;
            return this;
        }

        public oJ tB(int i10) {
            this.ex = i10;
            return this;
        }

        public oJ ZYk(boolean z10) {
            this.f12811so = z10;
            return this;
        }

        public oJ oJ(int i10) {
            this.ZYk = i10;
            return this;
        }

        public oJ oJ(long j10) {
            this.Pfn = j10;
            return this;
        }

        public oJ oJ(boolean z10) {
            this.f12810ba = z10;
            return this;
        }

        public ba oJ() {
            if (this.kkU == null) {
                this.kkU = new ex(this.oJ);
            }
            if (this.ZYk < 0) {
                this.ZYk = 8;
            }
            if (this.ZYk == 0) {
                this.jFA = new SynchronousQueue();
            }
            if (this.jFA == null) {
                this.jFA = new LinkedBlockingQueue();
            }
            if (this.tB > 100) {
                this.tB = 100;
            }
            int i10 = this.tB;
            int i11 = this.ZYk;
            if (i10 < i11) {
                this.tB = i11;
            }
            return new ba(this);
        }
    }

    private void ZYk() {
        try {
            if (this.ZYk != 0 && getCorePoolSize() < this.tB) {
                int size = getQueue().size();
                if (getActiveCount() >= this.ZYk && size >= this.ex) {
                    setCorePoolSize(this.tB);
                }
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    private void tB() {
        try {
            if (this.ZYk != 0 && getCorePoolSize() > this.ZYk && getQueue().size() == 0) {
                setCorePoolSize(this.ZYk);
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th2) {
        boolean z10 = runnable instanceof ZYk;
        if (z10) {
            ((ZYk) runnable).tB(SystemClock.elapsedRealtime());
        }
        super.afterExecute(runnable, th2);
        if (z10) {
            ZYk zYk = (ZYk) runnable;
            zYk.ZYk();
            zYk.oJ();
            zYk.tB();
            zYk.ex();
            zYk.Pfn();
        }
        tB();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void beforeExecute(Thread thread, Runnable runnable) {
        if (runnable instanceof ZYk) {
            ((ZYk) runnable).ZYk(SystemClock.elapsedRealtime());
        }
        super.beforeExecute(thread, runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        com.bytedance.sdk.component.so.tB.oJ oJ2;
        if (!(runnable instanceof ZYk)) {
            runnable = new ZYk("unknown", runnable) { // from class: com.bytedance.sdk.component.so.tB.ba.2
                @Override // java.lang.Runnable
                public void run() {
                    Runnable ba2 = ba();
                    if (ba2 != null) {
                        ba2.run();
                    }
                }
            };
        }
        if (!"cache".equals(this.oJ)) {
            String name = Thread.currentThread().getName();
            if (!TextUtils.isEmpty(name) && name.startsWith(ex.oJ(this.oJ)) && (oJ2 = tB.oJ()) != null) {
                oJ2.oJ(this, (ZYk) runnable);
            }
        }
        ((ZYk) runnable).oJ(SystemClock.elapsedRealtime());
        try {
            super.execute(runnable);
            ZYk();
        } catch (Throwable th2) {
            oJ(runnable, th2);
        }
    }

    public void oJ(oJ oJVar) {
        try {
            if (oJVar.ZYk >= 0 && this.ZYk != oJVar.ZYk) {
                int i10 = oJVar.ZYk;
                this.ZYk = i10;
                setCorePoolSize(i10);
            }
            this.tB = oJVar.tB;
            this.ex = oJVar.ex;
            allowCoreThreadTimeOut(oJVar.f12810ba);
            this.Pfn = oJVar.f12811so;
        } catch (Throwable th2) {
            th2.getMessage();
        }
        String unused = oJVar.oJ;
        int unused2 = oJVar.ZYk;
        int unused3 = oJVar.tB;
        long unused4 = oJVar.Pfn;
        int unused5 = oJVar.ex;
        boolean unused6 = oJVar.f12811so;
        BlockingQueue unused7 = oJVar.jFA;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public void shutdown() {
        if ("aidl".equals(this.oJ)) {
            return;
        }
        super.shutdown();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        if ("aidl".equals(this.oJ)) {
            return Collections.emptyList();
        }
        return super.shutdownNow();
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        int i10;
        String str;
        runnable.getClass();
        final RunnableFuture newTaskFor = newTaskFor(runnable, null);
        if (runnable instanceof ZYk) {
            ZYk zYk = (ZYk) runnable;
            i10 = zYk.oJ();
            str = zYk.ZYk();
        } else {
            i10 = 6;
            str = "";
        }
        if (i10 == 0 || TextUtils.isEmpty(str)) {
            new RuntimeException();
        }
        execute(new ZYk(i10, str) { // from class: com.bytedance.sdk.component.so.tB.ba.1
            @Override // java.lang.Runnable
            public void run() {
                newTaskFor.run();
            }
        });
        return newTaskFor;
    }

    private ba(oJ oJVar) {
        super(oJVar.ZYk, Integer.MAX_VALUE, oJVar.Pfn, oJVar.cFZ, oJVar.jFA, oJVar.kkU);
        this.Pfn = false;
        String unused = oJVar.oJ;
        int unused2 = oJVar.ZYk;
        int unused3 = oJVar.tB;
        long unused4 = oJVar.Pfn;
        int unused5 = oJVar.ex;
        boolean unused6 = oJVar.f12811so;
        BlockingQueue unused7 = oJVar.jFA;
        this.oJ = oJVar.oJ;
        this.ZYk = oJVar.ZYk;
        this.tB = oJVar.tB;
        this.ex = oJVar.ex;
        allowCoreThreadTimeOut(oJVar.f12810ba);
        this.Pfn = oJVar.f12811so;
    }

    private void oJ(Runnable runnable, Throwable th2) {
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                Handler ZYk = tB.ZYk();
                if (ZYk != null) {
                    ZYk.post(runnable);
                    return;
                }
                return;
            }
            runnable.run();
        } catch (Throwable unused) {
        }
    }

    public boolean oJ() {
        return this.Pfn;
    }
}
