package ot;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WorkQueue.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueueKt\n*L\n1#1,251:1\n77#2:252\n77#2:253\n77#2:254\n77#2:257\n77#2:258\n1#3:255\n21#4:256\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n*L\n91#1:252\n158#1:253\n181#1:254\n201#1:257\n245#1:258\n201#1:256\n*E\n"})
/* loaded from: classes8.dex */
public final class k {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f64405b = AtomicReferenceFieldUpdater.newUpdater(k.class, Object.class, "lastScheduledTask$volatile");

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f64406c = AtomicIntegerFieldUpdater.newUpdater(k.class, "producerIndex$volatile");

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f64407d = AtomicIntegerFieldUpdater.newUpdater(k.class, "consumerIndex$volatile");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f64408e = AtomicIntegerFieldUpdater.newUpdater(k.class, "blockingTasksInBuffer$volatile");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReferenceArray<g> f64409a = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    private final g b(g gVar) {
        if (e() == 127) {
            return gVar;
        }
        if (gVar.f64396b) {
            f64408e.incrementAndGet(this);
        }
        int i10 = f64406c.get(this) & 127;
        while (this.f64409a.get(i10) != null) {
            Thread.yield();
        }
        this.f64409a.lazySet(i10, gVar);
        f64406c.incrementAndGet(this);
        return null;
    }

    private final void c(g gVar) {
        if (gVar != null && gVar.f64396b) {
            f64408e.decrementAndGet(this);
        }
    }

    private final int e() {
        return f64406c.get(this) - f64407d.get(this);
    }

    private final g m() {
        g andSet;
        while (true) {
            int i10 = f64407d.get(this);
            if (i10 - f64406c.get(this) == 0) {
                return null;
            }
            int i11 = i10 & 127;
            if (f64407d.compareAndSet(this, i10, i10 + 1) && (andSet = this.f64409a.getAndSet(i11, null)) != null) {
                c(andSet);
                return andSet;
            }
        }
    }

    private final boolean n(c cVar) {
        g m10 = m();
        if (m10 == null) {
            return false;
        }
        cVar.a(m10);
        return true;
    }

    private final g o(boolean z10) {
        g gVar;
        do {
            gVar = (g) f64405b.get(this);
            if (gVar == null || gVar.f64396b != z10) {
                int i10 = f64407d.get(this);
                int i11 = f64406c.get(this);
                while (i10 != i11) {
                    if (z10 && f64408e.get(this) == 0) {
                        return null;
                    }
                    i11--;
                    g q10 = q(i11, z10);
                    if (q10 != null) {
                        return q10;
                    }
                }
                return null;
            }
        } while (!androidx.concurrent.futures.a.a(f64405b, this, gVar, null));
        return gVar;
    }

    private final g p(int i10) {
        int i11 = f64407d.get(this);
        int i12 = f64406c.get(this);
        boolean z10 = true;
        if (i10 != 1) {
            z10 = false;
        }
        while (i11 != i12) {
            if (z10 && f64408e.get(this) == 0) {
                return null;
            }
            int i13 = i11 + 1;
            g q10 = q(i11, z10);
            if (q10 == null) {
                i11 = i13;
            } else {
                return q10;
            }
        }
        return null;
    }

    private final g q(int i10, boolean z10) {
        int i11 = i10 & 127;
        g gVar = this.f64409a.get(i11);
        if (gVar == null || gVar.f64396b != z10 || !js.c.a(this.f64409a, i11, gVar, null)) {
            return null;
        }
        if (z10) {
            f64408e.decrementAndGet(this);
        }
        return gVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, ot.g, java.lang.Object] */
    private final long s(int i10, Ref.ObjectRef<g> objectRef) {
        ?? r02;
        int i11;
        do {
            r02 = (g) f64405b.get(this);
            if (r02 == 0) {
                return -2L;
            }
            if (r02.f64396b) {
                i11 = 1;
            } else {
                i11 = 2;
            }
            if ((i11 & i10) == 0) {
                return -2L;
            }
            long a10 = i.f64403f.a() - r02.f64395a;
            long j10 = i.f64399b;
            if (a10 < j10) {
                return j10 - a10;
            }
        } while (!androidx.concurrent.futures.a.a(f64405b, this, r02, null));
        objectRef.element = r02;
        return -1L;
    }

    @Nullable
    public final g a(@NotNull g gVar, boolean z10) {
        if (z10) {
            return b(gVar);
        }
        g gVar2 = (g) f64405b.getAndSet(this, gVar);
        if (gVar2 == null) {
            return null;
        }
        return b(gVar2);
    }

    public final int i() {
        if (f64405b.get(this) != null) {
            return e() + 1;
        }
        return e();
    }

    public final void j(@NotNull c cVar) {
        g gVar = (g) f64405b.getAndSet(this, null);
        if (gVar != null) {
            cVar.a(gVar);
        }
        do {
        } while (n(cVar));
    }

    @Nullable
    public final g k() {
        g gVar = (g) f64405b.getAndSet(this, null);
        if (gVar == null) {
            return m();
        }
        return gVar;
    }

    @Nullable
    public final g l() {
        return o(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long r(int i10, @NotNull Ref.ObjectRef<g> objectRef) {
        T t10;
        if (i10 == 3) {
            t10 = m();
        } else {
            t10 = p(i10);
        }
        if (t10 != 0) {
            objectRef.element = t10;
            return -1L;
        }
        return s(i10, objectRef);
    }
}
