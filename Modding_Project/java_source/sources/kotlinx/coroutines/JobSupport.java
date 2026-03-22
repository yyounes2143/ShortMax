package kotlinx.coroutines;

import gt.f1;
import gt.g1;
import gt.h0;
import gt.k1;
import gt.l1;
import gt.n1;
import gt.s0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.r;
import mt.a0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@ms.c
@Metadata
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 7 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 8 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 9 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1583:1\n732#1,3:1587\n361#1,2:1597\n363#1,5:1602\n368#1,5:1608\n373#1,2:1616\n361#1,2:1618\n363#1,5:1623\n368#1,5:1629\n373#1,2:1637\n169#1,2:1645\n734#1:1647\n536#1:1648\n169#1,2:1649\n537#1,15:1651\n169#1,2:1666\n169#1,2:1668\n169#1,2:1681\n732#1,3:1683\n732#1,3:1686\n169#1,2:1689\n732#1,3:1691\n169#1,2:1694\n169#1,2:1698\n169#1,2:1700\n536#1:1704\n169#1,2:1705\n537#1,15:1707\n1#2:1584\n1#2:1607\n1#2:1628\n29#3:1585\n29#3:1696\n29#3:1702\n16#4:1586\n16#4:1697\n16#4:1703\n295#5,2:1590\n295#5,2:1592\n23#6:1594\n159#7:1595\n159#7:1596\n149#7,4:1722\n273#8,3:1599\n276#8,3:1613\n273#8,3:1620\n276#8,3:1634\n273#8,6:1639\n426#9,11:1670\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n241#1:1587,3\n324#1:1597,2\n324#1:1602,5\n324#1:1608,5\n324#1:1616,2\n357#1:1618,2\n357#1:1623,5\n357#1:1629,5\n357#1:1637,2\n377#1:1645,2\n422#1:1647\n468#1:1648\n468#1:1649,2\n468#1:1651,15\n536#1:1666,2\n579#1:1668,2\n621#1:1681,2\n648#1:1683,3\n657#1:1686,3\n721#1:1689,2\n750#1:1691,3\n763#1:1694,2\n836#1:1698,2\n858#1:1700,2\n1023#1:1704\n1023#1:1705,2\n1023#1:1707,15\n324#1:1607\n357#1:1628\n204#1:1585\n766#1:1696\n911#1:1702\n204#1:1586\n766#1:1697\n911#1:1703\n252#1:1590,2\n256#1:1592,2\n264#1:1594\n270#1:1595\n272#1:1596\n1327#1:1722,4\n324#1:1599,3\n324#1:1613,3\n357#1:1620,3\n357#1:1634,3\n362#1:1639,6\n585#1:1670,11\n*E\n"})
/* loaded from: classes8.dex */
public class JobSupport implements r, gt.o, n1 {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61282a = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61283b = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$AwaitContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1583:1\n1#2:1584\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a<T> extends kotlinx.coroutines.e<T> {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final JobSupport f61284i;

        public a(@NotNull rs.c<? super T> cVar, @NotNull JobSupport jobSupport) {
            super(cVar, 1);
            this.f61284i = jobSupport;
        }

        @Override // kotlinx.coroutines.e
        @NotNull
        protected String N() {
            return "AwaitContinuation";
        }

        @Override // kotlinx.coroutines.e
        @NotNull
        public Throwable z(@NotNull r rVar) {
            Throwable e10;
            Object e02 = this.f61284i.e0();
            if ((e02 instanceof c) && (e10 = ((c) e02).e()) != null) {
                return e10;
            }
            if (e02 instanceof gt.t) {
                return ((gt.t) e02).f52556a;
            }
            return rVar.getCancellationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends g1 {
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final JobSupport f61285e;
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private final c f61286f;
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final g f61287g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private final Object f61288h;

        public b(@NotNull JobSupport jobSupport, @NotNull c cVar, @NotNull g gVar, @Nullable Object obj) {
            this.f61285e = jobSupport;
            this.f61286f = cVar;
            this.f61287g = gVar;
            this.f61288h = obj;
        }

        @Override // gt.g1
        public boolean u() {
            return false;
        }

        @Override // gt.g1
        public void v(@Nullable Throwable th2) {
            this.f61285e.T(this.f61286f, this.f61287g, this.f61288h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$Finishing\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1583:1\n1#2:1584\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class c implements f1 {

        /* renamed from: b  reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f61289b = AtomicIntegerFieldUpdater.newUpdater(c.class, "_isCompleting$volatile");

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f61290c = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_rootCause$volatile");

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f61291d = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_exceptionsHolder$volatile");
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile;
        private volatile /* synthetic */ Object _rootCause$volatile;
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final k1 f61292a;

        public c(@NotNull k1 k1Var, boolean z10, @Nullable Throwable th2) {
            this.f61292a = k1Var;
            this._isCompleting$volatile = z10 ? 1 : 0;
            this._rootCause$volatile = th2;
        }

        private final ArrayList<Throwable> c() {
            return new ArrayList<>(4);
        }

        private final Object d() {
            return f61291d.get(this);
        }

        private final void n(Object obj) {
            f61291d.set(this, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(@NotNull Throwable th2) {
            Throwable e10 = e();
            if (e10 == null) {
                o(th2);
            } else if (th2 == e10) {
            } else {
                Object d10 = d();
                if (d10 == null) {
                    n(th2);
                } else if (d10 instanceof Throwable) {
                    if (th2 == d10) {
                        return;
                    }
                    ArrayList<Throwable> c10 = c();
                    c10.add(d10);
                    c10.add(th2);
                    n(c10);
                } else if (d10 instanceof ArrayList) {
                    ((ArrayList) d10).add(th2);
                } else {
                    throw new IllegalStateException(("State is " + d10).toString());
                }
            }
        }

        @Override // gt.f1
        @NotNull
        public k1 b() {
            return this.f61292a;
        }

        @Nullable
        public final Throwable e() {
            return (Throwable) f61290c.get(this);
        }

        public final boolean i() {
            if (e() != null) {
                return true;
            }
            return false;
        }

        @Override // gt.f1
        public boolean isActive() {
            if (e() == null) {
                return true;
            }
            return false;
        }

        public final boolean j() {
            if (f61289b.get(this) == 1) {
                return true;
            }
            return false;
        }

        public final boolean k() {
            a0 a0Var;
            Object d10 = d();
            a0Var = u.f61913e;
            if (d10 == a0Var) {
                return true;
            }
            return false;
        }

        @NotNull
        public final List<Throwable> l(@Nullable Throwable th2) {
            ArrayList<Throwable> arrayList;
            a0 a0Var;
            Object d10 = d();
            if (d10 == null) {
                arrayList = c();
            } else if (d10 instanceof Throwable) {
                ArrayList<Throwable> c10 = c();
                c10.add(d10);
                arrayList = c10;
            } else if (d10 instanceof ArrayList) {
                arrayList = (ArrayList) d10;
            } else {
                throw new IllegalStateException(("State is " + d10).toString());
            }
            Throwable e10 = e();
            if (e10 != null) {
                arrayList.add(0, e10);
            }
            if (th2 != null && !Intrinsics.areEqual(th2, e10)) {
                arrayList.add(th2);
            }
            a0Var = u.f61913e;
            n(a0Var);
            return arrayList;
        }

        public final void m(boolean z10) {
            f61289b.set(this, z10 ? 1 : 0);
        }

        public final void o(@Nullable Throwable th2) {
            f61290c.set(this, th2);
        }

        @NotNull
        public String toString() {
            return "Finishing[cancelling=" + i() + ", completing=" + j() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + b() + ']';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public final class d extends g1 {
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final pt.i<?> f61298e;

        public d(@NotNull pt.i<?> iVar) {
            this.f61298e = iVar;
        }

        @Override // gt.g1
        public boolean u() {
            return false;
        }

        @Override // gt.g1
        public void v(@Nullable Throwable th2) {
            Object e02 = JobSupport.this.e0();
            if (!(e02 instanceof gt.t)) {
                e02 = u.h(e02);
            }
            this.f61298e.f(JobSupport.this, e02);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public final class e extends g1 {
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final pt.i<?> f61300e;

        public e(@NotNull pt.i<?> iVar) {
            this.f61300e = iVar;
        }

        @Override // gt.g1
        public boolean u() {
            return false;
        }

        @Override // gt.g1
        public void v(@Nullable Throwable th2) {
            this.f61300e.f(JobSupport.this, Unit.f60915a);
        }
    }

    public JobSupport(boolean z10) {
        this._state$volatile = z10 ? u.f61915g : u.f61914f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.n] */
    private final void B0(m mVar) {
        k1 k1Var = new k1();
        if (!mVar.isActive()) {
            k1Var = new n(k1Var);
        }
        androidx.concurrent.futures.a.a(f61282a, this, mVar, k1Var);
    }

    private final void C0(g1 g1Var) {
        g1Var.e(new k1());
        androidx.concurrent.futures.a.a(f61282a, this, g1Var, g1Var.k());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D0(pt.i<?> iVar, Object obj) {
        if (!m0()) {
            iVar.e(Unit.f60915a);
        } else {
            iVar.b(t.o(this, false, new e(iVar), 1, null));
        }
    }

    private final void E(Throwable th2, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        for (Throwable th3 : list) {
            if (th3 != th2 && th3 != th2 && !(th3 instanceof CancellationException) && newSetFromMap.add(th3)) {
                ms.d.a(th2, th3);
            }
        }
    }

    private final int G0(Object obj) {
        m mVar;
        if (obj instanceof m) {
            if (!((m) obj).isActive()) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61282a;
                mVar = u.f61915g;
                if (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, mVar)) {
                    return -1;
                }
                A0();
                return 1;
            }
            return 0;
        } else if (!(obj instanceof n)) {
            return 0;
        } else {
            if (!androidx.concurrent.futures.a.a(f61282a, this, obj, ((n) obj).b())) {
                return -1;
            }
            A0();
            return 1;
        }
    }

    private final String H0(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (cVar.i()) {
                return "Cancelling";
            }
            if (!cVar.j()) {
                return "Active";
            }
            return "Completing";
        } else if (obj instanceof f1) {
            if (((f1) obj).isActive()) {
                return "Active";
            }
            return "New";
        } else if (obj instanceof gt.t) {
            return "Cancelled";
        } else {
            return "Completed";
        }
    }

    private final Object J(rs.c<Object> cVar) {
        a aVar = new a(kotlin.coroutines.intrinsics.a.c(cVar), this);
        aVar.H();
        gt.l.a(aVar, t.o(this, false, new w(aVar), 1, null));
        Object B = aVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    public static /* synthetic */ CancellationException J0(JobSupport jobSupport, Throwable th2, String str, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                str = null;
            }
            return jobSupport.I0(th2, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
    }

    private final boolean L0(f1 f1Var, Object obj) {
        if (!androidx.concurrent.futures.a.a(f61282a, this, f1Var, u.g(obj))) {
            return false;
        }
        y0(null);
        z0(obj);
        S(f1Var, obj);
        return true;
    }

    private final boolean M0(f1 f1Var, Throwable th2) {
        k1 c02 = c0(f1Var);
        if (c02 == null) {
            return false;
        }
        if (!androidx.concurrent.futures.a.a(f61282a, this, f1Var, new c(c02, false, th2))) {
            return false;
        }
        u0(c02, th2);
        return true;
    }

    private final Object N0(Object obj, Object obj2) {
        a0 a0Var;
        a0 a0Var2;
        if (!(obj instanceof f1)) {
            a0Var2 = u.f61909a;
            return a0Var2;
        } else if (((obj instanceof m) || (obj instanceof g1)) && !(obj instanceof g) && !(obj2 instanceof gt.t)) {
            if (!L0((f1) obj, obj2)) {
                a0Var = u.f61911c;
                return a0Var;
            }
            return obj2;
        } else {
            return O0((f1) obj, obj2);
        }
    }

    private final Object O(Object obj) {
        a0 a0Var;
        Object N0;
        a0 a0Var2;
        do {
            Object e02 = e0();
            if (!(e02 instanceof f1) || ((e02 instanceof c) && ((c) e02).j())) {
                a0Var = u.f61909a;
                return a0Var;
            }
            N0 = N0(e02, new gt.t(U(obj), false, 2, null));
            a0Var2 = u.f61911c;
        } while (N0 == a0Var2);
        return N0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Throwable, T] */
    /* JADX WARN: Type inference failed for: r2v2 */
    private final Object O0(f1 f1Var, Object obj) {
        c cVar;
        gt.t tVar;
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        k1 c02 = c0(f1Var);
        if (c02 == null) {
            a0Var3 = u.f61911c;
            return a0Var3;
        }
        ?? r22 = 0;
        if (f1Var instanceof c) {
            cVar = (c) f1Var;
        } else {
            cVar = null;
        }
        if (cVar == null) {
            cVar = new c(c02, false, null);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (cVar) {
            if (cVar.j()) {
                a0Var2 = u.f61909a;
                return a0Var2;
            }
            cVar.m(true);
            if (cVar != f1Var && !androidx.concurrent.futures.a.a(f61282a, this, f1Var, cVar)) {
                a0Var = u.f61911c;
                return a0Var;
            }
            boolean i10 = cVar.i();
            if (obj instanceof gt.t) {
                tVar = (gt.t) obj;
            } else {
                tVar = null;
            }
            if (tVar != null) {
                cVar.a(tVar.f52556a);
            }
            Throwable e10 = cVar.e();
            if (!i10) {
                r22 = e10;
            }
            objectRef.element = r22;
            Unit unit = Unit.f60915a;
            if (r22 != 0) {
                u0(c02, r22);
            }
            g t02 = t0(c02);
            if (t02 != null && P0(cVar, t02, obj)) {
                return u.f61910b;
            }
            c02.f(2);
            g t03 = t0(c02);
            if (t03 != null && P0(cVar, t03, obj)) {
                return u.f61910b;
            }
            return V(cVar, obj);
        }
    }

    private final boolean P(Throwable th2) {
        if (l0()) {
            return true;
        }
        boolean z10 = th2 instanceof CancellationException;
        gt.n d02 = d0();
        if (d02 != null && d02 != l1.f52546a) {
            if (d02.a(th2) || z10) {
                return true;
            }
            return false;
        }
        return z10;
    }

    private final boolean P0(c cVar, g gVar, Object obj) {
        while (t.n(gVar.f61811e, false, new b(this, cVar, gVar, obj)) == l1.f52546a) {
            gVar = t0(gVar);
            if (gVar == null) {
                return false;
            }
        }
        return true;
    }

    private final void S(f1 f1Var, Object obj) {
        gt.t tVar;
        gt.n d02 = d0();
        if (d02 != null) {
            d02.dispose();
            F0(l1.f52546a);
        }
        Throwable th2 = null;
        if (obj instanceof gt.t) {
            tVar = (gt.t) obj;
        } else {
            tVar = null;
        }
        if (tVar != null) {
            th2 = tVar.f52556a;
        }
        if (f1Var instanceof g1) {
            try {
                ((g1) f1Var).v(th2);
                return;
            } catch (Throwable th3) {
                i0(new CompletionHandlerException("Exception in completion handler " + f1Var + " for " + this, th3));
                return;
            }
        }
        k1 b10 = f1Var.b();
        if (b10 != null) {
            v0(b10, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(c cVar, g gVar, Object obj) {
        g t02 = t0(gVar);
        if (t02 != null && P0(cVar, t02, obj)) {
            return;
        }
        cVar.b().f(2);
        g t03 = t0(gVar);
        if (t03 != null && P0(cVar, t03, obj)) {
            return;
        }
        G(V(cVar, obj));
    }

    private final Throwable U(Object obj) {
        boolean z10;
        if (obj == null) {
            z10 = true;
        } else {
            z10 = obj instanceof Throwable;
        }
        if (z10) {
            Throwable th2 = (Throwable) obj;
            if (th2 == null) {
                return new JobCancellationException(Q(), null, this);
            }
            return th2;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((n1) obj).F();
    }

    private final Object V(c cVar, Object obj) {
        gt.t tVar;
        Throwable th2;
        boolean i10;
        Throwable Y;
        if (obj instanceof gt.t) {
            tVar = (gt.t) obj;
        } else {
            tVar = null;
        }
        if (tVar != null) {
            th2 = tVar.f52556a;
        } else {
            th2 = null;
        }
        synchronized (cVar) {
            i10 = cVar.i();
            List<Throwable> l10 = cVar.l(th2);
            Y = Y(cVar, l10);
            if (Y != null) {
                E(Y, l10);
            }
        }
        if (Y != null && Y != th2) {
            obj = new gt.t(Y, false, 2, null);
        }
        if (Y != null && (P(Y) || h0(Y))) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            ((gt.t) obj).c();
        }
        if (!i10) {
            y0(Y);
        }
        z0(obj);
        androidx.concurrent.futures.a.a(f61282a, this, cVar, u.g(obj));
        S(cVar, obj);
        return obj;
    }

    private final Throwable X(Object obj) {
        gt.t tVar;
        if (obj instanceof gt.t) {
            tVar = (gt.t) obj;
        } else {
            tVar = null;
        }
        if (tVar == null) {
            return null;
        }
        return tVar.f52556a;
    }

    private final Throwable Y(c cVar, List<? extends Throwable> list) {
        Object obj;
        Object obj2 = null;
        if (list.isEmpty()) {
            if (!cVar.i()) {
                return null;
            }
            return new JobCancellationException(Q(), null, this);
        }
        List<? extends Throwable> list2 = list;
        Iterator<T> it = list2.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (!(((Throwable) obj) instanceof CancellationException)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        Throwable th2 = (Throwable) obj;
        if (th2 != null) {
            return th2;
        }
        Throwable th3 = list.get(0);
        if (th3 instanceof TimeoutCancellationException) {
            Iterator<T> it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                Throwable th4 = (Throwable) next;
                if (th4 != th3 && (th4 instanceof TimeoutCancellationException)) {
                    obj2 = next;
                    break;
                }
            }
            Throwable th5 = (Throwable) obj2;
            if (th5 != null) {
                return th5;
            }
        }
        return th3;
    }

    private final k1 c0(f1 f1Var) {
        k1 b10 = f1Var.b();
        if (b10 == null) {
            if (f1Var instanceof m) {
                return new k1();
            }
            if (f1Var instanceof g1) {
                C0((g1) f1Var);
                return null;
            }
            throw new IllegalStateException(("State should have list: " + f1Var).toString());
        }
        return b10;
    }

    private final boolean m0() {
        Object e02;
        do {
            e02 = e0();
            if (!(e02 instanceof f1)) {
                return false;
            }
        } while (G0(e02) < 0);
        return true;
    }

    private final Object n0(rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        gt.l.a(eVar, t.o(this, false, new x(eVar), 1, null));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    private final Object o0(Object obj) {
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        a0 a0Var4;
        a0 a0Var5;
        a0 a0Var6;
        Throwable th2 = null;
        Throwable th3 = null;
        while (true) {
            Object e02 = e0();
            if (e02 instanceof c) {
                synchronized (e02) {
                    if (((c) e02).k()) {
                        a0Var2 = u.f61912d;
                        return a0Var2;
                    }
                    boolean i10 = ((c) e02).i();
                    if (obj != null || !i10) {
                        if (th3 == null) {
                            th3 = U(obj);
                        }
                        ((c) e02).a(th3);
                    }
                    Throwable e10 = ((c) e02).e();
                    if (!i10) {
                        th2 = e10;
                    }
                    if (th2 != null) {
                        u0(((c) e02).b(), th2);
                    }
                    a0Var = u.f61909a;
                    return a0Var;
                }
            } else if (!(e02 instanceof f1)) {
                a0Var3 = u.f61912d;
                return a0Var3;
            } else {
                if (th3 == null) {
                    th3 = U(obj);
                }
                f1 f1Var = (f1) e02;
                if (f1Var.isActive()) {
                    if (M0(f1Var, th3)) {
                        a0Var4 = u.f61909a;
                        return a0Var4;
                    }
                } else {
                    Object N0 = N0(e02, new gt.t(th3, false, 2, null));
                    a0Var5 = u.f61909a;
                    if (N0 != a0Var5) {
                        a0Var6 = u.f61911c;
                        if (N0 != a0Var6) {
                            return N0;
                        }
                    } else {
                        throw new IllegalStateException(("Cannot happen in " + e02).toString());
                    }
                }
            }
        }
    }

    private final g t0(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.p()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.l();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.k();
            if (!lockFreeLinkedListNode.p()) {
                if (lockFreeLinkedListNode instanceof g) {
                    return (g) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof k1) {
                    return null;
                }
            }
        }
    }

    private final void u0(k1 k1Var, Throwable th2) {
        y0(th2);
        k1Var.f(4);
        Object j10 = k1Var.j();
        Intrinsics.checkNotNull(j10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) j10; !Intrinsics.areEqual(lockFreeLinkedListNode, k1Var); lockFreeLinkedListNode = lockFreeLinkedListNode.k()) {
            if ((lockFreeLinkedListNode instanceof g1) && ((g1) lockFreeLinkedListNode).u()) {
                try {
                    ((g1) lockFreeLinkedListNode).v(th2);
                } catch (Throwable th3) {
                    if (completionHandlerException != null) {
                        ms.d.a(completionHandlerException, th3);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNode + " for " + this, th3);
                        Unit unit = Unit.f60915a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            i0(completionHandlerException);
        }
        P(th2);
    }

    private final void v0(k1 k1Var, Throwable th2) {
        k1Var.f(1);
        Object j10 = k1Var.j();
        Intrinsics.checkNotNull(j10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) j10; !Intrinsics.areEqual(lockFreeLinkedListNode, k1Var); lockFreeLinkedListNode = lockFreeLinkedListNode.k()) {
            if (lockFreeLinkedListNode instanceof g1) {
                try {
                    ((g1) lockFreeLinkedListNode).v(th2);
                } catch (Throwable th3) {
                    if (completionHandlerException != null) {
                        ms.d.a(completionHandlerException, th3);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNode + " for " + this, th3);
                        Unit unit = Unit.f60915a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            i0(completionHandlerException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object w0(Object obj, Object obj2) {
        if (!(obj2 instanceof gt.t)) {
            return obj2;
        }
        throw ((gt.t) obj2).f52556a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x0(pt.i<?> iVar, Object obj) {
        Object e02;
        do {
            e02 = e0();
            if (!(e02 instanceof f1)) {
                if (!(e02 instanceof gt.t)) {
                    e02 = u.h(e02);
                }
                iVar.e(e02);
                return;
            }
        } while (G0(e02) < 0);
        iVar.b(t.o(this, false, new d(iVar), 1, null));
    }

    public final void E0(@NotNull g1 g1Var) {
        Object e02;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        m mVar;
        do {
            e02 = e0();
            if (e02 instanceof g1) {
                if (e02 == g1Var) {
                    atomicReferenceFieldUpdater = f61282a;
                    mVar = u.f61915g;
                } else {
                    return;
                }
            } else if ((e02 instanceof f1) && ((f1) e02).b() != null) {
                g1Var.q();
                return;
            } else {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, e02, mVar));
    }

    @Override // gt.n1
    @NotNull
    public CancellationException F() {
        Throwable th2;
        Object e02 = e0();
        CancellationException cancellationException = null;
        if (e02 instanceof c) {
            th2 = ((c) e02).e();
        } else if (e02 instanceof gt.t) {
            th2 = ((gt.t) e02).f52556a;
        } else if (!(e02 instanceof f1)) {
            th2 = null;
        } else {
            throw new IllegalStateException(("Cannot be cancelling child in this state: " + e02).toString());
        }
        if (th2 instanceof CancellationException) {
            cancellationException = th2;
        }
        if (cancellationException == null) {
            return new JobCancellationException("Parent job is " + H0(e02), th2, this);
        }
        return cancellationException;
    }

    public final void F0(@Nullable gt.n nVar) {
        f61283b.set(this, nVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final Object H(@NotNull rs.c<Object> cVar) {
        Object e02;
        do {
            e02 = e0();
            if (!(e02 instanceof f1)) {
                if (!(e02 instanceof gt.t)) {
                    return u.h(e02);
                }
                throw ((gt.t) e02).f52556a;
            }
        } while (G0(e02) < 0);
        return J(cVar);
    }

    @NotNull
    protected final CancellationException I0(@NotNull Throwable th2, @Nullable String str) {
        CancellationException cancellationException;
        if (th2 instanceof CancellationException) {
            cancellationException = (CancellationException) th2;
        } else {
            cancellationException = null;
        }
        if (cancellationException == null) {
            if (str == null) {
                str = Q();
            }
            cancellationException = new JobCancellationException(str, th2, this);
        }
        return cancellationException;
    }

    public final boolean K(@Nullable Throwable th2) {
        return L(th2);
    }

    @NotNull
    public final String K0() {
        return s0() + '{' + H0(e0()) + '}';
    }

    public final boolean L(@Nullable Object obj) {
        Object obj2;
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        obj2 = u.f61909a;
        if (!b0() || (obj2 = O(obj)) != u.f61910b) {
            a0Var = u.f61909a;
            if (obj2 == a0Var) {
                obj2 = o0(obj);
            }
            a0Var2 = u.f61909a;
            if (obj2 != a0Var2 && obj2 != u.f61910b) {
                a0Var3 = u.f61912d;
                if (obj2 == a0Var3) {
                    return false;
                }
                G(obj2);
                return true;
            }
            return true;
        }
        return true;
    }

    public void M(@NotNull Throwable th2) {
        L(th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public String Q() {
        return "Job was cancelled";
    }

    public boolean R(@NotNull Throwable th2) {
        if (th2 instanceof CancellationException) {
            return true;
        }
        if (L(th2) && Z()) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object W() {
        Object e02 = e0();
        if (!(e02 instanceof f1)) {
            if (!(e02 instanceof gt.t)) {
                return u.h(e02);
            }
            throw ((gt.t) e02).f52556a;
        }
        throw new IllegalStateException("This job has not completed yet");
    }

    public boolean Z() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final pt.d<?> a0() {
        JobSupport$onAwaitInternal$1 jobSupport$onAwaitInternal$1 = JobSupport$onAwaitInternal$1.f61302a;
        Intrinsics.checkNotNull(jobSupport$onAwaitInternal$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        at.n nVar = (at.n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onAwaitInternal$1, 3);
        JobSupport$onAwaitInternal$2 jobSupport$onAwaitInternal$2 = JobSupport$onAwaitInternal$2.f61303a;
        Intrinsics.checkNotNull(jobSupport$onAwaitInternal$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new pt.e(this, nVar, (at.n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onAwaitInternal$2, 3), null, 8, null);
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public final gt.n attachChild(@NotNull gt.o oVar) {
        gt.t tVar;
        gt.t tVar2;
        g gVar = new g(oVar);
        gVar.w(this);
        while (true) {
            Object e02 = e0();
            if (e02 instanceof m) {
                m mVar = (m) e02;
                if (mVar.isActive()) {
                    if (androidx.concurrent.futures.a.a(f61282a, this, e02, gVar)) {
                        break;
                    }
                } else {
                    B0(mVar);
                }
            } else {
                Throwable th2 = null;
                if (e02 instanceof f1) {
                    k1 b10 = ((f1) e02).b();
                    if (b10 == null) {
                        Intrinsics.checkNotNull(e02, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                        C0((g1) e02);
                    } else if (!b10.c(gVar, 7)) {
                        boolean c10 = b10.c(gVar, 3);
                        Object e03 = e0();
                        if (e03 instanceof c) {
                            th2 = ((c) e03).e();
                        } else {
                            if (e03 instanceof gt.t) {
                                tVar2 = (gt.t) e03;
                            } else {
                                tVar2 = null;
                            }
                            if (tVar2 != null) {
                                th2 = tVar2.f52556a;
                            }
                        }
                        gVar.v(th2);
                        if (!c10) {
                            return l1.f52546a;
                        }
                    }
                } else {
                    Object e04 = e0();
                    if (e04 instanceof gt.t) {
                        tVar = (gt.t) e04;
                    } else {
                        tVar = null;
                    }
                    if (tVar != null) {
                        th2 = tVar.f52556a;
                    }
                    gVar.v(th2);
                    return l1.f52546a;
                }
            }
        }
        return gVar;
    }

    public boolean b0() {
        return false;
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    public /* synthetic */ void cancel() {
        cancel((CancellationException) null);
    }

    @Nullable
    public final gt.n d0() {
        return (gt.n) f61283b.get(this);
    }

    @Nullable
    public final Object e0() {
        return f61282a.get(this);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) r.a.c(this, r10, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        return (E) r.a.d(this, bVar);
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public final CancellationException getCancellationException() {
        Object e02 = e0();
        if (e02 instanceof c) {
            Throwable e10 = ((c) e02).e();
            if (e10 != null) {
                CancellationException I0 = I0(e10, h0.a(this) + " is cancelling");
                if (I0 != null) {
                    return I0;
                }
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        } else if (!(e02 instanceof f1)) {
            if (e02 instanceof gt.t) {
                return J0(this, ((gt.t) e02).f52556a, null, 1, null);
            }
            return new JobCancellationException(h0.a(this) + " has completed normally", null, this);
        } else {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public final Sequence<r> getChildren() {
        return kotlin.sequences.j.b(new JobSupport$children$1(this, null));
    }

    @Nullable
    public final Throwable getCompletionExceptionOrNull() {
        Object e02 = e0();
        if (!(e02 instanceof f1)) {
            return X(e02);
        }
        throw new IllegalStateException("This job has not completed yet");
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public final CoroutineContext.b<?> getKey() {
        return r.G8;
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public final pt.b getOnJoin() {
        JobSupport$onJoin$1 jobSupport$onJoin$1 = JobSupport$onJoin$1.f61304a;
        Intrinsics.checkNotNull(jobSupport$onJoin$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        return new pt.c(this, (at.n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onJoin$1, 3), null, 4, null);
    }

    @Override // kotlinx.coroutines.r
    @Nullable
    public r getParent() {
        gt.n d02 = d0();
        if (d02 != null) {
            return d02.getParent();
        }
        return null;
    }

    protected boolean h0(@NotNull Throwable th2) {
        return false;
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public final s0 invokeOnCompletion(@NotNull Function1<? super Throwable, Unit> function1) {
        return k0(true, new q(function1));
    }

    @Override // kotlinx.coroutines.r
    public boolean isActive() {
        Object e02 = e0();
        if ((e02 instanceof f1) && ((f1) e02).isActive()) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.r
    public final boolean isCancelled() {
        Object e02 = e0();
        if (!(e02 instanceof gt.t) && (!(e02 instanceof c) || !((c) e02).i())) {
            return false;
        }
        return true;
    }

    @Override // kotlinx.coroutines.r
    public final boolean isCompleted() {
        return !(e0() instanceof f1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j0(@Nullable r rVar) {
        if (rVar == null) {
            F0(l1.f52546a);
            return;
        }
        rVar.start();
        gt.n attachChild = rVar.attachChild(this);
        F0(attachChild);
        if (isCompleted()) {
            attachChild.dispose();
            F0(l1.f52546a);
        }
    }

    @Override // kotlinx.coroutines.r
    @Nullable
    public final Object join(@NotNull rs.c<? super Unit> cVar) {
        if (!m0()) {
            t.k(cVar.getContext());
            return Unit.f60915a;
        }
        Object n02 = n0(cVar);
        if (n02 == kotlin.coroutines.intrinsics.a.f()) {
            return n02;
        }
        return Unit.f60915a;
    }

    @NotNull
    public final s0 k0(boolean z10, @NotNull g1 g1Var) {
        boolean z11;
        Throwable th2;
        gt.t tVar;
        boolean c10;
        c cVar;
        Throwable th3;
        g1Var.w(this);
        while (true) {
            Object e02 = e0();
            z11 = true;
            th2 = null;
            if (e02 instanceof m) {
                m mVar = (m) e02;
                if (mVar.isActive()) {
                    if (androidx.concurrent.futures.a.a(f61282a, this, e02, g1Var)) {
                        break;
                    }
                } else {
                    B0(mVar);
                }
            } else if (e02 instanceof f1) {
                f1 f1Var = (f1) e02;
                k1 b10 = f1Var.b();
                if (b10 == null) {
                    Intrinsics.checkNotNull(e02, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    C0((g1) e02);
                } else {
                    if (g1Var.u()) {
                        if (f1Var instanceof c) {
                            cVar = (c) f1Var;
                        } else {
                            cVar = null;
                        }
                        if (cVar != null) {
                            th3 = cVar.e();
                        } else {
                            th3 = null;
                        }
                        if (th3 == null) {
                            c10 = b10.c(g1Var, 5);
                        } else {
                            if (z10) {
                                g1Var.v(th3);
                            }
                            return l1.f52546a;
                        }
                    } else {
                        c10 = b10.c(g1Var, 1);
                    }
                    if (c10) {
                        break;
                    }
                }
            } else {
                z11 = false;
                break;
            }
        }
        if (z11) {
            return g1Var;
        }
        if (z10) {
            Object e03 = e0();
            if (e03 instanceof gt.t) {
                tVar = (gt.t) e03;
            } else {
                tVar = null;
            }
            if (tVar != null) {
                th2 = tVar.f52556a;
            }
            g1Var.v(th2);
        }
        return l1.f52546a;
    }

    protected boolean l0() {
        return false;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        return r.a.f(this, bVar);
    }

    public final boolean p0(@Nullable Object obj) {
        Object N0;
        a0 a0Var;
        a0 a0Var2;
        do {
            N0 = N0(e0(), obj);
            a0Var = u.f61909a;
            if (N0 == a0Var) {
                return false;
            }
            if (N0 != u.f61910b) {
                a0Var2 = u.f61911c;
            } else {
                return true;
            }
        } while (N0 == a0Var2);
        G(N0);
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return r.a.g(this, coroutineContext);
    }

    @Override // gt.o
    public final void q(@NotNull n1 n1Var) {
        L(n1Var);
    }

    @Nullable
    public final Object q0(@Nullable Object obj) {
        Object N0;
        a0 a0Var;
        a0 a0Var2;
        do {
            N0 = N0(e0(), obj);
            a0Var = u.f61909a;
            if (N0 != a0Var) {
                a0Var2 = u.f61911c;
            } else {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, X(obj));
            }
        } while (N0 == a0Var2);
        return N0;
    }

    @NotNull
    public String s0() {
        return h0.a(this);
    }

    @Override // kotlinx.coroutines.r
    public final boolean start() {
        int G0;
        do {
            G0 = G0(e0());
            if (G0 == 0) {
                return false;
            }
        } while (G0 != 1);
        return true;
    }

    @NotNull
    public String toString() {
        return K0() + '@' + h0.b(this);
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    public /* synthetic */ boolean cancel(Throwable th2) {
        Throwable jobCancellationException;
        if (th2 == null || (jobCancellationException = J0(this, th2, null, 1, null)) == null) {
            jobCancellationException = new JobCancellationException(Q(), null, this);
        }
        M(jobCancellationException);
        return true;
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    @NotNull
    public r plus(@NotNull r rVar) {
        return r.a.h(this, rVar);
    }

    @Override // kotlinx.coroutines.r
    @NotNull
    public final s0 invokeOnCompletion(boolean z10, boolean z11, @NotNull Function1<? super Throwable, Unit> function1) {
        g1 qVar;
        if (z10) {
            qVar = new p(function1);
        } else {
            qVar = new q(function1);
        }
        return k0(z11, qVar);
    }

    @Override // kotlinx.coroutines.r
    public void cancel(@Nullable CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(Q(), null, this);
        }
        M(cancellationException);
    }

    protected void A0() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void G(@Nullable Object obj) {
    }

    public void i0(@NotNull Throwable th2) {
        throw th2;
    }

    protected void y0(@Nullable Throwable th2) {
    }

    protected void z0(@Nullable Object obj) {
    }
}
