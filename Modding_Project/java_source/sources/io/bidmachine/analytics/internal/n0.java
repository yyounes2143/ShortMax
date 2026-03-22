package io.bidmachine.analytics.internal;

import com.explorestack.protobuf.Struct;
import gt.r1;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes7.dex */
public final class n0 {

    /* renamed from: a  reason: collision with root package name */
    private final a f54191a;

    /* renamed from: b  reason: collision with root package name */
    private final l0 f54192b;

    /* renamed from: c  reason: collision with root package name */
    private final String f54193c;

    /* renamed from: d  reason: collision with root package name */
    private final gt.g0 f54194d;

    /* loaded from: classes7.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final ReaderConfig f54195a;

        /* renamed from: b  reason: collision with root package name */
        private final String f54196b;

        /* renamed from: c  reason: collision with root package name */
        private final Struct f54197c;

        /* renamed from: d  reason: collision with root package name */
        private final g0.a f54198d;

        public a(ReaderConfig readerConfig, String str, Struct struct, g0.a aVar) {
            this.f54195a = readerConfig;
            this.f54196b = str;
            this.f54197c = struct;
            this.f54198d = aVar;
        }

        public final g0.a a() {
            return this.f54198d;
        }

        public final Struct b() {
            return this.f54197c;
        }

        public final ReaderConfig c() {
            return this.f54195a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f54199a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f54200b;

        /* renamed from: d  reason: collision with root package name */
        int f54202d;

        b(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f54200b = obj;
            this.f54202d |= Integer.MIN_VALUE;
            Object a10 = n0.this.a((String) null, this);
            if (a10 == kotlin.coroutines.intrinsics.a.f()) {
                return a10;
            }
            return Result.b(a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f54203a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f54204b;

        /* renamed from: d  reason: collision with root package name */
        int f54206d;

        c(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f54204b = obj;
            this.f54206d |= Integer.MIN_VALUE;
            return n0.this.a((List) null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class d extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f54207a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f54209c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(List list, rs.c cVar) {
            super(2, cVar);
            this.f54209c = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            return new d(this.f54209c, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object a10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f54207a;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                    a10 = ((Result) obj).n();
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                g0 g0Var = new g0(n0.this.f54191a.c().getUrl(), n0.this.f54191a.c().getName(), n0.this.f54191a.b(), this.f54209c, n0.this.f54191a.a(), null, 32, null);
                this.f54207a = 1;
                a10 = g0Var.a(this);
                if (a10 == f10) {
                    return f10;
                }
            }
            n0 n0Var = n0.this;
            List list = this.f54209c;
            if (Result.j(a10)) {
                g0 g0Var2 = (g0) a10;
                l0 l0Var = n0Var.f54192b;
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (((h0) obj2).b() != null) {
                        arrayList.add(obj2);
                    }
                }
                l0Var.b(arrayList);
                ArrayList<h0> arrayList2 = new ArrayList();
                for (Object obj3 : list) {
                    if (((h0) obj3).b() == null) {
                        arrayList2.add(obj3);
                    }
                }
                n0Var.f54192b.c(arrayList2);
                for (h0 h0Var : arrayList2) {
                    n0Var.a(h0Var);
                }
            }
            n0 n0Var2 = n0.this;
            List list2 = this.f54209c;
            if (Result.g(a10) != null) {
                n0Var2.f54192b.c(list2);
            }
            return Result.b(a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class e extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        Object f54210a;

        /* renamed from: b  reason: collision with root package name */
        int f54211b;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f54213d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ List f54214e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, List list, rs.c cVar) {
            super(2, cVar);
            this.f54213d = str;
            this.f54214e = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((e) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            return new e(this.f54213d, this.f54214e, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            List arrayList;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f54211b;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                arrayList = (List) this.f54210a;
                kotlin.f.b(obj);
                ((Result) obj).n();
            } else {
                kotlin.f.b(obj);
                arrayList = new ArrayList();
                n0 n0Var = n0.this;
                String str = this.f54213d;
                List list = this.f54214e;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : list) {
                    if (((h0) obj2).b() != null) {
                        arrayList2.add(obj2);
                    }
                }
                n0Var.a(str, arrayList2);
                List<h0> list2 = this.f54214e;
                n0 n0Var2 = n0.this;
                for (h0 h0Var : list2) {
                    if (Result.i(n0Var2.a(h0Var))) {
                        arrayList.add(h0Var);
                    }
                }
                n0 n0Var3 = n0.this;
                String str2 = this.f54213d;
                this.f54210a = arrayList;
                this.f54211b = 1;
                if (n0Var3.a(str2, this) == f10) {
                    return f10;
                }
            }
            if (!arrayList.isEmpty()) {
                n0 n0Var4 = n0.this;
                this.f54210a = null;
                this.f54211b = 2;
                if (n0Var4.a(arrayList, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public n0(p0 p0Var, a aVar, l0 l0Var) {
        this.f54191a = aVar;
        this.f54192b = l0Var;
        this.f54193c = aVar.c().getName();
        this.f54194d = kotlinx.coroutines.i.a(new gt.f0("AnalyticsMonitor: " + aVar.c().getName()).plus(r1.b(null, 1, null)).plus(p0Var.c()));
    }

    public final void b(String str, List list) {
        gt.g.d(this.f54194d, null, null, new e(str, list, null), 3, null);
    }

    public final String a() {
        return this.f54193c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object a(String str, List list) {
        try {
            Result.a aVar = Result.f60901b;
            l0 l0Var = this.f54192b;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((h0) it.next()).e());
            }
            return Result.d(Result.b(l0Var.a(str, arrayList)));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r5, rs.c r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.bidmachine.analytics.internal.n0.b
            if (r0 == 0) goto L13
            r0 = r6
            io.bidmachine.analytics.internal.n0$b r0 = (io.bidmachine.analytics.internal.n0.b) r0
            int r1 = r0.f54202d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f54202d = r1
            goto L18
        L13:
            io.bidmachine.analytics.internal.n0$b r0 = new io.bidmachine.analytics.internal.n0$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f54200b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f54202d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f54199a
            kotlin.f.b(r6)     // Catch: java.lang.Throwable -> L2b
            goto L5a
        L2b:
            r5 = move-exception
            goto L63
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            kotlin.Result$a r6 = kotlin.Result.f60901b     // Catch: java.lang.Throwable -> L2b
            io.bidmachine.analytics.internal.l0 r6 = r4.f54192b     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r5 = r6.a(r5)     // Catch: java.lang.Throwable -> L2b
            boolean r6 = kotlin.Result.j(r5)     // Catch: java.lang.Throwable -> L2b
            if (r6 == 0) goto L5a
            r6 = r5
            java.util.List r6 = (java.util.List) r6     // Catch: java.lang.Throwable -> L2b
            boolean r2 = r6.isEmpty()     // Catch: java.lang.Throwable -> L2b
            if (r2 != 0) goto L5a
            r0.f54199a = r5     // Catch: java.lang.Throwable -> L2b
            r0.f54202d = r3     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r6 = r4.a(r6, r0)     // Catch: java.lang.Throwable -> L2b
            if (r6 != r1) goto L5a
            return r1
        L5a:
            kotlin.Result r5 = kotlin.Result.b(r5)     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r5 = kotlin.Result.d(r5)     // Catch: java.lang.Throwable -> L2b
            goto L6d
        L63:
            kotlin.Result$a r6 = kotlin.Result.f60901b
            java.lang.Object r5 = kotlin.f.a(r5)
            java.lang.Object r5 = kotlin.Result.d(r5)
        L6d:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.n0.a(java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object a(h0 h0Var) {
        boolean z10;
        h0 a10;
        try {
            Result.a aVar = Result.f60901b;
            if (h0Var.b() != null) {
                return this.f54192b.b(h0Var);
            }
            Object a11 = this.f54192b.a(h0Var.d(), h0Var.e());
            if (Result.i(a11)) {
                a11 = null;
            }
            h0 h0Var2 = (h0) a11;
            if (h0Var2 == null) {
                return this.f54192b.b(h0Var);
            }
            if (this.f54191a.c().getUniqueOnly() && Intrinsics.areEqual(h0Var.a(), h0Var2.a())) {
                z10 = false;
                a10 = h0Var.a((r18 & 1) != 0 ? h0Var.f54101a : h0Var2.c(), (r18 & 2) != 0 ? h0Var.f54102b : null, (r18 & 4) != 0 ? h0Var.f54103c : 0L, (r18 & 8) != 0 ? h0Var.f54104d : null, (r18 & 16) != 0 ? h0Var.f54105e : null, (r18 & 32) != 0 ? h0Var.f54106f : null, (r18 & 64) != 0 ? h0Var.f54107g : z10);
                return this.f54192b.a(a10);
            }
            z10 = true;
            a10 = h0Var.a((r18 & 1) != 0 ? h0Var.f54101a : h0Var2.c(), (r18 & 2) != 0 ? h0Var.f54102b : null, (r18 & 4) != 0 ? h0Var.f54103c : 0L, (r18 & 8) != 0 ? h0Var.f54104d : null, (r18 & 16) != 0 ? h0Var.f54105e : null, (r18 & 32) != 0 ? h0Var.f54106f : null, (r18 & 64) != 0 ? h0Var.f54107g : z10);
            return this.f54192b.a(a10);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.util.List r11, rs.c r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof io.bidmachine.analytics.internal.n0.c
            if (r0 == 0) goto L13
            r0 = r12
            io.bidmachine.analytics.internal.n0$c r0 = (io.bidmachine.analytics.internal.n0.c) r0
            int r1 = r0.f54206d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f54206d = r1
            goto L18
        L13:
            io.bidmachine.analytics.internal.n0$c r0 = new io.bidmachine.analytics.internal.n0$c
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.f54204b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f54206d
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r12)
            goto L5e
        L29:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L31:
            kotlin.f.b(r12)
            io.bidmachine.analytics.internal.l0 r12 = r10.f54192b
            java.lang.Object r12 = r12.a(r11)
            boolean r2 = kotlin.Result.j(r12)
            if (r2 == 0) goto L5e
            r2 = r12
            kotlin.Unit r2 = (kotlin.Unit) r2
            gt.g0 r4 = r10.f54194d
            io.bidmachine.analytics.internal.n0$d r7 = new io.bidmachine.analytics.internal.n0$d
            r2 = 0
            r7.<init>(r11, r2)
            r8 = 3
            r9 = 0
            r5 = 0
            r6 = 0
            gt.k0 r11 = gt.e.b(r4, r5, r6, r7, r8, r9)
            r0.f54203a = r12
            r0.f54206d = r3
            java.lang.Object r11 = r11.await(r0)
            if (r11 != r1) goto L5e
            return r1
        L5e:
            kotlin.Unit r11 = kotlin.Unit.f60915a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.n0.a(java.util.List, rs.c):java.lang.Object");
    }
}
