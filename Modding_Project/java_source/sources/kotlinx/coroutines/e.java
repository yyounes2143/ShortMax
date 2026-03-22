package kotlinx.coroutines;

import gt.c0;
import gt.e0;
import gt.h0;
import gt.l1;
import gt.m1;
import gt.o0;
import gt.s0;
import gt.y1;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.d;
import mt.a0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancellableContinuationImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImplKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,701:1\n227#1,10:705\n227#1,10:716\n1#2:702\n20#3:703\n20#3:704\n18#3:715\n17#3:726\n18#3,3:727\n17#3:730\n18#3,3:731\n18#3:738\n17#3,4:739\n57#4,2:734\n57#4,2:736\n57#4,2:743\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n239#1:705,10\n244#1:716,10\n69#1:703\n155#1:704\n242#1:715\n271#1:726\n272#1:727,3\n281#1:730\n282#1:731,3\n387#1:738\n390#1:739,4\n323#1:734,2\n333#1:736,2\n614#1:743,2\n*E\n"})
/* loaded from: classes8.dex */
public class e<T> extends k<T> implements gt.i<T>, kotlin.coroutines.jvm.internal.c, y1 {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f61390f = AtomicIntegerFieldUpdater.newUpdater(e.class, "_decisionAndIndex$volatile");

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61391g = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_state$volatile");

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61392h = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final rs.c<T> f61393d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final CoroutineContext f61394e;

    /* JADX WARN: Multi-variable type inference failed */
    public e(@NotNull rs.c<? super T> cVar, int i10) {
        super(i10);
        this.f61393d = cVar;
        this.f61394e = cVar.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = b.f61312a;
    }

    private final s0 A() {
        return (s0) f61392h.get(this);
    }

    private final String D() {
        Object C = C();
        if (C instanceof m1) {
            return "Active";
        }
        if (C instanceof gt.m) {
            return "Cancelled";
        }
        return "Completed";
    }

    private final s0 I() {
        s0 o10;
        r rVar = (r) getContext().get(r.G8);
        if (rVar != null) {
            o10 = JobKt__JobKt.o(rVar, false, new f(this), 1, null);
            androidx.concurrent.futures.a.a(f61392h, this, null, o10);
            return o10;
        }
        return null;
    }

    private final void J(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61391g;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof b) {
                if (androidx.concurrent.futures.a.a(f61391g, this, obj2, obj)) {
                    return;
                }
            } else if (!(obj2 instanceof d) && !(obj2 instanceof mt.x)) {
                if (obj2 instanceof gt.t) {
                    gt.t tVar = (gt.t) obj2;
                    if (!tVar.c()) {
                        M(obj, obj2);
                    }
                    if (obj2 instanceof gt.m) {
                        Throwable th2 = null;
                        if (!(obj2 instanceof gt.t)) {
                            tVar = null;
                        }
                        if (tVar != null) {
                            th2 = tVar.f52556a;
                        }
                        if (obj instanceof d) {
                            m((d) obj, th2);
                            return;
                        }
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                        o((mt.x) obj, th2);
                        return;
                    }
                    return;
                } else if (obj2 instanceof h) {
                    h hVar = (h) obj2;
                    if (hVar.f61813b != null) {
                        M(obj, obj2);
                    }
                    if (obj instanceof mt.x) {
                        return;
                    }
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    d dVar = (d) obj;
                    if (hVar.c()) {
                        m(dVar, hVar.f61816e);
                        return;
                    }
                    if (androidx.concurrent.futures.a.a(f61391g, this, obj2, h.b(hVar, null, dVar, null, null, null, 29, null))) {
                        return;
                    }
                } else if (obj instanceof mt.x) {
                    return;
                } else {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    if (androidx.concurrent.futures.a.a(f61391g, this, obj2, new h(obj2, (d) obj, null, null, null, 28, null))) {
                        return;
                    }
                }
            } else {
                M(obj, obj2);
            }
        }
    }

    private final boolean L() {
        if (o0.c(this.f61825c)) {
            rs.c<T> cVar = this.f61393d;
            Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((mt.h) cVar).p()) {
                return true;
            }
        }
        return false;
    }

    private final void M(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(Function1 function1, Throwable th2, Object obj, CoroutineContext coroutineContext) {
        function1.invoke(th2);
        return Unit.f60915a;
    }

    public static /* synthetic */ void T(e eVar, Object obj, int i10, at.n nVar, int i11, Object obj2) {
        if (obj2 == null) {
            if ((i11 & 4) != 0) {
                nVar = null;
            }
            eVar.S(obj, i10, nVar);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
    }

    private final <R> Object U(m1 m1Var, R r10, int i10, at.n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar, Object obj) {
        d dVar;
        if (!(r10 instanceof gt.t)) {
            if (o0.b(i10) || obj != null) {
                if (nVar != null || (m1Var instanceof d) || obj != null) {
                    if (m1Var instanceof d) {
                        dVar = (d) m1Var;
                    } else {
                        dVar = null;
                    }
                    return new h(r10, dVar, nVar, obj, null, 16, null);
                }
                return r10;
            }
            return r10;
        }
        return r10;
    }

    private final boolean V() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f61390f;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f61390f.compareAndSet(this, i10, 1073741824 + (536870911 & i10)));
        return true;
    }

    private final <R> a0 W(R r10, Object obj, at.n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar) {
        Object obj2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61391g;
        do {
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof m1) {
            } else if (!(obj2 instanceof h) || obj == null || ((h) obj2).f61815d != obj) {
                return null;
            } else {
                return gt.k.f52545a;
            }
        } while (!androidx.concurrent.futures.a.a(f61391g, this, obj2, U((m1) obj2, r10, this.f61825c, nVar, obj)));
        w();
        return gt.k.f52545a;
    }

    private final boolean X() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f61390f;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f61390f.compareAndSet(this, i10, 536870912 + (536870911 & i10)));
        return true;
    }

    private final Void l(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    private final void o(mt.x<?> xVar, Throwable th2) {
        int i10 = f61390f.get(this) & 536870911;
        if (i10 != 536870911) {
            try {
                xVar.s(i10, th2, getContext());
                return;
            } catch (Throwable th3) {
                CoroutineContext context = getContext();
                e0.a(context, new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th3));
                return;
            }
        }
        throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
    }

    private final boolean p(Throwable th2) {
        if (!L()) {
            return false;
        }
        rs.c<T> cVar = this.f61393d;
        Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((mt.h) cVar).q(th2);
    }

    private final void w() {
        if (!L()) {
            q();
        }
    }

    private final void x(int i10) {
        if (V()) {
            return;
        }
        o0.a(this, i10);
    }

    @Nullable
    public final Object B() {
        r rVar;
        boolean L = L();
        if (X()) {
            if (A() == null) {
                I();
            }
            if (L) {
                P();
            }
            return kotlin.coroutines.intrinsics.a.f();
        }
        if (L) {
            P();
        }
        Object C = C();
        if (!(C instanceof gt.t)) {
            if (o0.b(this.f61825c) && (rVar = (r) getContext().get(r.G8)) != null && !rVar.isActive()) {
                CancellationException cancellationException = rVar.getCancellationException();
                a(C, cancellationException);
                throw cancellationException;
            }
            return h(C);
        }
        throw ((gt.t) C).f52556a;
    }

    @Nullable
    public final Object C() {
        return f61391g.get(this);
    }

    public void H() {
        s0 I = I();
        if (I != null && isCompleted()) {
            I.dispose();
            f61392h.set(this, l1.f52546a);
        }
    }

    public final void K(@NotNull d dVar) {
        J(dVar);
    }

    @NotNull
    protected String N() {
        return "CancellableContinuation";
    }

    public final void O(@NotNull Throwable th2) {
        if (p(th2)) {
            return;
        }
        cancel(th2);
        w();
    }

    public final void P() {
        mt.h hVar;
        Throwable x10;
        rs.c<T> cVar = this.f61393d;
        if (cVar instanceof mt.h) {
            hVar = (mt.h) cVar;
        } else {
            hVar = null;
        }
        if (hVar != null && (x10 = hVar.x(this)) != null) {
            q();
            cancel(x10);
        }
    }

    public final boolean Q() {
        Object obj = f61391g.get(this);
        if ((obj instanceof h) && ((h) obj).f61815d != null) {
            q();
            return false;
        }
        f61390f.set(this, 536870911);
        f61391g.set(this, b.f61312a);
        return true;
    }

    public final <R> void S(R r10, int i10, @Nullable at.n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61391g;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof m1) {
            } else {
                if (obj instanceof gt.m) {
                    gt.m mVar = (gt.m) obj;
                    if (mVar.e()) {
                        if (nVar != null) {
                            n(nVar, mVar.f52556a, r10);
                            return;
                        }
                        return;
                    }
                }
                l(r10);
                throw new KotlinNothingValueException();
            }
        } while (!androidx.concurrent.futures.a.a(f61391g, this, obj, U((m1) obj, r10, i10, nVar, null)));
        w();
        x(i10);
    }

    @Override // kotlinx.coroutines.k
    public void a(@Nullable Object obj, @NotNull Throwable th2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61391g;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof m1)) {
                if (obj2 instanceof gt.t) {
                    return;
                }
                if (obj2 instanceof h) {
                    h hVar = (h) obj2;
                    if (!hVar.c()) {
                        if (androidx.concurrent.futures.a.a(f61391g, this, obj2, h.b(hVar, null, null, null, null, th2, 15, null))) {
                            hVar.d(this, th2);
                            return;
                        }
                    } else {
                        throw new IllegalStateException("Must be called at most once");
                    }
                } else if (androidx.concurrent.futures.a.a(f61391g, this, obj2, new h(obj2, null, null, null, th2, 14, null))) {
                    return;
                }
            } else {
                throw new IllegalStateException("Not completed");
            }
        }
    }

    @Override // kotlinx.coroutines.k
    @NotNull
    public final rs.c<T> c() {
        return this.f61393d;
    }

    @Override // gt.i
    public boolean cancel(@Nullable Throwable th2) {
        Object obj;
        boolean z10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61391g;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            z10 = false;
            if (!(obj instanceof m1)) {
                return false;
            }
            if ((obj instanceof d) || (obj instanceof mt.x)) {
                z10 = true;
            }
        } while (!androidx.concurrent.futures.a.a(f61391g, this, obj, new gt.m(this, th2, z10)));
        m1 m1Var = (m1) obj;
        if (m1Var instanceof d) {
            m((d) obj, th2);
        } else if (m1Var instanceof mt.x) {
            o((mt.x) obj, th2);
        }
        w();
        x(this.f61825c);
        return true;
    }

    @Override // kotlinx.coroutines.k
    @Nullable
    public Throwable d(@Nullable Object obj) {
        Throwable d10 = super.d(obj);
        if (d10 == null) {
            return null;
        }
        return d10;
    }

    @Override // gt.i
    public void e(T t10, @Nullable final Function1<? super Throwable, Unit> function1) {
        at.n nVar;
        int i10 = this.f61825c;
        if (function1 != null) {
            nVar = new at.n() { // from class: gt.j
                @Override // at.n
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit R;
                    R = kotlinx.coroutines.e.R(Function1.this, (Throwable) obj, obj2, (CoroutineContext) obj3);
                    return R;
                }
            };
        } else {
            nVar = null;
        }
        S(t10, i10, nVar);
    }

    @Override // gt.i
    public void f(@NotNull c0 c0Var, T t10) {
        mt.h hVar;
        int i10;
        rs.c<T> cVar = this.f61393d;
        c0 c0Var2 = null;
        if (cVar instanceof mt.h) {
            hVar = (mt.h) cVar;
        } else {
            hVar = null;
        }
        if (hVar != null) {
            c0Var2 = hVar.f62663d;
        }
        if (c0Var2 == c0Var) {
            i10 = 4;
        } else {
            i10 = this.f61825c;
        }
        T(this, t10, i10, null, 4, null);
    }

    @Override // gt.y1
    public void g(@NotNull mt.x<?> xVar, int i10) {
        int i11;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f61390f;
        do {
            i11 = atomicIntegerFieldUpdater.get(this);
            if ((i11 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i11, ((i11 >> 29) << 29) + i10));
        J(xVar);
    }

    @Override // kotlin.coroutines.jvm.internal.c
    @Nullable
    public kotlin.coroutines.jvm.internal.c getCallerFrame() {
        rs.c<T> cVar = this.f61393d;
        if (cVar instanceof kotlin.coroutines.jvm.internal.c) {
            return (kotlin.coroutines.jvm.internal.c) cVar;
        }
        return null;
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        return this.f61394e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.k
    public <T> T h(@Nullable Object obj) {
        if (obj instanceof h) {
            return (T) ((h) obj).f61812a;
        }
        return obj;
    }

    @Override // gt.i
    public boolean isActive() {
        return C() instanceof m1;
    }

    @Override // gt.i
    public boolean isCompleted() {
        return !(C() instanceof m1);
    }

    @Override // kotlinx.coroutines.k
    @Nullable
    public Object j() {
        return C();
    }

    public final void m(@NotNull d dVar, @Nullable Throwable th2) {
        try {
            dVar.a(th2);
        } catch (Throwable th3) {
            CoroutineContext context = getContext();
            e0.a(context, new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th3));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> void n(@NotNull at.n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar, @NotNull Throwable th2, R r10) {
        try {
            nVar.invoke(th2, r10, getContext());
        } catch (Throwable th3) {
            CoroutineContext context = getContext();
            e0.a(context, new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th3));
        }
    }

    public final void q() {
        s0 A = A();
        if (A == null) {
            return;
        }
        A.dispose();
        f61392h.set(this, l1.f52546a);
    }

    @Override // gt.i
    @Nullable
    public <R extends T> Object r(R r10, @Nullable Object obj, @Nullable at.n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar) {
        return W(r10, obj, nVar);
    }

    @Override // rs.c
    public void resumeWith(@NotNull Object obj) {
        T(this, gt.u.c(obj, this), this.f61825c, null, 4, null);
    }

    @Override // gt.i
    public void t(@NotNull Object obj) {
        x(this.f61825c);
    }

    @NotNull
    public String toString() {
        return N() + '(' + h0.c(this.f61393d) + "){" + D() + "}@" + h0.b(this);
    }

    @Override // gt.i
    public void u(@NotNull Function1<? super Throwable, Unit> function1) {
        gt.l.c(this, new d.a(function1));
    }

    @Override // gt.i
    @Nullable
    public Object v(@NotNull Throwable th2) {
        return W(new gt.t(th2, false, 2, null), null, null);
    }

    @Override // gt.i
    public <R extends T> void y(R r10, @Nullable at.n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar) {
        S(r10, this.f61825c, nVar);
    }

    @NotNull
    public Throwable z(@NotNull r rVar) {
        return rVar.getCancellationException();
    }
}
