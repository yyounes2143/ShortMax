package com.bytedance.sdk.component.so;

import com.bytedance.sdk.component.so.oJ;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class ba extends Pfn {
    private static volatile ThreadPoolExecutor Pfn;
    public static tB ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private static volatile ThreadPoolExecutor f12805ba;
    private static volatile ThreadPoolExecutor cFZ;
    private static volatile ScheduledExecutorService dLZ;
    private static volatile ThreadPoolExecutor jFA;
    private static volatile ThreadPoolExecutor kkU;

    /* renamed from: so  reason: collision with root package name */
    private static volatile ThreadPoolExecutor f12806so;
    public static final int oJ = Runtime.getRuntime().availableProcessors();
    public static int tB = 120;
    public static boolean ex = true;

    public static ExecutorService Pfn() {
        if (kkU == null) {
            synchronized (ba.class) {
                try {
                    if (kkU == null) {
                        oJ oJ2 = new oJ.C0178oJ().oJ("aidl").ZYk(10).oJ(2).oJ(30L).oJ(TimeUnit.SECONDS).oJ(new PriorityBlockingQueue()).oJ(so()).oJ(Pfn.oJ().createThreadFactory(10, "aidl")).oJ();
                        kkU = oJ2;
                        oJ2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return kkU;
    }

    public static ExecutorService ZYk() {
        if (Pfn == null) {
            synchronized (ba.class) {
                try {
                    if (Pfn == null) {
                        Pfn = new oJ.C0178oJ().oJ("init").oJ(0).ZYk(10).oJ(5L).oJ(TimeUnit.SECONDS).oJ(new SynchronousQueue()).oJ(so()).oJ(Pfn.oJ().createThreadFactory(10, "init")).oJ();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Pfn;
    }

    public static ScheduledExecutorService ba() {
        if (dLZ == null) {
            synchronized (ba.class) {
                try {
                    if (dLZ == null) {
                        dLZ = Executors.newSingleThreadScheduledExecutor(Pfn.oJ().createThreadFactory(5, "scheduled"));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return dLZ;
    }

    public static boolean cFZ() {
        return ex;
    }

    public static ExecutorService ex() {
        if (f12806so == null) {
            synchronized (ba.class) {
                try {
                    if (f12806so == null) {
                        oJ oJ2 = new oJ.C0178oJ().oJ("log").ZYk(10).oJ(4).oJ(20L).oJ(TimeUnit.SECONDS).oJ(new PriorityBlockingQueue()).oJ(so()).oJ(Pfn.oJ().createThreadFactory(10, "log")).oJ();
                        f12806so = oJ2;
                        oJ2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f12806so;
    }

    public static tB jFA() {
        return ZYk;
    }

    public static ExecutorService kkU() {
        if (jFA == null) {
            synchronized (ba.class) {
                try {
                    if (jFA == null) {
                        oJ oJ2 = new oJ.C0178oJ().oJ("computation").oJ(3).ZYk(10).oJ(20L).oJ(TimeUnit.SECONDS).oJ(new PriorityBlockingQueue()).oJ(so()).oJ(Pfn.oJ().createThreadFactory(10, "computation")).oJ();
                        jFA = oJ2;
                        oJ2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return jFA;
    }

    public static void oJ(so soVar) {
        if (Pfn == null) {
            ZYk();
        }
        if (soVar == null || Pfn == null) {
            return;
        }
        Pfn.execute(soVar);
    }

    public static RejectedExecutionHandler so() {
        return new RejectedExecutionHandler() { // from class: com.bytedance.sdk.component.so.ba.1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            }
        };
    }

    public static ExecutorService tB() {
        return oJ(10);
    }

    public static void tB(so soVar) {
        if (f12806so == null) {
            ex();
        }
        if (soVar == null || f12806so == null) {
            return;
        }
        f12806so.execute(soVar);
    }

    public static ExecutorService oJ(int i10) {
        if (f12805ba == null) {
            synchronized (ba.class) {
                try {
                    if (f12805ba == null) {
                        oJ oJ2 = new oJ.C0178oJ().oJ("io").oJ(2).ZYk(i10).oJ(20L).oJ(TimeUnit.SECONDS).oJ(new LinkedBlockingQueue()).oJ(so()).oJ(Pfn.oJ().createThreadFactory(i10, "io")).oJ();
                        f12805ba = oJ2;
                        oJ2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f12805ba;
    }

    public static void tB(so soVar, int i10) {
        if (soVar != null) {
            soVar.setPriority(i10);
        }
        ex(soVar);
    }

    public static void tB(int i10) {
        tB = i10;
    }

    public static void ZYk(so soVar) {
        if (f12805ba == null) {
            tB();
        }
        if (f12805ba != null) {
            f12805ba.execute(soVar);
        }
    }

    public static void Pfn(so soVar) {
        if (cFZ == null) {
            ZYk(5);
        }
        if (soVar == null || cFZ == null) {
            return;
        }
        cFZ.execute(soVar);
    }

    public static void ex(so soVar) {
        if (kkU == null) {
            Pfn();
        }
        if (soVar == null || kkU == null) {
            return;
        }
        kkU.execute(soVar);
    }

    public static void ZYk(so soVar, int i10) {
        if (soVar != null) {
            soVar.setPriority(i10);
        }
        tB(soVar);
    }

    public static void oJ(so soVar, int i10) {
        ZYk(soVar);
    }

    public static ExecutorService ZYk(int i10) {
        if (cFZ == null) {
            synchronized (ba.class) {
                try {
                    if (cFZ == null) {
                        oJ oJ2 = new oJ.C0178oJ().oJ("ad").oJ(2).ZYk(i10).oJ(20L).oJ(TimeUnit.SECONDS).oJ(new LinkedBlockingQueue()).oJ(so()).oJ(Pfn.oJ().createThreadFactory(i10, "ad")).oJ();
                        cFZ = oJ2;
                        oJ2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return cFZ;
    }

    public static void oJ(so soVar, int i10, int i11) {
        if (f12805ba == null) {
            oJ(i11);
        }
        if (soVar == null || f12805ba == null) {
            return;
        }
        soVar.setPriority(i10);
        f12805ba.execute(soVar);
    }

    public static void oJ(boolean z10) {
        ex = z10;
    }

    public static void oJ(tB tBVar) {
        ZYk = tBVar;
    }
}
