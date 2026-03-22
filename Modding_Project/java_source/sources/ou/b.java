package ou;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import ku.f;
import ku.j;
import qu.c;
import rx.internal.schedulers.ScheduledAction;
import rx.internal.util.RxThreadFactory;
/* compiled from: NewThreadWorker.java */
/* loaded from: classes8.dex */
public class b extends f.a implements j {

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f64423c;

    /* renamed from: g  reason: collision with root package name */
    private static volatile Object f64427g;

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f64429a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f64430b;

    /* renamed from: h  reason: collision with root package name */
    private static final Object f64428h = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static final ConcurrentHashMap<ScheduledThreadPoolExecutor, ScheduledThreadPoolExecutor> f64425e = new ConcurrentHashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private static final AtomicReference<ScheduledExecutorService> f64426f = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    public static final int f64424d = Integer.getInteger("rx.scheduler.jdk6.purge-frequency-millis", 1000).intValue();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NewThreadWorker.java */
    /* loaded from: classes8.dex */
    public static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.f();
        }
    }

    static {
        boolean z10;
        boolean z11 = Boolean.getBoolean("rx.scheduler.jdk6.purge-force");
        int a10 = pu.a.a();
        if (!z11 && (a10 == 0 || a10 >= 21)) {
            z10 = true;
        } else {
            z10 = false;
        }
        f64423c = z10;
    }

    public b(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (!k(newScheduledThreadPool) && (newScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            g((ScheduledThreadPoolExecutor) newScheduledThreadPool);
        }
        this.f64429a = newScheduledThreadPool;
    }

    public static void b(ScheduledExecutorService scheduledExecutorService) {
        f64425e.remove(scheduledExecutorService);
    }

    static Method c(ScheduledExecutorService scheduledExecutorService) {
        Method[] methods;
        for (Method method : scheduledExecutorService.getClass().getMethods()) {
            if (method.getName().equals("setRemoveOnCancelPolicy")) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && parameterTypes[0] == Boolean.TYPE) {
                    return method;
                }
            }
        }
        return null;
    }

    static void f() {
        try {
            Iterator<ScheduledThreadPoolExecutor> it = f64425e.keySet().iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor next = it.next();
                if (!next.isShutdown()) {
                    next.purge();
                } else {
                    it.remove();
                }
            }
        } catch (Throwable th2) {
            lu.a.d(th2);
            c.f(th2);
        }
    }

    public static void g(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        while (true) {
            AtomicReference<ScheduledExecutorService> atomicReference = f64426f;
            if (atomicReference.get() != null) {
                break;
            }
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge-"));
            if (androidx.compose.animation.core.a.a(atomicReference, null, newScheduledThreadPool)) {
                a aVar = new a();
                int i10 = f64424d;
                newScheduledThreadPool.scheduleAtFixedRate(aVar, i10, i10, TimeUnit.MILLISECONDS);
                break;
            }
            newScheduledThreadPool.shutdownNow();
        }
        f64425e.putIfAbsent(scheduledThreadPoolExecutor, scheduledThreadPoolExecutor);
    }

    public static boolean k(ScheduledExecutorService scheduledExecutorService) {
        Method c10;
        if (f64423c) {
            if (scheduledExecutorService instanceof ScheduledThreadPoolExecutor) {
                Object obj = f64427g;
                Object obj2 = f64428h;
                if (obj == obj2) {
                    return false;
                }
                if (obj == null) {
                    c10 = c(scheduledExecutorService);
                    if (c10 != null) {
                        obj2 = c10;
                    }
                    f64427g = obj2;
                } else {
                    c10 = (Method) obj;
                }
            } else {
                c10 = c(scheduledExecutorService);
            }
            if (c10 != null) {
                try {
                    c10.invoke(scheduledExecutorService, Boolean.TRUE);
                    return true;
                } catch (IllegalAccessException e10) {
                    c.f(e10);
                } catch (IllegalArgumentException e11) {
                    c.f(e11);
                } catch (InvocationTargetException e12) {
                    c.f(e12);
                }
            }
        }
        return false;
    }

    @Override // ku.f.a
    public j a(mu.a aVar) {
        return h(aVar, 0L, null);
    }

    @Override // ku.j
    public boolean d() {
        return this.f64430b;
    }

    @Override // ku.j
    public void e() {
        this.f64430b = true;
        this.f64429a.shutdownNow();
        b(this.f64429a);
    }

    public j h(mu.a aVar, long j10, TimeUnit timeUnit) {
        if (this.f64430b) {
            return ru.b.a();
        }
        return i(aVar, j10, timeUnit);
    }

    public ScheduledAction i(mu.a aVar, long j10, TimeUnit timeUnit) {
        Future<?> schedule;
        ScheduledAction scheduledAction = new ScheduledAction(c.j(aVar));
        if (j10 <= 0) {
            schedule = this.f64429a.submit(scheduledAction);
        } else {
            schedule = this.f64429a.schedule(scheduledAction, j10, timeUnit);
        }
        scheduledAction.f(schedule);
        return scheduledAction;
    }

    public ScheduledAction j(mu.a aVar, long j10, TimeUnit timeUnit, pu.b bVar) {
        Future<?> schedule;
        ScheduledAction scheduledAction = new ScheduledAction(c.j(aVar), bVar);
        bVar.a(scheduledAction);
        if (j10 <= 0) {
            schedule = this.f64429a.submit(scheduledAction);
        } else {
            schedule = this.f64429a.schedule(scheduledAction, j10, timeUnit);
        }
        scheduledAction.f(schedule);
        return scheduledAction;
    }
}
