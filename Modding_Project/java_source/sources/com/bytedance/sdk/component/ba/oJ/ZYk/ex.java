package com.bytedance.sdk.component.ba.oJ.ZYk;

import android.os.Handler;
import android.os.Looper;
import androidx.collection.SieveCacheKt;
import com.bytedance.sdk.component.ba.oJ.Pfn;
import com.bytedance.sdk.component.ba.oJ.so;
import java.util.Comparator;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3.dex */
public class ex {
    private final PriorityBlockingQueue<com.bytedance.sdk.component.ba.oJ.ex.oJ> BTZ;
    private final Comparator<com.bytedance.sdk.component.ba.oJ.ex.oJ> dLZ;
    private volatile com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB jFA;
    private volatile Handler kkU;
    public static final ex oJ = new ex();
    public static final com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ ex = new com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ();
    public static final AtomicLong Pfn = new AtomicLong(0);

    /* renamed from: ba  reason: collision with root package name */
    public static final AtomicLong f12739ba = new AtomicLong(0);
    public static final long cFZ = System.currentTimeMillis();

    /* renamed from: so  reason: collision with root package name */
    public static long f12740so = 0;
    public volatile boolean ZYk = false;
    public volatile boolean tB = false;

    private ex() {
        Comparator<com.bytedance.sdk.component.ba.oJ.ex.oJ> comparator = new Comparator<com.bytedance.sdk.component.ba.oJ.ex.oJ>() { // from class: com.bytedance.sdk.component.ba.oJ.ZYk.ex.1
            @Override // java.util.Comparator
            /* renamed from: oJ */
            public int compare(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar, com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar2) {
                return ex.this.oJ(oJVar, oJVar2);
            }
        };
        this.dLZ = comparator;
        this.BTZ = new PriorityBlockingQueue<>(8, comparator);
    }

    public void Pfn() {
        com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(ex.mu(), 1);
        final com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB tBVar = this.jFA;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Pfn eZI = so.cFZ().eZI();
            if (eZI != null) {
                Executor ex2 = eZI.ex();
                if (ex2 == null) {
                    ex2 = eZI.Pfn();
                }
                if (ex2 != null) {
                    ex2.execute(new com.bytedance.sdk.component.ba.oJ.Pfn.Pfn("flush") { // from class: com.bytedance.sdk.component.ba.oJ.ZYk.ex.3
                        @Override // java.lang.Runnable
                        public void run() {
                            com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB tBVar2 = tBVar;
                            if (tBVar2 != null) {
                                tBVar2.tB(2);
                            }
                        }
                    });
                }
            }
        } else if (tBVar != null) {
            tBVar.tB(2);
        }
    }

    public void ZYk() {
        ex();
        Pfn();
    }

    public boolean ex() {
        try {
            if (this.jFA == null && !com.bytedance.sdk.component.ba.oJ.ZYk.ZYk()) {
                synchronized (this) {
                    if (this.jFA == null) {
                        this.jFA = new com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB(this.BTZ);
                        this.jFA.start();
                        return true;
                    }
                    return false;
                }
            }
            return false;
        } catch (Throwable th2) {
            th2.getMessage();
            return false;
        }
    }

    public void tB() {
        if (this.jFA != null && this.jFA.isAlive()) {
            synchronized (this) {
                try {
                    if (this.jFA != null && this.jFA.isAlive()) {
                        if (this.kkU != null) {
                            this.kkU.removeCallbacksAndMessages(null);
                        }
                        this.jFA.oJ(false);
                        this.jFA.quitSafely();
                        this.jFA = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public PriorityBlockingQueue<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ() {
        return this.BTZ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar, com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar2) {
        long j10;
        long j11;
        long j12;
        long j13;
        if (oJVar == null) {
            return oJVar2 == null ? 0 : -1;
        } else if (oJVar2 == null) {
            return 1;
        } else {
            if (oJVar.Pfn() == oJVar2.Pfn()) {
                if (oJVar.oJ() != null) {
                    j10 = oJVar.oJ().oJ();
                    j11 = oJVar.oJ().ZYk();
                } else {
                    j10 = 0;
                    j11 = 0;
                }
                if (oJVar2.oJ() != null) {
                    j13 = oJVar2.oJ().oJ();
                    j12 = oJVar2.oJ().ZYk();
                } else {
                    j12 = 0;
                    j13 = 0;
                }
                if (j10 == 0 || j13 == 0) {
                    return 0;
                }
                long j14 = j10 - j13;
                if (Math.abs(j14) > SieveCacheKt.NodeLinkMask) {
                    return 0;
                }
                if (j14 == 0) {
                    if (j11 == 0 || j12 == 0) {
                        return 0;
                    }
                    return (int) (j11 - j12);
                }
                return (int) j14;
            }
            return oJVar.Pfn() - oJVar2.Pfn();
        }
    }

    public void oJ(Handler handler) {
        this.kkU = handler;
    }

    public void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar, int i10) {
        ex();
        Pfn eZI = so.cFZ().eZI();
        com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB tBVar = this.jFA;
        if (tBVar != null) {
            oJ(eZI, oJVar);
            tBVar.oJ(oJVar, oJVar.Pfn() == 4);
        }
    }

    private void oJ(final Pfn pfn, com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (pfn != null) {
            try {
                if (pfn.cFZ()) {
                    final long ZYk = (oJVar == null || oJVar.oJ() == null) ? 0L : oJVar.oJ().ZYk();
                    if (ZYk == 1) {
                        f12740so = System.currentTimeMillis();
                    }
                    AtomicLong sH = ex.sH();
                    com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(sH, 1);
                    if (sH.get() == 200) {
                        if (Looper.getMainLooper() == Looper.myLooper()) {
                            Executor ex2 = pfn.ex();
                            if (ex2 == null) {
                                ex2 = pfn.Pfn();
                            }
                            if (ex2 != null) {
                                ex2.execute(new com.bytedance.sdk.component.ba.oJ.Pfn.Pfn("report") { // from class: com.bytedance.sdk.component.ba.oJ.ZYk.ex.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ex.this.oJ(pfn, ZYk);
                                    }
                                });
                                return;
                            }
                            return;
                        }
                        oJ(pfn, ZYk);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(Pfn pfn, long j10) {
        com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB tBVar = this.jFA;
        if (pfn == null || tBVar == null) {
            return;
        }
        com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ oJVar = ex;
        tBVar.oJ(pfn.oJ(oJVar.ZYk(j10)), true);
        oJVar.Qu();
    }
}
