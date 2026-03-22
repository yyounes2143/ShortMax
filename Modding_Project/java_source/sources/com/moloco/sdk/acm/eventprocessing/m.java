package com.moloco.sdk.acm.eventprocessing;

import gt.g0;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nRequestSchedulerTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestSchedulerTimer.kt\ncom/moloco/sdk/acm/eventprocessing/RequestSchedulerTimer\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,62:1\n120#2,10:63\n120#2,10:73\n*S KotlinDebug\n*F\n+ 1 RequestSchedulerTimer.kt\ncom/moloco/sdk/acm/eventprocessing/RequestSchedulerTimer\n*L\n43#1:63,10\n47#1:73,10\n*E\n"})
/* loaded from: classes6.dex */
public final class m implements g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.acm.eventprocessing.b f31914a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.acm.h f31915b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final ScheduledExecutorService f31916c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final g0 f31917d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public ScheduledFuture<?> f31918e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final qt.a f31919f;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.eventprocessing.RequestSchedulerTimer", f = "RequestSchedulerTimer.kt", l = {68}, m = "resetScheduleAndTriggerNewScheduledUpload")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f31920h;

        /* renamed from: i  reason: collision with root package name */
        public Object f31921i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f31922j;

        /* renamed from: l  reason: collision with root package name */
        public int f31924l;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f31922j = obj;
            this.f31924l |= Integer.MIN_VALUE;
            return m.this.a(this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.eventprocessing.RequestSchedulerTimer$schedule$1$1", f = "RequestSchedulerTimer.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f31925h;

        public b(rs.c<? super b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f31925h == 0) {
                kotlin.f.b(obj);
                m.this.f31914a.a();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.eventprocessing.RequestSchedulerTimer", f = "RequestSchedulerTimer.kt", l = {68}, m = "scheduleUploadAndPurge")
    /* loaded from: classes6.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f31927h;

        /* renamed from: i  reason: collision with root package name */
        public Object f31928i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f31929j;

        /* renamed from: l  reason: collision with root package name */
        public int f31931l;

        public c(rs.c<? super c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f31929j = obj;
            this.f31931l |= Integer.MIN_VALUE;
            return m.this.c(this);
        }
    }

    public m(@NotNull com.moloco.sdk.acm.eventprocessing.b dbWorkRequest, @NotNull com.moloco.sdk.acm.h opsConfig, @NotNull ScheduledExecutorService scheduler, @NotNull g0 coroutineScope) {
        Intrinsics.checkNotNullParameter(dbWorkRequest, "dbWorkRequest");
        Intrinsics.checkNotNullParameter(opsConfig, "opsConfig");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        this.f31914a = dbWorkRequest;
        this.f31915b = opsConfig;
        this.f31916c = scheduler;
        this.f31917d = coroutineScope;
        this.f31919f = qt.d.b(false, 1, null);
    }

    public static final void e(m mVar) {
        gt.g.d(mVar.f31917d, null, null, new b(null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052 A[Catch: all -> 0x005b, TryCatch #0 {all -> 0x005b, blocks: (B:18:0x004e, B:20:0x0052, B:23:0x005d), top: B:28:0x004e }] */
    @Override // com.moloco.sdk.acm.eventprocessing.g
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.moloco.sdk.acm.eventprocessing.m.a
            if (r0 == 0) goto L13
            r0 = r6
            com.moloco.sdk.acm.eventprocessing.m$a r0 = (com.moloco.sdk.acm.eventprocessing.m.a) r0
            int r1 = r0.f31924l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f31924l = r1
            goto L18
        L13:
            com.moloco.sdk.acm.eventprocessing.m$a r0 = new com.moloco.sdk.acm.eventprocessing.m$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f31922j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f31924l
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r1 = r0.f31921i
            qt.a r1 = (qt.a) r1
            java.lang.Object r0 = r0.f31920h
            com.moloco.sdk.acm.eventprocessing.m r0 = (com.moloco.sdk.acm.eventprocessing.m) r0
            kotlin.f.b(r6)
            goto L4e
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3a:
            kotlin.f.b(r6)
            qt.a r6 = r5.f31919f
            r0.f31920h = r5
            r0.f31921i = r6
            r0.f31924l = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r5
            r1 = r6
        L4e:
            java.util.concurrent.ScheduledFuture<?> r6 = r0.f31918e     // Catch: java.lang.Throwable -> L5b
            if (r6 == 0) goto L5d
            r2 = 0
            boolean r6 = r6.cancel(r2)     // Catch: java.lang.Throwable -> L5b
            kotlin.coroutines.jvm.internal.a.a(r6)     // Catch: java.lang.Throwable -> L5b
            goto L5d
        L5b:
            r6 = move-exception
            goto L66
        L5d:
            r0.d()     // Catch: java.lang.Throwable -> L5b
            kotlin.Unit r6 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L5b
            r1.unlock(r4)
            return r6
        L66:
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.acm.eventprocessing.m.a(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    @Override // com.moloco.sdk.acm.eventprocessing.g
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object c(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.moloco.sdk.acm.eventprocessing.m.c
            if (r0 == 0) goto L13
            r0 = r6
            com.moloco.sdk.acm.eventprocessing.m$c r0 = (com.moloco.sdk.acm.eventprocessing.m.c) r0
            int r1 = r0.f31931l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f31931l = r1
            goto L18
        L13:
            com.moloco.sdk.acm.eventprocessing.m$c r0 = new com.moloco.sdk.acm.eventprocessing.m$c
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f31929j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f31931l
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r1 = r0.f31928i
            qt.a r1 = (qt.a) r1
            java.lang.Object r0 = r0.f31927h
            com.moloco.sdk.acm.eventprocessing.m r0 = (com.moloco.sdk.acm.eventprocessing.m) r0
            kotlin.f.b(r6)
            goto L4e
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3a:
            kotlin.f.b(r6)
            qt.a r6 = r5.f31919f
            r0.f31927h = r5
            r0.f31928i = r6
            r0.f31931l = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r5
            r1 = r6
        L4e:
            r0.d()     // Catch: java.lang.Throwable -> L57
            kotlin.Unit r6 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L57
            r1.unlock(r4)
            return r6
        L57:
            r6 = move-exception
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.acm.eventprocessing.m.c(rs.c):java.lang.Object");
    }

    public final void d() {
        ScheduledFuture<?> scheduledFuture = this.f31918e;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            this.f31918e = this.f31916c.scheduleWithFixedDelay(new Runnable() { // from class: com.moloco.sdk.acm.eventprocessing.h
                @Override // java.lang.Runnable
                public final void run() {
                    m.e(m.this);
                }
            }, this.f31915b.e(), this.f31915b.e(), TimeUnit.SECONDS);
        }
    }

    public /* synthetic */ m(com.moloco.sdk.acm.eventprocessing.b bVar, com.moloco.sdk.acm.h hVar, ScheduledExecutorService scheduledExecutorService, g0 g0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, hVar, (i10 & 4) != 0 ? Executors.newSingleThreadScheduledExecutor() : scheduledExecutorService, g0Var);
    }
}
