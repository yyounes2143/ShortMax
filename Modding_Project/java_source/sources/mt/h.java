package mt;

import gt.u0;
import gt.u1;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DispatchedContinuation.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,313:1\n224#1,8:377\n236#1:385\n237#1,2:396\n239#1:400\n1#2:314\n1#2:320\n1#2:361\n293#3,5:315\n298#3,12:321\n310#3:355\n293#3,5:356\n298#3,12:362\n310#3:415\n184#4,3:333\n187#4,14:341\n184#4,3:374\n187#4,14:401\n91#5,5:336\n103#5,10:386\n114#5,2:398\n103#5,13:416\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n214#1:377,8\n215#1:385\n215#1:396,2\n215#1:400\n195#1:320\n213#1:361\n195#1:315,5\n195#1:321,12\n195#1:355\n213#1:356,5\n213#1:362,12\n213#1:415\n195#1:333,3\n195#1:341,14\n213#1:374,3\n213#1:401,14\n196#1:336,5\n215#1:386,10\n215#1:398,2\n236#1:416,13\n*E\n"})
/* loaded from: classes8.dex */
public final class h<T> extends kotlinx.coroutines.k<T> implements kotlin.coroutines.jvm.internal.c, rs.c<T> {

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f62662h = AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final gt.c0 f62663d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final rs.c<T> f62664e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Object f62665f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final Object f62666g;

    /* JADX WARN: Multi-variable type inference failed */
    public h(@NotNull gt.c0 c0Var, @NotNull rs.c<? super T> cVar) {
        super(-1);
        this.f62663d = c0Var;
        this.f62664e = cVar;
        this.f62665f = i.a();
        this.f62666g = h0.g(getContext());
    }

    private final kotlinx.coroutines.e<?> n() {
        Object obj = f62662h.get(this);
        if (obj instanceof kotlinx.coroutines.e) {
            return (kotlinx.coroutines.e) obj;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.c
    @Nullable
    public kotlin.coroutines.jvm.internal.c getCallerFrame() {
        rs.c<T> cVar = this.f62664e;
        if (cVar instanceof kotlin.coroutines.jvm.internal.c) {
            return (kotlin.coroutines.jvm.internal.c) cVar;
        }
        return null;
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        return this.f62664e.getContext();
    }

    @Override // kotlinx.coroutines.k
    @Nullable
    public Object j() {
        Object obj = this.f62665f;
        this.f62665f = i.a();
        return obj;
    }

    public final void k() {
        do {
        } while (f62662h.get(this) == i.f62672b);
    }

    @Nullable
    public final kotlinx.coroutines.e<T> l() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f62662h;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                f62662h.set(this, i.f62672b);
                return null;
            } else if (obj instanceof kotlinx.coroutines.e) {
                if (androidx.concurrent.futures.a.a(f62662h, this, obj, i.f62672b)) {
                    return (kotlinx.coroutines.e) obj;
                }
            } else if (obj != i.f62672b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final void m(@NotNull CoroutineContext coroutineContext, T t10) {
        this.f62665f = t10;
        this.f61825c = 1;
        this.f62663d.dispatchYield(coroutineContext, this);
    }

    public final boolean p() {
        if (f62662h.get(this) != null) {
            return true;
        }
        return false;
    }

    public final boolean q(@NotNull Throwable th2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f62662h;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            a0 a0Var = i.f62672b;
            if (Intrinsics.areEqual(obj, a0Var)) {
                if (androidx.concurrent.futures.a.a(f62662h, this, a0Var, th2)) {
                    return true;
                }
            } else if (obj instanceof Throwable) {
                return true;
            } else {
                if (androidx.concurrent.futures.a.a(f62662h, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    @Override // rs.c
    public void resumeWith(@NotNull Object obj) {
        Object b10 = gt.u.b(obj);
        if (i.d(this.f62663d, getContext())) {
            this.f62665f = b10;
            this.f61825c = 0;
            i.c(this.f62663d, getContext(), this);
            return;
        }
        u0 b11 = u1.f52561a.b();
        if (b11.x()) {
            this.f62665f = b10;
            this.f61825c = 0;
            b11.t(this);
            return;
        }
        b11.v(true);
        try {
            CoroutineContext context = getContext();
            Object i10 = h0.i(context, this.f62666g);
            this.f62664e.resumeWith(obj);
            Unit unit = Unit.f60915a;
            h0.f(context, i10);
            do {
            } while (b11.T());
        } catch (Throwable th2) {
            try {
                i(th2);
            } finally {
                b11.m(true);
            }
        }
    }

    @NotNull
    public String toString() {
        return "DispatchedContinuation[" + this.f62663d + ", " + gt.h0.c(this.f62664e) + ']';
    }

    public final void w() {
        k();
        kotlinx.coroutines.e<?> n10 = n();
        if (n10 != null) {
            n10.q();
        }
    }

    @Nullable
    public final Throwable x(@NotNull gt.i<?> iVar) {
        a0 a0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f62662h;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            a0Var = i.f62672b;
            if (obj != a0Var) {
                if (obj instanceof Throwable) {
                    if (androidx.concurrent.futures.a.a(f62662h, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f62662h, this, a0Var, iVar));
        return null;
    }

    @Override // kotlinx.coroutines.k
    @NotNull
    public rs.c<T> c() {
        return this;
    }
}
