package kotlinx.coroutines.sync;

import at.n;
import gt.i;
import gt.l;
import gt.y1;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import mt.x;
import mt.y;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Semaphore.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreAndMutexImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,396:1\n200#1,10:410\n200#1,10:420\n1#2:397\n444#3,12:398\n68#4,3:430\n42#4,8:433\n68#4,3:444\n42#4,8:447\n374#5:441\n374#5:442\n366#5:443\n377#5:455\n366#5:456\n374#5:457\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreAndMutexImpl\n*L\n192#1:410,10\n216#1:420,10\n182#1:398,12\n284#1:430,3\n284#1:433,8\n317#1:444,3\n317#1:447,8\n288#1:441\n294#1:442\n308#1:443\n323#1:455\n329#1:456\n332#1:457\n*E\n"})
/* loaded from: classes8.dex */
public class SemaphoreAndMutexImpl {

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61889c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "head$volatile");

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f61890d = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61891e = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "tail$volatile");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f61892f = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f61893g = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");
    private volatile /* synthetic */ int _availablePermits$volatile;

    /* renamed from: a  reason: collision with root package name */
    private final int f61894a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final n<Throwable, Unit, CoroutineContext, Unit> f61895b;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    public SemaphoreAndMutexImpl(int i10, int i11) {
        this.f61894a = i10;
        if (i10 > 0) {
            if (i11 >= 0 && i11 <= i10) {
                e eVar = new e(0L, null, 2);
                this.head$volatile = eVar;
                this.tail$volatile = eVar;
                this._availablePermits$volatile = i10 - i11;
                this.f61895b = new n() { // from class: qt.f
                    @Override // at.n
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        Unit p10;
                        p10 = SemaphoreAndMutexImpl.p(SemaphoreAndMutexImpl.this, (Throwable) obj, (Unit) obj2, (CoroutineContext) obj3);
                        return p10;
                    }
                };
                return;
            }
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i10).toString());
        }
        throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i10).toString());
    }

    private final Object f(rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e b10 = l.b(kotlin.coroutines.intrinsics.a.c(cVar));
        try {
            if (!g(b10)) {
                e(b10);
            }
            Object B = b10.B();
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                f.c(cVar);
            }
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                return B;
            }
            return Unit.f60915a;
        } catch (Throwable th2) {
            b10.P();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean g(y1 y1Var) {
        Object c10;
        e eVar = (e) f61891e.get(this);
        long andIncrement = f61892f.getAndIncrement(this);
        SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1.f61896a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61891e;
        long h10 = andIncrement / d.h();
        loop0: while (true) {
            c10 = mt.b.c(eVar, h10, semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1);
            if (!y.c(c10)) {
                x b10 = y.b(c10);
                while (true) {
                    x xVar = (x) atomicReferenceFieldUpdater.get(this);
                    if (xVar.f62709c >= b10.f62709c) {
                        break loop0;
                    } else if (!b10.u()) {
                        break;
                    } else if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, xVar, b10)) {
                        if (xVar.p()) {
                            xVar.n();
                        }
                    } else if (b10.p()) {
                        b10.n();
                    }
                }
            } else {
                break;
            }
        }
        e eVar2 = (e) y.b(c10);
        int h11 = (int) (andIncrement % d.h());
        if (js.c.a(eVar2.v(), h11, null, y1Var)) {
            y1Var.g(eVar2, h11);
            return true;
        }
        if (js.c.a(eVar2.v(), h11, d.g(), d.i())) {
            if (y1Var instanceof i) {
                Intrinsics.checkNotNull(y1Var, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                ((i) y1Var).y(Unit.f60915a, this.f61895b);
            } else if (y1Var instanceof pt.i) {
                ((pt.i) y1Var).e(Unit.f60915a);
            } else {
                throw new IllegalStateException(("unexpected: " + y1Var).toString());
            }
            return true;
        }
        return false;
    }

    private final void h() {
        int i10;
        do {
            i10 = f61893g.get(this);
            if (i10 <= this.f61894a) {
                return;
            }
        } while (!f61893g.compareAndSet(this, i10, this.f61894a));
    }

    private final int i() {
        int andDecrement;
        do {
            andDecrement = f61893g.getAndDecrement(this);
        } while (andDecrement > this.f61894a);
        return andDecrement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p(SemaphoreAndMutexImpl semaphoreAndMutexImpl, Throwable th2, Unit unit, CoroutineContext coroutineContext) {
        semaphoreAndMutexImpl.release();
        return Unit.f60915a;
    }

    private final boolean r(Object obj) {
        if (obj instanceof i) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            i iVar = (i) obj;
            Object r10 = iVar.r(Unit.f60915a, null, this.f61895b);
            if (r10 != null) {
                iVar.t(r10);
                return true;
            }
            return false;
        } else if (obj instanceof pt.i) {
            return ((pt.i) obj).f(this, Unit.f60915a);
        } else {
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
    }

    private final boolean s() {
        Object c10;
        e eVar = (e) f61889c.get(this);
        long andIncrement = f61890d.getAndIncrement(this);
        long h10 = andIncrement / d.h();
        SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1.f61897a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61889c;
        loop0: while (true) {
            c10 = mt.b.c(eVar, h10, semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1);
            if (y.c(c10)) {
                break;
            }
            x b10 = y.b(c10);
            while (true) {
                x xVar = (x) atomicReferenceFieldUpdater.get(this);
                if (xVar.f62709c >= b10.f62709c) {
                    break loop0;
                } else if (!b10.u()) {
                    break;
                } else if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, xVar, b10)) {
                    if (xVar.p()) {
                        xVar.n();
                    }
                } else if (b10.p()) {
                    b10.n();
                }
            }
        }
        e eVar2 = (e) y.b(c10);
        eVar2.c();
        if (eVar2.f62709c > h10) {
            return false;
        }
        int h11 = (int) (andIncrement % d.h());
        Object andSet = eVar2.v().getAndSet(h11, d.g());
        if (andSet == null) {
            int f10 = d.f();
            for (int i10 = 0; i10 < f10; i10++) {
                if (eVar2.v().get(h11) == d.i()) {
                    return true;
                }
            }
            return !js.c.a(eVar2.v(), h11, d.g(), d.d());
        } else if (andSet == d.e()) {
            return false;
        } else {
            return r(andSet);
        }
    }

    public final int a() {
        return Math.max(f61893g.get(this), 0);
    }

    @Nullable
    public final Object b(@NotNull rs.c<? super Unit> cVar) {
        if (i() > 0) {
            return Unit.f60915a;
        }
        Object f10 = f(cVar);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e(@NotNull i<? super Unit> iVar) {
        while (i() <= 0) {
            Intrinsics.checkNotNull(iVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (g((y1) iVar)) {
                return;
            }
        }
        iVar.y(Unit.f60915a, this.f61895b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void o(@NotNull pt.i<?> iVar, @Nullable Object obj) {
        while (i() <= 0) {
            Intrinsics.checkNotNull(iVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (g((y1) iVar)) {
                return;
            }
        }
        iVar.e(Unit.f60915a);
    }

    public final boolean q() {
        while (true) {
            int i10 = f61893g.get(this);
            if (i10 > this.f61894a) {
                h();
            } else if (i10 <= 0) {
                return false;
            } else {
                if (f61893g.compareAndSet(this, i10, i10 - 1)) {
                    return true;
                }
            }
        }
    }

    public final void release() {
        do {
            int andIncrement = f61893g.getAndIncrement(this);
            if (andIncrement < this.f61894a) {
                if (andIncrement >= 0) {
                    return;
                }
            } else {
                h();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.f61894a).toString());
            }
        } while (!s());
    }
}
