package kotlinx.coroutines.selects;

import at.n;
import gt.s0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.d;
import mt.a0;
import mt.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pt.i;
import pt.j;
import pt.k;
import rs.c;
/* compiled from: Select.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,904:1\n1#2:905\n2632#3,3:906\n1863#3,2:918\n1863#3,2:926\n1863#3,2:928\n426#4,9:909\n435#4,2:920\n149#5,4:922\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n529#1:906,3\n593#1:918,2\n749#1:926,2\n774#1:928,2\n569#1:909,9\n569#1:920,2\n734#1:922,4\n*E\n"})
/* loaded from: classes8.dex */
public class SelectImplementation<R> implements d, pt.a<R>, j<R> {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61858f = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state$volatile");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineContext f61859a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private List<SelectImplementation<R>.a> f61860b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Object f61861c;

    /* renamed from: d  reason: collision with root package name */
    private int f61862d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Object f61863e;
    private volatile /* synthetic */ Object state$volatile;

    /* compiled from: Select.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,904:1\n1#2:905\n*E\n"})
    /* loaded from: classes8.dex */
    public final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final Object f61864a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final n<Object, i<?>, Object, Unit> f61865b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final n<Object, Object, Object, Object> f61866c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final Object f61867d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final Object f61868e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final n<i<?>, Object, Object, n<Throwable, Object, CoroutineContext, Unit>> f61869f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public Object f61870g;

        /* renamed from: h  reason: collision with root package name */
        public int f61871h = -1;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull Object obj, @NotNull n<Object, ? super i<?>, Object, Unit> nVar, @NotNull n<Object, Object, Object, ? extends Object> nVar2, @Nullable Object obj2, @NotNull Object obj3, @Nullable n<? super i<?>, Object, Object, ? extends n<? super Throwable, Object, ? super CoroutineContext, Unit>> nVar3) {
            this.f61864a = obj;
            this.f61865b = nVar;
            this.f61866c = nVar2;
            this.f61867d = obj2;
            this.f61868e = obj3;
            this.f61869f = nVar3;
        }

        @Nullable
        public final n<Throwable, Object, CoroutineContext, Unit> a(@NotNull i<?> iVar, @Nullable Object obj) {
            n<i<?>, Object, Object, n<Throwable, Object, CoroutineContext, Unit>> nVar = this.f61869f;
            if (nVar != null) {
                return nVar.invoke(iVar, this.f61867d, obj);
            }
            return null;
        }

        public final void b() {
            Object obj = this.f61870g;
            SelectImplementation<R> selectImplementation = SelectImplementation.this;
            s0 s0Var = null;
            if (obj instanceof x) {
                ((x) obj).s(this.f61871h, null, selectImplementation.getContext());
                return;
            }
            if (obj instanceof s0) {
                s0Var = (s0) obj;
            }
            if (s0Var != null) {
                s0Var.dispose();
            }
        }

        @Nullable
        public final Object c(@Nullable Object obj, @NotNull c<? super R> cVar) {
            Object obj2 = this.f61868e;
            if (this.f61867d == k.i()) {
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>");
                return ((Function1) obj2).invoke(cVar);
            }
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>");
            return ((Function2) obj2).invoke(obj, cVar);
        }

        @Nullable
        public final Object d(@Nullable Object obj) {
            return this.f61866c.invoke(this.f61864a, this.f61867d, obj);
        }

        public final boolean e(@NotNull SelectImplementation<R> selectImplementation) {
            a0 a0Var;
            this.f61865b.invoke(this.f61864a, selectImplementation, this.f61867d);
            Object obj = ((SelectImplementation) selectImplementation).f61863e;
            a0Var = k.f65004e;
            if (obj == a0Var) {
                return true;
            }
            return false;
        }
    }

    public SelectImplementation(@NotNull CoroutineContext coroutineContext) {
        a0 a0Var;
        a0 a0Var2;
        this.f61859a = coroutineContext;
        a0Var = k.f65001b;
        this.state$volatile = a0Var;
        this.f61860b = new ArrayList(2);
        this.f61862d = -1;
        a0Var2 = k.f65004e;
        this.f61863e = a0Var2;
    }

    private final void l(Object obj) {
        List<SelectImplementation<R>.a> list = this.f61860b;
        Intrinsics.checkNotNull(list);
        List<SelectImplementation<R>.a> list2 = list;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                if (((a) it.next()).f61864a == obj) {
                    throw new IllegalStateException(("Cannot use select clauses on the same object: " + obj).toString());
                }
            }
        }
    }

    private final void m(SelectImplementation<R>.a aVar) {
        a0 a0Var;
        a0 a0Var2;
        List<SelectImplementation<R>.a> list = this.f61860b;
        if (list == null) {
            return;
        }
        for (SelectImplementation<R>.a aVar2 : list) {
            if (aVar2 != aVar) {
                aVar2.b();
            }
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61858f;
        a0Var = k.f65002c;
        atomicReferenceFieldUpdater.set(this, a0Var);
        a0Var2 = k.f65004e;
        this.f61863e = a0Var2;
        this.f61860b = null;
    }

    private final Object n(c<? super R> cVar) {
        Object obj = f61858f.get(this);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>");
        SelectImplementation<R>.a aVar = (a) obj;
        Object obj2 = this.f61863e;
        m(aVar);
        return aVar.c(aVar.d(obj2), cVar);
    }

    static /* synthetic */ <R> Object p(SelectImplementation<R> selectImplementation, c<? super R> cVar) {
        if (selectImplementation.t()) {
            return selectImplementation.n(cVar);
        }
        return selectImplementation.q(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0056 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0057 A[PHI: r6 
      PHI: (r6v5 java.lang.Object) = (r6v4 java.lang.Object), (r6v1 java.lang.Object) binds: [B:21:0x0054, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(rs.c<? super R> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1 r0 = (kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1) r0
            int r1 = r0.f61876k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61876k = r1
            goto L18
        L13:
            kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1 r0 = new kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f61874i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61876k
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r6)
            goto L57
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            java.lang.Object r2 = r0.f61873h
            kotlinx.coroutines.selects.SelectImplementation r2 = (kotlinx.coroutines.selects.SelectImplementation) r2
            kotlin.f.b(r6)
            goto L4b
        L3c:
            kotlin.f.b(r6)
            r0.f61873h = r5
            r0.f61876k = r4
            java.lang.Object r6 = r5.z(r0)
            if (r6 != r1) goto L4a
            return r1
        L4a:
            r2 = r5
        L4b:
            r6 = 0
            r0.f61873h = r6
            r0.f61876k = r3
            java.lang.Object r6 = r2.n(r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.q(rs.c):java.lang.Object");
    }

    private final SelectImplementation<R>.a r(Object obj) {
        List<SelectImplementation<R>.a> list = this.f61860b;
        Object obj2 = null;
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((a) next).f61864a == obj) {
                obj2 = next;
                break;
            }
        }
        SelectImplementation<R>.a aVar = (a) obj2;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    private final boolean t() {
        return f61858f.get(this) instanceof a;
    }

    public static /* synthetic */ void v(SelectImplementation selectImplementation, a aVar, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            selectImplementation.u(aVar, z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: register");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(Object obj) {
        SelectImplementation<R>.a r10 = r(obj);
        Intrinsics.checkNotNull(r10);
        r10.f61870g = null;
        r10.f61871h = -1;
        u(r10, true);
    }

    private final int y(Object obj, Object obj2) {
        boolean j10;
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        a0 a0Var4;
        while (true) {
            Object obj3 = f61858f.get(this);
            if (!(obj3 instanceof gt.i)) {
                a0Var2 = k.f65002c;
                if (!Intrinsics.areEqual(obj3, a0Var2) && !(obj3 instanceof a)) {
                    a0Var3 = k.f65003d;
                    if (!Intrinsics.areEqual(obj3, a0Var3)) {
                        a0Var4 = k.f65001b;
                        if (Intrinsics.areEqual(obj3, a0Var4)) {
                            if (androidx.concurrent.futures.a.a(f61858f, this, obj3, CollectionsKt.e(obj))) {
                                return 1;
                            }
                        } else if (obj3 instanceof List) {
                            if (androidx.concurrent.futures.a.a(f61858f, this, obj3, CollectionsKt.L0((Collection) obj3, obj))) {
                                return 1;
                            }
                        } else {
                            throw new IllegalStateException(("Unexpected state: " + obj3).toString());
                        }
                    } else {
                        return 2;
                    }
                } else {
                    return 3;
                }
            } else {
                SelectImplementation<R>.a r10 = r(obj);
                if (r10 == null) {
                    continue;
                } else {
                    n<Throwable, Object, CoroutineContext, Unit> a10 = r10.a(this, obj2);
                    if (androidx.concurrent.futures.a.a(f61858f, this, obj3, r10)) {
                        this.f61863e = obj2;
                        j10 = k.j((gt.i) obj3, a10);
                        if (!j10) {
                            a0Var = k.f65004e;
                            this.f61863e = a0Var;
                            return 2;
                        }
                        return 0;
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
        r0 = r0.B();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
        if (r0 != kotlin.coroutines.intrinsics.a.f()) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
        kotlin.coroutines.jvm.internal.f.c(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0073, code lost:
        if (r0 != kotlin.coroutines.intrinsics.a.f()) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0075, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
        return kotlin.Unit.f60915a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object z(rs.c<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            kotlinx.coroutines.e r0 = new kotlinx.coroutines.e
            rs.c r1 = kotlin.coroutines.intrinsics.a.c(r6)
            r2 = 1
            r0.<init>(r1, r2)
            r0.H()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = j()
        L11:
            java.lang.Object r2 = r1.get(r5)
            mt.a0 r3 = pt.k.g()
            if (r2 != r3) goto L29
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = j()
            boolean r2 = androidx.concurrent.futures.a.a(r3, r5, r2, r0)
            if (r2 == 0) goto L11
            gt.l.c(r0, r5)
            goto L62
        L29:
            boolean r3 = r2 instanceof java.util.List
            if (r3 == 0) goto L4f
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = j()
            mt.a0 r4 = pt.k.g()
            boolean r3 = androidx.concurrent.futures.a.a(r3, r5, r2, r4)
            if (r3 == 0) goto L11
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Iterator r2 = r2.iterator()
        L41:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L11
            java.lang.Object r3 = r2.next()
            k(r5, r3)
            goto L41
        L4f:
            boolean r1 = r2 instanceof kotlinx.coroutines.selects.SelectImplementation.a
            if (r1 == 0) goto L79
            kotlin.Unit r1 = kotlin.Unit.f60915a
            kotlinx.coroutines.selects.SelectImplementation$a r2 = (kotlinx.coroutines.selects.SelectImplementation.a) r2
            java.lang.Object r3 = i(r5)
            at.n r2 = r2.a(r5, r3)
            r0.y(r1, r2)
        L62:
            java.lang.Object r0 = r0.B()
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            if (r0 != r1) goto L6f
            kotlin.coroutines.jvm.internal.f.c(r6)
        L6f:
            java.lang.Object r6 = kotlin.coroutines.intrinsics.a.f()
            if (r0 != r6) goto L76
            return r0
        L76:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        L79:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "unexpected state: "
            r0.append(r1)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r0.toString()
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.z(rs.c):java.lang.Object");
    }

    @Override // kotlinx.coroutines.d
    public void a(@Nullable Throwable th2) {
        Object obj;
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61858f;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            a0Var = k.f65002c;
            if (obj != a0Var) {
                a0Var2 = k.f65003d;
            } else {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, a0Var2));
        List<SelectImplementation<R>.a> list = this.f61860b;
        if (list == null) {
            return;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ((a) it.next()).b();
        }
        a0Var3 = k.f65004e;
        this.f61863e = a0Var3;
        this.f61860b = null;
    }

    @Override // pt.i
    public void b(@NotNull s0 s0Var) {
        this.f61861c = s0Var;
    }

    @Override // pt.a
    public void c(@NotNull pt.b bVar, @NotNull Function1<? super c<? super R>, ? extends Object> function1) {
        v(this, new a(bVar.d(), bVar.c(), bVar.b(), k.i(), function1, bVar.a()), false, 1, null);
    }

    @Override // pt.a
    public <Q> void d(@NotNull pt.d<? extends Q> dVar, @NotNull Function2<? super Q, ? super c<? super R>, ? extends Object> function2) {
        v(this, new a(dVar.d(), dVar.c(), dVar.b(), null, function2, dVar.a()), false, 1, null);
    }

    @Override // pt.i
    public void e(@Nullable Object obj) {
        this.f61863e = obj;
    }

    @Override // pt.i
    public boolean f(@NotNull Object obj, @Nullable Object obj2) {
        if (y(obj, obj2) == 0) {
            return true;
        }
        return false;
    }

    @Override // gt.y1
    public void g(@NotNull x<?> xVar, int i10) {
        this.f61861c = xVar;
        this.f61862d = i10;
    }

    @Override // pt.i
    @NotNull
    public CoroutineContext getContext() {
        return this.f61859a;
    }

    @Nullable
    public Object o(@NotNull c<? super R> cVar) {
        return p(this, cVar);
    }

    public final void u(@NotNull SelectImplementation<R>.a aVar, boolean z10) {
        if (f61858f.get(this) instanceof a) {
            return;
        }
        if (!z10) {
            l(aVar.f61864a);
        }
        if (aVar.e(this)) {
            if (!z10) {
                List<SelectImplementation<R>.a> list = this.f61860b;
                Intrinsics.checkNotNull(list);
                list.add(aVar);
            }
            aVar.f61870g = this.f61861c;
            aVar.f61871h = this.f61862d;
            this.f61861c = null;
            this.f61862d = -1;
            return;
        }
        f61858f.set(this, aVar);
    }

    @NotNull
    public final TrySelectDetailedResult x(@NotNull Object obj, @Nullable Object obj2) {
        TrySelectDetailedResult a10;
        a10 = k.a(y(obj, obj2));
        return a10;
    }
}
