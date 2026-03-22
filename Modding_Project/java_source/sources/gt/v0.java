package gt;

import gt.m0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventLoop.common.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n+ 2 EventLoop.kt\nkotlinx/coroutines/EventLoopKt\n+ 3 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,547:1\n53#2:548\n51#3:549\n52#3,7:552\n29#4:550\n16#5:551\n1#6:559\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n*L\n263#1:548\n336#1:549\n336#1:552,7\n336#1:550\n336#1:551\n*E\n"})
/* loaded from: classes8.dex */
public abstract class v0 extends w0 implements m0 {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f52563d = AtomicReferenceFieldUpdater.newUpdater(v0.class, Object.class, "_queue$volatile");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f52564e = AtomicReferenceFieldUpdater.newUpdater(v0.class, Object.class, "_delayed$volatile");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f52565f = AtomicIntegerFieldUpdater.newUpdater(v0.class, "_isCompleted$volatile");
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile;
    private volatile /* synthetic */ Object _queue$volatile;

    /* compiled from: EventLoop.common.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,547:1\n1#2:548\n*E\n"})
    /* loaded from: classes8.dex */
    private final class a extends c {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final i<Unit> f52566c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(long j10, @NotNull i<? super Unit> iVar) {
            super(j10);
            this.f52566c = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f52566c.f(v0.this, Unit.f60915a);
        }

        @Override // gt.v0.c
        @NotNull
        public String toString() {
            return super.toString() + this.f52566c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EventLoop.common.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends c {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final Runnable f52568c;

        public b(long j10, @NotNull Runnable runnable) {
            super(j10);
            this.f52568c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f52568c.run();
        }

        @Override // gt.v0.c
        @NotNull
        public String toString() {
            return super.toString() + this.f52568c;
        }
    }

    /* compiled from: EventLoop.common.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n1#1,547:1\n29#2:548\n29#2:551\n29#2:560\n16#3:549\n16#3:552\n16#3:561\n63#4:550\n64#4,7:553\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n*L\n441#1:548\n443#1:551\n483#1:560\n441#1:549\n443#1:552\n483#1:561\n443#1:550\n443#1:553,7\n*E\n"})
    /* loaded from: classes8.dex */
    public static abstract class c implements Runnable, Comparable<c>, s0, mt.m0 {
        @Nullable
        private volatile Object _heap;

        /* renamed from: a  reason: collision with root package name */
        public long f52569a;

        /* renamed from: b  reason: collision with root package name */
        private int f52570b = -1;

        public c(long j10) {
            this.f52569a = j10;
        }

        @Override // mt.m0
        @Nullable
        public mt.l0<?> c() {
            Object obj = this._heap;
            if (obj instanceof mt.l0) {
                return (mt.l0) obj;
            }
            return null;
        }

        @Override // gt.s0
        public final void dispose() {
            mt.a0 a0Var;
            d dVar;
            mt.a0 a0Var2;
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    a0Var = y0.f52577a;
                    if (obj == a0Var) {
                        return;
                    }
                    if (obj instanceof d) {
                        dVar = (d) obj;
                    } else {
                        dVar = null;
                    }
                    if (dVar != null) {
                        dVar.h(this);
                    }
                    a0Var2 = y0.f52577a;
                    this._heap = a0Var2;
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // mt.m0
        public void e(@Nullable mt.l0<?> l0Var) {
            mt.a0 a0Var;
            Object obj = this._heap;
            a0Var = y0.f52577a;
            if (obj != a0Var) {
                this._heap = l0Var;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        @Override // java.lang.Comparable
        /* renamed from: f */
        public int compareTo(@NotNull c cVar) {
            int i10 = ((this.f52569a - cVar.f52569a) > 0L ? 1 : ((this.f52569a - cVar.f52569a) == 0L ? 0 : -1));
            if (i10 > 0) {
                return 1;
            }
            if (i10 < 0) {
                return -1;
            }
            return 0;
        }

        public final int g(long j10, @NotNull d dVar, @NotNull v0 v0Var) {
            mt.a0 a0Var;
            synchronized (this) {
                Object obj = this._heap;
                a0Var = y0.f52577a;
                if (obj == a0Var) {
                    return 2;
                }
                synchronized (dVar) {
                    c b10 = dVar.b();
                    if (v0Var.isCompleted()) {
                        return 1;
                    }
                    if (b10 == null) {
                        dVar.f52571c = j10;
                    } else {
                        long j11 = b10.f52569a;
                        if (j11 - j10 < 0) {
                            j10 = j11;
                        }
                        if (j10 - dVar.f52571c > 0) {
                            dVar.f52571c = j10;
                        }
                    }
                    long j12 = this.f52569a;
                    long j13 = dVar.f52571c;
                    if (j12 - j13 < 0) {
                        this.f52569a = j13;
                    }
                    dVar.a(this);
                    return 0;
                }
            }
        }

        @Override // mt.m0
        public int getIndex() {
            return this.f52570b;
        }

        public final boolean h(long j10) {
            if (j10 - this.f52569a >= 0) {
                return true;
            }
            return false;
        }

        @Override // mt.m0
        public void setIndex(int i10) {
            this.f52570b = i10;
        }

        @NotNull
        public String toString() {
            return "Delayed[nanos=" + this.f52569a + ']';
        }
    }

    /* compiled from: EventLoop.common.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class d extends mt.l0<c> {

        /* renamed from: c  reason: collision with root package name */
        public long f52571c;

        public d(long j10) {
            this.f52571c = j10;
        }
    }

    private final void c0() {
        mt.a0 a0Var;
        mt.a0 a0Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f52563d;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f52563d;
                a0Var = y0.f52578b;
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater2, this, null, a0Var)) {
                    return;
                }
            } else if (!(obj instanceof mt.o)) {
                a0Var2 = y0.f52578b;
                if (obj == a0Var2) {
                    return;
                }
                mt.o oVar = new mt.o(8, true);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable");
                oVar.a((Runnable) obj);
                if (androidx.concurrent.futures.a.a(f52563d, this, obj, oVar)) {
                    return;
                }
            } else {
                ((mt.o) obj).d();
                return;
            }
        }
    }

    private final Runnable d0() {
        mt.a0 a0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f52563d;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (!(obj instanceof mt.o)) {
                a0Var = y0.f52578b;
                if (obj == a0Var) {
                    return null;
                }
                if (androidx.concurrent.futures.a.a(f52563d, this, obj, null)) {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable");
                    return (Runnable) obj;
                }
            } else {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>");
                mt.o oVar = (mt.o) obj;
                Object m10 = oVar.m();
                if (m10 != mt.o.f62696h) {
                    return (Runnable) m10;
                }
                androidx.concurrent.futures.a.a(f52563d, this, obj, oVar.l());
            }
        }
    }

    private final void f0() {
        c cVar;
        boolean z10;
        d dVar = (d) f52564e.get(this);
        if (dVar != null && !dVar.e()) {
            gt.b.a();
            long nanoTime = System.nanoTime();
            do {
                synchronized (dVar) {
                    try {
                        c b10 = dVar.b();
                        cVar = null;
                        if (b10 != null) {
                            c cVar2 = b10;
                            if (cVar2.h(nanoTime)) {
                                z10 = g0(cVar2);
                            } else {
                                z10 = false;
                            }
                            if (z10) {
                                cVar = dVar.i(0);
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } while (cVar != null);
        }
    }

    private final boolean g0(Runnable runnable) {
        mt.a0 a0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f52563d;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (isCompleted()) {
                return false;
            }
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(f52563d, this, null, runnable)) {
                    return true;
                }
            } else if (!(obj instanceof mt.o)) {
                a0Var = y0.f52578b;
                if (obj == a0Var) {
                    return false;
                }
                mt.o oVar = new mt.o(8, true);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable");
                oVar.a((Runnable) obj);
                oVar.a(runnable);
                if (androidx.concurrent.futures.a.a(f52563d, this, obj, oVar)) {
                    return true;
                }
            } else {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>");
                mt.o oVar2 = (mt.o) obj;
                int a10 = oVar2.a(runnable);
                if (a10 == 0) {
                    return true;
                }
                if (a10 != 1) {
                    if (a10 == 2) {
                        return false;
                    }
                } else {
                    androidx.concurrent.futures.a.a(f52563d, this, obj, oVar2.l());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isCompleted() {
        if (f52565f.get(this) == 1) {
            return true;
        }
        return false;
    }

    private final void m0() {
        c j10;
        gt.b.a();
        long nanoTime = System.nanoTime();
        while (true) {
            d dVar = (d) f52564e.get(this);
            if (dVar != null && (j10 = dVar.j()) != null) {
                Z(nanoTime, j10);
            } else {
                return;
            }
        }
    }

    private final int s0(long j10, c cVar) {
        if (isCompleted()) {
            return 1;
        }
        d dVar = (d) f52564e.get(this);
        if (dVar == null) {
            androidx.concurrent.futures.a.a(f52564e, this, null, new d(j10));
            Object obj = f52564e.get(this);
            Intrinsics.checkNotNull(obj);
            dVar = (d) obj;
        }
        return cVar.g(j10, dVar, this);
    }

    private final void w0(boolean z10) {
        f52565f.set(this, z10 ? 1 : 0);
    }

    private final boolean y0(c cVar) {
        c cVar2;
        d dVar = (d) f52564e.get(this);
        if (dVar != null) {
            cVar2 = dVar.f();
        } else {
            cVar2 = null;
        }
        if (cVar2 == cVar) {
            return true;
        }
        return false;
    }

    @Override // gt.u0
    public long R() {
        if (T()) {
            return 0L;
        }
        f0();
        Runnable d02 = d0();
        if (d02 != null) {
            d02.run();
            return 0L;
        }
        return u();
    }

    @Override // gt.m0
    public void a(long j10, @NotNull i<? super Unit> iVar) {
        long c10 = y0.c(j10);
        if (c10 < 4611686018427387903L) {
            gt.b.a();
            long nanoTime = System.nanoTime();
            a aVar = new a(c10 + nanoTime, iVar);
            o0(nanoTime, aVar);
            l.a(iVar, aVar);
        }
    }

    @NotNull
    public s0 c(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return m0.a.a(this, j10, runnable, coroutineContext);
    }

    @Override // gt.c0
    public final void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        e0(runnable);
    }

    public void e0(@NotNull Runnable runnable) {
        f0();
        if (g0(runnable)) {
            a0();
        } else {
            i0.f52539g.e0(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean l0() {
        mt.a0 a0Var;
        if (!P()) {
            return false;
        }
        d dVar = (d) f52564e.get(this);
        if (dVar != null && !dVar.e()) {
            return false;
        }
        Object obj = f52563d.get(this);
        if (obj != null) {
            if (!(obj instanceof mt.o)) {
                a0Var = y0.f52578b;
                if (obj != a0Var) {
                    return false;
                }
            } else {
                return ((mt.o) obj).j();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void n0() {
        f52563d.set(this, null);
        f52564e.set(this, null);
    }

    public final void o0(long j10, @NotNull c cVar) {
        int s02 = s0(j10, cVar);
        if (s02 != 0) {
            if (s02 != 1) {
                if (s02 != 2) {
                    throw new IllegalStateException("unexpected result");
                }
                return;
            }
            Z(j10, cVar);
        } else if (y0(cVar)) {
            a0();
        }
    }

    @Override // gt.u0
    public void shutdown() {
        u1.f52561a.c();
        w0(true);
        c0();
        do {
        } while (R() <= 0);
        m0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final s0 t0(long j10, @NotNull Runnable runnable) {
        long c10 = y0.c(j10);
        if (c10 < 4611686018427387903L) {
            gt.b.a();
            long nanoTime = System.nanoTime();
            b bVar = new b(c10 + nanoTime, runnable);
            o0(nanoTime, bVar);
            return bVar;
        }
        return l1.f52546a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gt.u0
    public long u() {
        c f10;
        mt.a0 a0Var;
        if (super.u() == 0) {
            return 0L;
        }
        Object obj = f52563d.get(this);
        if (obj != null) {
            if (!(obj instanceof mt.o)) {
                a0Var = y0.f52578b;
                if (obj != a0Var) {
                    return 0L;
                }
                return Long.MAX_VALUE;
            } else if (!((mt.o) obj).j()) {
                return 0L;
            }
        }
        d dVar = (d) f52564e.get(this);
        if (dVar == null || (f10 = dVar.f()) == null) {
            return Long.MAX_VALUE;
        }
        long j10 = f10.f52569a;
        gt.b.a();
        return kotlin.ranges.e.f(j10 - System.nanoTime(), 0L);
    }
}
