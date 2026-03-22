package com.applovin.impl;

import java.lang.Thread;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class b6 {

    /* renamed from: r  reason: collision with root package name */
    private static final ExecutorService f7549r = Executors.newFixedThreadPool(4);

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7550a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f7551b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledThreadPoolExecutor f7552c;

    /* renamed from: d  reason: collision with root package name */
    private final ScheduledThreadPoolExecutor f7553d;

    /* renamed from: e  reason: collision with root package name */
    private final ScheduledThreadPoolExecutor f7554e;

    /* renamed from: f  reason: collision with root package name */
    private final ScheduledThreadPoolExecutor f7555f;

    /* renamed from: g  reason: collision with root package name */
    private final ScheduledThreadPoolExecutor f7556g;

    /* renamed from: h  reason: collision with root package name */
    private final ScheduledThreadPoolExecutor f7557h;

    /* renamed from: i  reason: collision with root package name */
    private final ScheduledThreadPoolExecutor f7558i;

    /* renamed from: k  reason: collision with root package name */
    private ExecutorService f7560k;

    /* renamed from: l  reason: collision with root package name */
    private ExecutorService f7561l;

    /* renamed from: o  reason: collision with root package name */
    private boolean f7564o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f7565p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f7566q;

    /* renamed from: j  reason: collision with root package name */
    private final Map f7559j = new HashMap();

    /* renamed from: m  reason: collision with root package name */
    private final List f7562m = new ArrayList(5);

    /* renamed from: n  reason: collision with root package name */
    private final Object f7563n = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7567a;

        static {
            int[] iArr = new int[b.values().length];
            f7567a = iArr;
            try {
                iArr[b.CORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7567a[b.CACHING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7567a[b.MEDIATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7567a[b.TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum b {
        CORE,
        CACHING,
        MEDIATION,
        TIMEOUT,
        OTHER
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c extends e {

        /* renamed from: f  reason: collision with root package name */
        private final long f7574f;

        public c(com.applovin.impl.sdk.k kVar, g5 g5Var, b bVar, long j10) {
            super(kVar, g5Var, bVar);
            this.f7574f = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final String f7575a;

        /* loaded from: classes2.dex */
        class a implements Thread.UncaughtExceptionHandler {
            a() {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th2) {
                com.applovin.impl.sdk.o unused = b6.this.f7551b;
                if (com.applovin.impl.sdk.o.a()) {
                    b6.this.f7551b.a("TaskManager", "Caught unhandled exception", th2);
                }
            }
        }

        d(String str) {
            this.f7575a = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:" + this.f7575a);
            thread.setDaemon(true);
            thread.setPriority(((Integer) b6.this.f7550a.a(v4.O)).intValue());
            thread.setUncaughtExceptionHandler(new a());
            return thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.impl.sdk.k f7578a;

        /* renamed from: b  reason: collision with root package name */
        private final String f7579b;

        /* renamed from: c  reason: collision with root package name */
        private final com.applovin.impl.sdk.o f7580c;

        /* renamed from: d  reason: collision with root package name */
        protected final g5 f7581d;

        /* renamed from: e  reason: collision with root package name */
        protected final b f7582e;

        public e(com.applovin.impl.sdk.k kVar, g5 g5Var, b bVar) {
            this.f7578a = kVar;
            this.f7580c = kVar.O();
            this.f7579b = g5Var.c();
            this.f7581d = g5Var;
            this.f7582e = bVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0061 A[DONT_GENERATE] */
        /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r6 = this;
                java.lang.String r0 = " queue finished task "
                com.applovin.impl.o0.a()     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.sdk.k r1 = r6.f7578a     // Catch: java.lang.Throwable -> L26
                boolean r1 = r1.F0()     // Catch: java.lang.Throwable -> L26
                if (r1 == 0) goto L38
                com.applovin.impl.g5 r1 = r6.f7581d     // Catch: java.lang.Throwable -> L26
                boolean r1 = r1.d()     // Catch: java.lang.Throwable -> L26
                if (r1 == 0) goto L16
                goto L38
            L16:
                boolean r1 = com.applovin.impl.sdk.o.a()     // Catch: java.lang.Throwable -> L26
                if (r1 == 0) goto L28
                com.applovin.impl.sdk.o r1 = r6.f7580c     // Catch: java.lang.Throwable -> L26
                java.lang.String r2 = r6.f7579b     // Catch: java.lang.Throwable -> L26
                java.lang.String r3 = "Task re-scheduled..."
                r1.d(r2, r3)     // Catch: java.lang.Throwable -> L26
                goto L28
            L26:
                r1 = move-exception
                goto L83
            L28:
                com.applovin.impl.sdk.k r1 = r6.f7578a     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.b6 r1 = r1.r0()     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.g5 r2 = r6.f7581d     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.b6$b r3 = r6.f7582e     // Catch: java.lang.Throwable -> L26
                r4 = 2000(0x7d0, double:9.88E-321)
                r1.a(r2, r3, r4)     // Catch: java.lang.Throwable -> L26
                goto L5b
            L38:
                com.applovin.impl.g5 r1 = r6.f7581d     // Catch: java.lang.Throwable -> L26
                java.lang.Thread r2 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.sdk.k r3 = r6.f7578a     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.v4 r4 = com.applovin.impl.v4.f10377w     // Catch: java.lang.Throwable -> L26
                java.lang.Object r3 = r3.a(r4)     // Catch: java.lang.Throwable -> L26
                java.lang.Long r3 = (java.lang.Long) r3     // Catch: java.lang.Throwable -> L26
                long r3 = r3.longValue()     // Catch: java.lang.Throwable -> L26
                java.util.concurrent.ScheduledFuture r1 = r1.b(r2, r3)     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.g5 r2 = r6.f7581d     // Catch: java.lang.Throwable -> L26
                r2.run()     // Catch: java.lang.Throwable -> L26
                if (r1 == 0) goto L5b
                r2 = 0
                r1.cancel(r2)     // Catch: java.lang.Throwable -> L26
            L5b:
                boolean r1 = com.applovin.impl.sdk.o.a()
                if (r1 == 0) goto Lc1
                com.applovin.impl.sdk.o r1 = r6.f7580c
                java.lang.String r2 = r6.f7579b
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                com.applovin.impl.b6$b r4 = r6.f7582e
                r3.append(r4)
                r3.append(r0)
                com.applovin.impl.g5 r0 = r6.f7581d
                java.lang.String r0 = r0.c()
                r3.append(r0)
                java.lang.String r0 = r3.toString()
                r1.d(r2, r0)
                goto Lc1
            L83:
                boolean r2 = com.applovin.impl.sdk.o.a()     // Catch: java.lang.Throwable -> L93
                if (r2 == 0) goto L95
                com.applovin.impl.sdk.o r2 = r6.f7580c     // Catch: java.lang.Throwable -> L93
                java.lang.String r3 = r6.f7579b     // Catch: java.lang.Throwable -> L93
                java.lang.String r4 = "Task failed execution"
                r2.a(r3, r4, r1)     // Catch: java.lang.Throwable -> L93
                goto L95
            L93:
                r1 = move-exception
                goto Lc2
            L95:
                com.applovin.impl.g5 r2 = r6.f7581d     // Catch: java.lang.Throwable -> L93
                r2.a(r1)     // Catch: java.lang.Throwable -> L93
                boolean r1 = com.applovin.impl.sdk.o.a()
                if (r1 == 0) goto Lc1
                com.applovin.impl.sdk.o r1 = r6.f7580c
                java.lang.String r2 = r6.f7579b
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                com.applovin.impl.b6$b r4 = r6.f7582e
                r3.append(r4)
                r3.append(r0)
                com.applovin.impl.g5 r0 = r6.f7581d
                java.lang.String r0 = r0.c()
                r3.append(r0)
                java.lang.String r0 = r3.toString()
                r1.d(r2, r0)
            Lc1:
                return
            Lc2:
                boolean r2 = com.applovin.impl.sdk.o.a()
                if (r2 == 0) goto Le9
                com.applovin.impl.sdk.o r2 = r6.f7580c
                java.lang.String r3 = r6.f7579b
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                com.applovin.impl.b6$b r5 = r6.f7582e
                r4.append(r5)
                r4.append(r0)
                com.applovin.impl.g5 r0 = r6.f7581d
                java.lang.String r0 = r0.c()
                r4.append(r0)
                java.lang.String r0 = r4.toString()
                r2.d(r3, r0)
            Le9:
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.b6.e.run():void");
        }
    }

    public b6(com.applovin.impl.sdk.k kVar) {
        this.f7550a = kVar;
        this.f7551b = kVar.O();
        this.f7565p = ((Boolean) kVar.a(v4.R)).booleanValue();
        this.f7566q = ((Boolean) kVar.a(v4.G6)).booleanValue();
        this.f7552c = b("auxiliary_operations", ((Integer) kVar.a(v4.M)).intValue());
        this.f7553d = b("shared_thread_pool", ((Integer) kVar.a(v4.L)).intValue());
        this.f7554e = b("core", ((Integer) kVar.a(v4.S)).intValue());
        this.f7556g = b("caching", ((Integer) kVar.a(v4.T)).intValue());
        this.f7557h = b("mediation", ((Integer) kVar.a(v4.U)).intValue());
        this.f7555f = b("timeout", ((Integer) kVar.a(v4.V)).intValue());
        this.f7558i = b("other", ((Integer) kVar.a(v4.W)).intValue());
        if (((Boolean) kVar.a(v4.I0)).booleanValue() && ((Boolean) kVar.a(v4.J0)).booleanValue()) {
            this.f7560k = Executors.newFixedThreadPool(((Integer) kVar.a(v4.K0)).intValue(), new d("com.applovin.sdk.caching.shared"));
            this.f7561l = Executors.newFixedThreadPool(((Integer) kVar.a(v4.L0)).intValue(), new d("com.applovin.sdk.caching.html.shared"));
        }
    }

    public ExecutorService c() {
        if (this.f7565p) {
            return this.f7556g;
        }
        return f7549r;
    }

    public Executor d() {
        if (this.f7565p) {
            return this.f7554e;
        }
        return this.f7553d;
    }

    public ExecutorService e() {
        return this.f7561l;
    }

    public boolean f() {
        if (a() != null && e() != null) {
            return true;
        }
        return false;
    }

    public boolean g() {
        return this.f7564o;
    }

    public void h() {
        synchronized (this.f7563n) {
            try {
                this.f7564o = true;
                for (e eVar : this.f7562m) {
                    if (this.f7566q) {
                        c cVar = (c) eVar;
                        a(cVar.f7581d, cVar.f7582e, cVar.f7574f);
                    } else {
                        a(eVar.f7581d, eVar.f7582e);
                    }
                }
                this.f7562m.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void i() {
        synchronized (this.f7563n) {
            this.f7564o = false;
        }
    }

    public ExecutorService a() {
        return this.f7560k;
    }

    public ScheduledFuture b(g5 g5Var, b bVar, long j10) {
        if (this.f7565p) {
            return a(new e(this.f7550a, g5Var, bVar)).schedule(g5Var, j10, TimeUnit.MILLISECONDS);
        }
        return this.f7552c.schedule(g5Var, j10, TimeUnit.MILLISECONDS);
    }

    public void a(g5 g5Var, b bVar) {
        a(g5Var, bVar, 0L);
    }

    public void a(g5 g5Var, b bVar, long j10) {
        a(g5Var, bVar, j10, false);
    }

    public void a(g5 g5Var, b bVar, long j10, boolean z10) {
        e eVar;
        if (g5Var == null) {
            throw new IllegalArgumentException("No task specified");
        }
        if (j10 >= 0) {
            if (this.f7566q) {
                eVar = new c(this.f7550a, g5Var, bVar, j10);
            } else {
                eVar = new e(this.f7550a, g5Var, bVar);
            }
            if (!b(eVar)) {
                a(eVar, j10, z10);
                return;
            } else if (com.applovin.impl.sdk.o.a()) {
                this.f7551b.d(g5Var.c(), "Task execution delayed until after init");
                return;
            } else {
                return;
            }
        }
        throw new IllegalArgumentException("Invalid delay (millis) specified: " + j10);
    }

    public ExecutorService b() {
        return this.f7565p ? this.f7558i : this.f7552c;
    }

    private boolean b(e eVar) {
        if (eVar.f7581d.d()) {
            return false;
        }
        synchronized (this.f7563n) {
            try {
                if (this.f7564o) {
                    return false;
                }
                this.f7562m.add(eVar);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(Runnable runnable, b bVar) {
        if (this.f7565p) {
            com.applovin.impl.sdk.k kVar = this.f7550a;
            e eVar = new e(kVar, new p6(kVar, "auxiliaryOperation", runnable), bVar);
            a(eVar).submit(eVar);
            return;
        }
        this.f7552c.submit(runnable);
    }

    private ScheduledThreadPoolExecutor b(String str, int i10) {
        return new ScheduledThreadPoolExecutor(i10, new d(str));
    }

    public Executor a(final String str) {
        return new Executor() { // from class: com.applovin.impl.t8
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                b6.this.a(str, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Runnable runnable) {
        a(new p6(this.f7550a, str, runnable));
    }

    public void a(g5 g5Var) {
        if (g5Var != null) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f7565p ? this.f7554e : this.f7553d;
            try {
                if (k7.h()) {
                    scheduledThreadPoolExecutor.submit(new e(this.f7550a, g5Var, b.CORE));
                    return;
                }
                ScheduledFuture b10 = g5Var.b(Thread.currentThread(), ((Long) this.f7550a.a(v4.f10377w)).longValue());
                g5Var.run();
                if (b10 != null) {
                    b10.cancel(false);
                    return;
                }
                return;
            } catch (Throwable th2) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7551b.a(g5Var.c(), "Task failed execution", th2);
                }
                g5Var.a(th2);
                return;
            }
        }
        throw new IllegalArgumentException("No task specified");
    }

    public void a(g5 g5Var, h3 h3Var) {
        String b10 = h3Var.b();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) this.f7559j.get(b10);
        if (scheduledThreadPoolExecutor == null) {
            scheduledThreadPoolExecutor = b(b10, 1);
            this.f7559j.put(b10, scheduledThreadPoolExecutor);
        }
        scheduledThreadPoolExecutor.submit(new e(this.f7550a, g5Var, b.MEDIATION));
    }

    private void a(final e eVar, long j10, boolean z10) {
        final ScheduledThreadPoolExecutor a10 = this.f7565p ? a(eVar) : this.f7553d;
        if (j10 <= 0) {
            a10.submit(eVar);
        } else if (z10) {
            g0.a(j10, this.f7550a, new Runnable() { // from class: com.applovin.impl.u8
                @Override // java.lang.Runnable
                public final void run() {
                    a10.execute(eVar);
                }
            });
        } else {
            a10.schedule(eVar, j10, TimeUnit.MILLISECONDS);
        }
    }

    private ScheduledThreadPoolExecutor a(e eVar) {
        int i10 = a.f7567a[eVar.f7582e.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return this.f7558i;
                    }
                    return this.f7555f;
                }
                return this.f7557h;
            }
            return this.f7556g;
        }
        return this.f7554e;
    }

    public ExecutorService a(String str, int i10) {
        return Executors.newFixedThreadPool(i10, new d(str));
    }

    public List a(List list, ExecutorService executorService) {
        try {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7551b;
                oVar.a("TaskManager", "Awaiting " + list.size() + " tasks...");
            }
            return executorService.invokeAll(list);
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7551b.a("TaskManager", "Awaiting tasks were interrupted", th2);
                return null;
            }
            return null;
        }
    }
}
