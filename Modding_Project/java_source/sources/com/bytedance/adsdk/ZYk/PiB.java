package com.bytedance.adsdk.ZYk;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
/* loaded from: classes3.dex */
public class PiB<T> {
    public static Executor oJ = Executors.newCachedThreadPool();
    private volatile BTZ<T> Pfn;
    private final Set<dLZ<T>> ZYk;
    private final Handler ex;
    private final Set<dLZ<Throwable>> tB;

    /* loaded from: classes3.dex */
    private class oJ extends FutureTask<BTZ<T>> {
        oJ(Callable<BTZ<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            if (!isCancelled()) {
                try {
                    PiB.this.oJ((BTZ) get());
                } catch (InterruptedException | ExecutionException e10) {
                    PiB.this.oJ(new BTZ(e10));
                }
            }
        }
    }

    public PiB(Callable<BTZ<T>> callable) {
        this(callable, false);
    }

    public synchronized PiB<T> ZYk(dLZ<T> dlz) {
        this.ZYk.remove(dlz);
        return this;
    }

    public synchronized PiB<T> ex(dLZ<Throwable> dlz) {
        this.tB.remove(dlz);
        return this;
    }

    public synchronized PiB<T> tB(dLZ<Throwable> dlz) {
        try {
            BTZ<T> btz = this.Pfn;
            if (btz != null && btz.ZYk() != null) {
                dlz.oJ(btz.ZYk());
            }
            this.tB.add(dlz);
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PiB(Callable<BTZ<T>> callable, boolean z10) {
        this.ZYk = new LinkedHashSet(1);
        this.tB = new LinkedHashSet(1);
        this.ex = new Handler(Looper.getMainLooper());
        this.Pfn = null;
        if (z10) {
            try {
                oJ((BTZ) callable.call());
                return;
            } catch (Throwable th2) {
                oJ((BTZ) new BTZ<>(th2));
                return;
            }
        }
        oJ.execute(new oJ(callable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(BTZ<T> btz) {
        if (this.Pfn == null) {
            this.Pfn = btz;
            oJ();
            return;
        }
        throw new IllegalStateException("A task may only be set once.");
    }

    public synchronized PiB<T> oJ(dLZ<T> dlz) {
        try {
            BTZ<T> btz = this.Pfn;
            if (btz != null && btz.oJ() != null) {
                dlz.oJ(btz.oJ());
            }
            this.ZYk.add(dlz);
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    private void oJ() {
        this.ex.post(new Runnable() { // from class: com.bytedance.adsdk.ZYk.PiB.1
            @Override // java.lang.Runnable
            public void run() {
                BTZ btz = PiB.this.Pfn;
                if (btz == null) {
                    return;
                }
                if (btz.oJ() != null) {
                    PiB.this.oJ((PiB) btz.oJ());
                } else {
                    PiB.this.oJ(btz.ZYk());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void oJ(T t10) {
        for (dLZ dlz : new ArrayList(this.ZYk)) {
            dlz.oJ(t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void oJ(Throwable th2) {
        ArrayList<dLZ> arrayList = new ArrayList(this.tB);
        if (arrayList.isEmpty()) {
            return;
        }
        for (dLZ dlz : arrayList) {
            dlz.oJ(th2);
        }
    }
}
