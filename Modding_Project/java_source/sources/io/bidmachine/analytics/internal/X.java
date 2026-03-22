package io.bidmachine.analytics.internal;

import com.explorestack.protobuf.Struct;
import gt.r1;
import io.bidmachine.analytics.MonitorConfig;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.r;
/* loaded from: classes7.dex */
public final class X {

    /* renamed from: g  reason: collision with root package name */
    public static final a f54016g = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final b f54017a;

    /* renamed from: b  reason: collision with root package name */
    private final V f54018b;

    /* renamed from: c  reason: collision with root package name */
    private final String f54019c;

    /* renamed from: d  reason: collision with root package name */
    private final gt.g0 f54020d;

    /* renamed from: e  reason: collision with root package name */
    private kotlinx.coroutines.r f54021e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f54022f = new AtomicBoolean(false);

    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* loaded from: classes7.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final MonitorConfig f54023a;

        /* renamed from: b  reason: collision with root package name */
        private final String f54024b;

        /* renamed from: c  reason: collision with root package name */
        private final Struct f54025c;

        public b(MonitorConfig monitorConfig, String str, Struct struct) {
            this.f54023a = monitorConfig;
            this.f54024b = str;
            this.f54025c = struct;
        }

        public final Struct a() {
            return this.f54025c;
        }

        public final MonitorConfig b() {
            return this.f54023a;
        }

        public final String c() {
            return this.f54024b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f54026a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f54028c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(List list, rs.c cVar) {
            super(2, cVar);
            this.f54028c = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            return new c(this.f54028c, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f54026a;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                X x10 = X.this;
                List list = this.f54028c;
                this.f54026a = 1;
                if (x10.a(list, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class d extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f54029a;

        d(rs.c cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            return new d(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f54029a;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        ((Result) obj).n();
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                long interval = X.this.f54017a.b().getInterval();
                this.f54029a = 1;
                if (DelayKt.b(interval, this) == f10) {
                    return f10;
                }
            }
            X x10 = X.this;
            this.f54029a = 2;
            if (x10.a(0, this) == f10) {
                return f10;
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class e extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f54031a;

        /* renamed from: b  reason: collision with root package name */
        Object f54032b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f54033c;

        /* renamed from: e  reason: collision with root package name */
        int f54035e;

        e(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f54033c = obj;
            this.f54035e |= Integer.MIN_VALUE;
            return X.this.a((List) null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class f extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f54036a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f54038c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(List list, rs.c cVar) {
            super(2, cVar);
            this.f54038c = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((f) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            return new f(this.f54038c, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object a10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f54036a;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                    a10 = ((Result) obj).n();
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                P p10 = new P(X.this.f54017a.b().getUrl(), X.this.f54017a.b().getName(), X.this.f54017a.a(), this.f54038c, null, 16, null);
                this.f54036a = 1;
                a10 = p10.a(this);
                if (a10 == f10) {
                    return f10;
                }
            }
            X x10 = X.this;
            List list = this.f54038c;
            if (Result.j(a10)) {
                P p11 = (P) a10;
                x10.f54018b.b(list);
            }
            X x11 = X.this;
            List list2 = this.f54038c;
            if (Result.g(a10) != null) {
                x11.f54018b.c(list2);
            }
            return Result.b(a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class g extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f54039a;

        /* renamed from: b  reason: collision with root package name */
        Object f54040b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f54041c;

        /* renamed from: e  reason: collision with root package name */
        int f54043e;

        g(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f54041c = obj;
            this.f54043e |= Integer.MIN_VALUE;
            Object a10 = X.this.a(0, this);
            if (a10 == kotlin.coroutines.intrinsics.a.f()) {
                return a10;
            }
            return Result.b(a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class h extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f54044a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Q f54046c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(Q q10, rs.c cVar) {
            super(2, cVar);
            this.f54046c = q10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((h) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            return new h(this.f54046c, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f54044a;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    ((Result) obj).n();
                }
            } else {
                kotlin.f.b(obj);
                if (Result.j(X.this.a(this.f54046c))) {
                    X x10 = X.this;
                    int batchSize = x10.f54017a.b().getBatchSize();
                    this.f54044a = 1;
                    if (x10.a(batchSize, this) == f10) {
                        return f10;
                    }
                } else {
                    X x11 = X.this;
                    List e10 = CollectionsKt.e(this.f54046c);
                    this.f54044a = 2;
                    if (x11.a(e10, this) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    public X(p0 p0Var, b bVar, V v10) {
        this.f54017a = bVar;
        this.f54018b = v10;
        this.f54019c = bVar.b().getName();
        this.f54020d = kotlinx.coroutines.i.a(new gt.f0("AnalyticsMonitor: " + bVar.b().getName()).plus(r1.b(null, 1, null)).plus(p0Var.c()));
    }

    public final String b() {
        return this.f54019c;
    }

    public final void b(Q q10) {
        if (this.f54022f.get()) {
            return;
        }
        gt.g.d(this.f54020d, null, null, new h(q10, null), 3, null);
    }

    public final void a() {
        if (this.f54022f.compareAndSet(false, true)) {
            Object a10 = this.f54018b.a(this.f54017a.b().getName(), this.f54017a.c());
            if (Result.j(a10)) {
                gt.g.d(this.f54020d, null, null, new c((List) a10, null), 3, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object a(Q q10) {
        try {
            Result.a aVar = Result.f60901b;
            return this.f54018b.a(q10);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008d A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:12:0x002d, B:30:0x0087, B:32:0x008d, B:33:0x0090, B:19:0x003e, B:21:0x0066, B:23:0x006f, B:25:0x0075, B:28:0x0082), top: B:37:0x0023 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(int r9, rs.c r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof io.bidmachine.analytics.internal.X.g
            if (r0 == 0) goto L13
            r0 = r10
            io.bidmachine.analytics.internal.X$g r0 = (io.bidmachine.analytics.internal.X.g) r0
            int r1 = r0.f54043e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f54043e = r1
            goto L18
        L13:
            io.bidmachine.analytics.internal.X$g r0 = new io.bidmachine.analytics.internal.X$g
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f54041c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f54043e
            r3 = 0
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 != r5) goto L33
            java.lang.Object r9 = r0.f54040b
            java.lang.Object r0 = r0.f54039a
            io.bidmachine.analytics.internal.X r0 = (io.bidmachine.analytics.internal.X) r0
            kotlin.f.b(r10)     // Catch: java.lang.Throwable -> L31
            goto L87
        L31:
            r9 = move-exception
            goto L99
        L33:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3b:
            kotlin.f.b(r10)
            kotlin.Result$a r10 = kotlin.Result.f60901b     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.internal.V r10 = r8.f54018b     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.internal.X$b r2 = r8.f54017a     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.MonitorConfig r2 = r2.b()     // Catch: java.lang.Throwable -> L31
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.internal.X$b r6 = r8.f54017a     // Catch: java.lang.Throwable -> L31
            java.lang.String r6 = r6.c()     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.internal.X$b r7 = r8.f54017a     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.MonitorConfig r7 = r7.b()     // Catch: java.lang.Throwable -> L31
            int r7 = r7.getBatchSize()     // Catch: java.lang.Throwable -> L31
            java.lang.Object r10 = r10.a(r2, r6, r7)     // Catch: java.lang.Throwable -> L31
            boolean r2 = kotlin.Result.j(r10)     // Catch: java.lang.Throwable -> L31
            if (r2 == 0) goto L85
            r2 = r10
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> L31
            boolean r6 = r2.isEmpty()     // Catch: java.lang.Throwable -> L31
            if (r6 != 0) goto L82
            int r6 = r2.size()     // Catch: java.lang.Throwable -> L31
            if (r6 < r9) goto L82
            r0.f54039a = r8     // Catch: java.lang.Throwable -> L31
            r0.f54040b = r10     // Catch: java.lang.Throwable -> L31
            r0.f54043e = r5     // Catch: java.lang.Throwable -> L31
            java.lang.Object r9 = r8.a(r2, r0)     // Catch: java.lang.Throwable -> L31
            if (r9 != r1) goto L85
            return r1
        L82:
            a(r8, r4, r5, r3)     // Catch: java.lang.Throwable -> L31
        L85:
            r0 = r8
            r9 = r10
        L87:
            java.lang.Throwable r10 = kotlin.Result.g(r9)     // Catch: java.lang.Throwable -> L31
            if (r10 == 0) goto L90
            a(r0, r4, r5, r3)     // Catch: java.lang.Throwable -> L31
        L90:
            kotlin.Result r9 = kotlin.Result.b(r9)     // Catch: java.lang.Throwable -> L31
            java.lang.Object r9 = kotlin.Result.d(r9)     // Catch: java.lang.Throwable -> L31
            goto La3
        L99:
            kotlin.Result$a r10 = kotlin.Result.f60901b
            java.lang.Object r9 = kotlin.f.a(r9)
            java.lang.Object r9 = kotlin.Result.d(r9)
        La3:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.X.a(int, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.util.List r12, rs.c r13) {
        /*
            r11 = this;
            boolean r0 = r13 instanceof io.bidmachine.analytics.internal.X.e
            if (r0 == 0) goto L13
            r0 = r13
            io.bidmachine.analytics.internal.X$e r0 = (io.bidmachine.analytics.internal.X.e) r0
            int r1 = r0.f54035e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f54035e = r1
            goto L18
        L13:
            io.bidmachine.analytics.internal.X$e r0 = new io.bidmachine.analytics.internal.X$e
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.f54033c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f54035e
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r12 = r0.f54032b
            java.lang.Object r0 = r0.f54031a
            io.bidmachine.analytics.internal.X r0 = (io.bidmachine.analytics.internal.X) r0
            kotlin.f.b(r13)
            goto L94
        L2f:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L37:
            kotlin.f.b(r13)
            io.bidmachine.analytics.internal.V r13 = r11.f54018b
            java.lang.Object r13 = r13.a(r12)
            boolean r2 = kotlin.Result.j(r13)
            if (r2 == 0) goto L99
            r2 = r13
            kotlin.Unit r2 = (kotlin.Unit) r2
            io.bidmachine.analytics.internal.X$b r2 = r11.f54017a
            io.bidmachine.analytics.MonitorConfig r2 = r2.b()
            int r2 = r2.getBatchSize()
            java.util.List r12 = kotlin.collections.CollectionsKt.f0(r12, r2)
            java.util.ArrayList r2 = new java.util.ArrayList
            r4 = 10
            int r4 = kotlin.collections.CollectionsKt.z(r12, r4)
            r2.<init>(r4)
            java.util.Iterator r12 = r12.iterator()
        L66:
            boolean r4 = r12.hasNext()
            if (r4 == 0) goto L85
            java.lang.Object r4 = r12.next()
            java.util.List r4 = (java.util.List) r4
            gt.g0 r5 = r11.f54020d
            io.bidmachine.analytics.internal.X$f r8 = new io.bidmachine.analytics.internal.X$f
            r6 = 0
            r8.<init>(r4, r6)
            r9 = 3
            r10 = 0
            r7 = 0
            gt.k0 r4 = gt.e.b(r5, r6, r7, r8, r9, r10)
            r2.add(r4)
            goto L66
        L85:
            r0.f54031a = r11
            r0.f54032b = r13
            r0.f54035e = r3
            java.lang.Object r12 = kotlinx.coroutines.AwaitKt.a(r2, r0)
            if (r12 != r1) goto L92
            return r1
        L92:
            r0 = r11
            r12 = r13
        L94:
            r0.a(r3)
            r13 = r12
            goto L9a
        L99:
            r0 = r11
        L9a:
            java.lang.Throwable r12 = kotlin.Result.g(r13)
            if (r12 == 0) goto La3
            r0.a(r3)
        La3:
            kotlin.Unit r12 = kotlin.Unit.f60915a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.X.a(java.util.List, rs.c):java.lang.Object");
    }

    static /* synthetic */ void a(X x10, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        x10.a(z10);
    }

    private final void a(boolean z10) {
        kotlinx.coroutines.r d10;
        kotlinx.coroutines.r rVar;
        if (this.f54022f.get()) {
            return;
        }
        if (z10 || (rVar = this.f54021e) == null || !rVar.isActive()) {
            kotlinx.coroutines.r rVar2 = this.f54021e;
            if (rVar2 != null) {
                r.a.b(rVar2, null, 1, null);
            }
            d10 = gt.g.d(this.f54020d, null, null, new d(null), 3, null);
            this.f54021e = d10;
        }
    }
}
