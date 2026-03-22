package kotlinx.coroutines.scheduling;

import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSource;
import gt.h0;
import java.io.Closeable;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.e;
import mt.a0;
import mt.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ot.g;
import ot.i;
import ot.k;
/* compiled from: CoroutineScheduler.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,1041:1\n286#1:1044\n284#1:1045\n284#1:1046\n286#1:1047\n281#1:1050\n282#1,5:1051\n292#1:1057\n284#1:1058\n285#1:1059\n284#1:1062\n285#1:1063\n281#1:1064\n289#1:1065\n284#1:1066\n284#1:1069\n285#1:1070\n286#1:1071\n77#2:1042\n77#2:1056\n77#2:1067\n1#3:1043\n29#4:1048\n29#4:1060\n16#5:1049\n16#5:1061\n619#6:1068\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n282#1:1044\n289#1:1045\n290#1:1046\n299#1:1047\n348#1:1050\n377#1:1051,5\n400#1:1057\n444#1:1058\n445#1:1059\n481#1:1062\n482#1:1063\n488#1:1064\n497#1:1065\n497#1:1066\n578#1:1069\n579#1:1070\n580#1:1071\n120#1:1042\n397#1:1056\n514#1:1067\n348#1:1048\n477#1:1060\n348#1:1049\n477#1:1061\n521#1:1068\n*E\n"})
/* loaded from: classes8.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f61835h = new a(null);

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f61836i = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");

    /* renamed from: j  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f61837j = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");

    /* renamed from: k  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f61838k = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a0 f61839l = new a0("NOT_IN_STACK");
    private volatile /* synthetic */ int _isTerminated$volatile;

    /* renamed from: a  reason: collision with root package name */
    public final int f61840a;

    /* renamed from: b  reason: collision with root package name */
    public final int f61841b;

    /* renamed from: c  reason: collision with root package name */
    public final long f61842c;
    private volatile /* synthetic */ long controlState$volatile;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f61843d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final ot.c f61844e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final ot.c f61845f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final v<c> f61846g;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: CoroutineScheduler.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class WorkerState {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ WorkerState[] $VALUES;
        public static final WorkerState CPU_ACQUIRED = new WorkerState("CPU_ACQUIRED", 0);
        public static final WorkerState BLOCKING = new WorkerState("BLOCKING", 1);
        public static final WorkerState PARKING = new WorkerState("PARKING", 2);
        public static final WorkerState DORMANT = new WorkerState("DORMANT", 3);
        public static final WorkerState TERMINATED = new WorkerState("TERMINATED", 4);

        private static final /* synthetic */ WorkerState[] $values() {
            return new WorkerState[]{CPU_ACQUIRED, BLOCKING, PARKING, DORMANT, TERMINATED};
        }

        static {
            WorkerState[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private WorkerState(String str, int i10) {
        }

        @NotNull
        public static ss.a<WorkerState> getEntries() {
            return $ENTRIES;
        }

        public static WorkerState valueOf(String str) {
            return (WorkerState) Enum.valueOf(WorkerState.class, str);
        }

        public static WorkerState[] values() {
            return (WorkerState[]) $VALUES.clone();
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CoroutineScheduler(int i10, int i11, long j10, @NotNull String str) {
        this.f61840a = i10;
        this.f61841b = i11;
        this.f61842c = j10;
        this.f61843d = str;
        if (i10 >= 1) {
            if (i11 >= i10) {
                if (i11 <= 2097150) {
                    if (j10 > 0) {
                        this.f61844e = new ot.c();
                        this.f61845f = new ot.c();
                        this.f61846g = new v<>((i10 + 1) * 2);
                        this.controlState$volatile = i10 << 42;
                        return;
                    }
                    throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
                }
                throw new IllegalArgumentException(("Max pool size " + i11 + " should not exceed maximal supported number of threads 2097150").toString());
            }
            throw new IllegalArgumentException(("Max pool size " + i11 + " should be greater than or equals to core pool size " + i10).toString());
        }
        throw new IllegalArgumentException(("Core pool size " + i10 + " should be at least 1").toString());
    }

    private final void R(long j10) {
        if (a0() || Y(j10)) {
            return;
        }
        a0();
    }

    private final g W(c cVar, g gVar, boolean z10) {
        if (cVar == null) {
            return gVar;
        }
        WorkerState workerState = cVar.f61850c;
        if (workerState == WorkerState.TERMINATED) {
            return gVar;
        }
        if (!gVar.f64396b && workerState == WorkerState.BLOCKING) {
            return gVar;
        }
        cVar.f61854g = true;
        return cVar.f61848a.a(gVar, z10);
    }

    private final boolean Y(long j10) {
        if (e.e(((int) (2097151 & j10)) - ((int) ((j10 & 4398044413952L) >> 21)), 0) < this.f61840a) {
            int k10 = k();
            if (k10 == 1 && this.f61840a > 1) {
                k();
            }
            if (k10 > 0) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean Z(CoroutineScheduler coroutineScheduler, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = f61837j.get(coroutineScheduler);
        }
        return coroutineScheduler.Y(j10);
    }

    private final boolean a0() {
        c v10;
        do {
            v10 = v();
            if (v10 == null) {
                return false;
            }
        } while (!c.f61847i.compareAndSet(v10, -1, 0));
        LockSupport.unpark(v10);
        return true;
    }

    public static final /* synthetic */ AtomicLongFieldUpdater d() {
        return f61837j;
    }

    private final boolean g(g gVar) {
        if (gVar.f64396b) {
            return this.f61845f.a(gVar);
        }
        return this.f61844e.a(gVar);
    }

    private final int k() {
        synchronized (this.f61846g) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                long j10 = f61837j.get(this);
                int i10 = (int) (j10 & 2097151);
                int e10 = e.e(i10 - ((int) ((j10 & 4398044413952L) >> 21)), 0);
                if (e10 >= this.f61840a) {
                    return 0;
                }
                if (i10 >= this.f61841b) {
                    return 0;
                }
                int i11 = ((int) (d().get(this) & 2097151)) + 1;
                if (i11 > 0 && this.f61846g.b(i11) == null) {
                    c cVar = new c(this, i11);
                    this.f61846g.c(i11, cVar);
                    if (i11 == ((int) (2097151 & f61837j.incrementAndGet(this)))) {
                        int i12 = e10 + 1;
                        cVar.start();
                        return i12;
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalArgumentException("Failed requirement.");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final c m() {
        c cVar;
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof c) {
            cVar = (c) currentThread;
        } else {
            cVar = null;
        }
        if (cVar == null || !Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            return null;
        }
        return cVar;
    }

    public static /* synthetic */ void p(CoroutineScheduler coroutineScheduler, Runnable runnable, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        coroutineScheduler.o(runnable, z10, z11);
    }

    private final int u(c cVar) {
        Object h10 = cVar.h();
        while (h10 != f61839l) {
            if (h10 == null) {
                return 0;
            }
            c cVar2 = (c) h10;
            int g10 = cVar2.g();
            if (g10 != 0) {
                return g10;
            }
            h10 = cVar2.h();
        }
        return -1;
    }

    private final c v() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f61836i;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            c b10 = this.f61846g.b((int) (2097151 & j10));
            if (b10 == null) {
                return null;
            }
            long j11 = (CacheDataSource.DEFAULT_MAX_CACHE_FILE_SIZE + j10) & (-2097152);
            int u10 = u(b10);
            if (u10 >= 0 && f61836i.compareAndSet(this, j10, u10 | j11)) {
                b10.p(f61839l);
                return b10;
            }
        }
    }

    public final void F(@NotNull g gVar) {
        try {
            gVar.run();
        } finally {
            try {
            } finally {
            }
        }
    }

    public final void P(long j10) {
        int i10;
        g e10;
        if (!f61838k.compareAndSet(this, 0, 1)) {
            return;
        }
        c m10 = m();
        synchronized (this.f61846g) {
            i10 = (int) (d().get(this) & 2097151);
        }
        if (1 <= i10) {
            int i11 = 1;
            while (true) {
                c b10 = this.f61846g.b(i11);
                Intrinsics.checkNotNull(b10);
                c cVar = b10;
                if (cVar != m10) {
                    while (cVar.getState() != Thread.State.TERMINATED) {
                        LockSupport.unpark(cVar);
                        cVar.join(j10);
                    }
                    cVar.f61848a.j(this.f61845f);
                }
                if (i11 == i10) {
                    break;
                }
                i11++;
            }
        }
        this.f61845f.b();
        this.f61844e.b();
        while (true) {
            if (m10 != null) {
                e10 = m10.f(true);
                if (e10 != null) {
                    continue;
                    F(e10);
                }
            }
            e10 = this.f61844e.e();
            if (e10 == null && (e10 = this.f61845f.e()) == null) {
                break;
            }
            F(e10);
        }
        if (m10 != null) {
            m10.t(WorkerState.TERMINATED);
        }
        f61836i.set(this, 0L);
        f61837j.set(this, 0L);
    }

    public final void T() {
        if (a0() || Z(this, 0L, 1, null)) {
            return;
        }
        a0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        P(10000L);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        p(this, runnable, false, false, 6, null);
    }

    public final boolean isTerminated() {
        if (f61838k.get(this) == 1) {
            return true;
        }
        return false;
    }

    @NotNull
    public final g l(@NotNull Runnable runnable, boolean z10) {
        long a10 = i.f64403f.a();
        if (runnable instanceof g) {
            g gVar = (g) runnable;
            gVar.f64395a = a10;
            gVar.f64396b = z10;
            return gVar;
        }
        return i.b(runnable, a10, z10);
    }

    public final void o(@NotNull Runnable runnable, boolean z10, boolean z11) {
        long j10;
        gt.b.a();
        g l10 = l(runnable, z10);
        boolean z12 = l10.f64396b;
        if (z12) {
            j10 = f61837j.addAndGet(this, CacheDataSource.DEFAULT_MAX_CACHE_FILE_SIZE);
        } else {
            j10 = 0;
        }
        g W = W(m(), l10, z11);
        if (W != null && !g(W)) {
            throw new RejectedExecutionException(this.f61843d + " was terminated");
        } else if (z12) {
            R(j10);
        } else {
            T();
        }
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList();
        int a10 = this.f61846g.a();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 1; i15 < a10; i15++) {
            c b10 = this.f61846g.b(i15);
            if (b10 != null) {
                int i16 = b10.f61848a.i();
                int i17 = b.$EnumSwitchMapping$0[b10.f61850c.ordinal()];
                if (i17 != 1) {
                    if (i17 != 2) {
                        if (i17 != 3) {
                            if (i17 != 4) {
                                if (i17 == 5) {
                                    i14++;
                                } else {
                                    throw new NoWhenBranchMatchedException();
                                }
                            } else {
                                i13++;
                                if (i16 > 0) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(i16);
                                    sb2.append('d');
                                    arrayList.add(sb2.toString());
                                }
                            }
                        } else {
                            i10++;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(i16);
                            sb3.append('c');
                            arrayList.add(sb3.toString());
                        }
                    } else {
                        i11++;
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(i16);
                        sb4.append('b');
                        arrayList.add(sb4.toString());
                    }
                } else {
                    i12++;
                }
            }
        }
        long j10 = f61837j.get(this);
        return this.f61843d + '@' + h0.b(this) + "[Pool Size {core = " + this.f61840a + ", max = " + this.f61841b + "}, Worker States {CPU = " + i10 + ", blocking = " + i11 + ", parked = " + i12 + ", dormant = " + i13 + ", terminated = " + i14 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f61844e.c() + ", global blocking queue size = " + this.f61845f.c() + ", Control State {created workers= " + ((int) (2097151 & j10)) + ", blocking tasks = " + ((int) ((4398044413952L & j10) >> 21)) + ", CPUs acquired = " + (this.f61840a - ((int) ((9223367638808264704L & j10) >> 42))) + "}]";
    }

    public final boolean w(@NotNull c cVar) {
        long j10;
        int g10;
        if (cVar.h() == f61839l) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f61836i;
            do {
                j10 = atomicLongFieldUpdater.get(this);
                g10 = cVar.g();
                cVar.p(this.f61846g.b((int) (2097151 & j10)));
            } while (!f61836i.compareAndSet(this, j10, ((CacheDataSource.DEFAULT_MAX_CACHE_FILE_SIZE + j10) & (-2097152)) | g10));
            return true;
        }
        return false;
    }

    public final void x(@NotNull c cVar, int i10, int i11) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f61836i;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            int i12 = (int) (2097151 & j10);
            long j11 = (CacheDataSource.DEFAULT_MAX_CACHE_FILE_SIZE + j10) & (-2097152);
            if (i12 == i10) {
                if (i11 == 0) {
                    i12 = u(cVar);
                } else {
                    i12 = i11;
                }
            }
            if (i12 >= 0 && f61836i.compareAndSet(this, j10, j11 | i12)) {
                return;
            }
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 5 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,1041:1\n298#2,2:1042\n286#2:1044\n300#2,4:1045\n305#2:1049\n295#2,2:1050\n295#2,2:1055\n281#2:1059\n290#2:1060\n284#2:1061\n281#2:1062\n1#3:1052\n77#4:1053\n77#4:1054\n29#5:1057\n16#6:1058\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n684#1:1042,2\n684#1:1044\n684#1:1045,4\n699#1:1049\n773#1:1050,2\n821#1:1055,2\n872#1:1059\n898#1:1060\n898#1:1061\n971#1:1062\n812#1:1053\n815#1:1054\n868#1:1057\n868#1:1058\n*E\n"})
    /* loaded from: classes8.dex */
    public final class c extends Thread {

        /* renamed from: i  reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f61847i = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl$volatile");
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final k f61848a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Ref.ObjectRef<g> f61849b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public WorkerState f61850c;

        /* renamed from: d  reason: collision with root package name */
        private long f61851d;

        /* renamed from: e  reason: collision with root package name */
        private long f61852e;

        /* renamed from: f  reason: collision with root package name */
        private int f61853f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f61854g;
        private volatile int indexInArray;
        @Nullable
        private volatile Object nextParkedWorker;
        private volatile /* synthetic */ int workerCtl$volatile;

        private c() {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.this.getClass().getClassLoader());
            this.f61848a = new k();
            this.f61849b = new Ref.ObjectRef<>();
            this.f61850c = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.f61839l;
            int nanoTime = (int) System.nanoTime();
            this.f61853f = nanoTime == 0 ? 42 : nanoTime;
        }

        private final void c(g gVar) {
            this.f61851d = 0L;
            if (this.f61850c == WorkerState.PARKING) {
                this.f61850c = WorkerState.BLOCKING;
            }
            if (gVar.f64396b) {
                if (t(WorkerState.BLOCKING)) {
                    CoroutineScheduler.this.T();
                }
                CoroutineScheduler.this.F(gVar);
                CoroutineScheduler.d().addAndGet(CoroutineScheduler.this, -2097152L);
                if (this.f61850c != WorkerState.TERMINATED) {
                    this.f61850c = WorkerState.DORMANT;
                    return;
                }
                return;
            }
            CoroutineScheduler.this.F(gVar);
        }

        private final g d(boolean z10) {
            boolean z11;
            g m10;
            g m11;
            if (z10) {
                if (k(CoroutineScheduler.this.f61840a * 2) == 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z11 && (m11 = m()) != null) {
                    return m11;
                }
                g k10 = this.f61848a.k();
                if (k10 != null) {
                    return k10;
                }
                if (!z11 && (m10 = m()) != null) {
                    return m10;
                }
            } else {
                g m12 = m();
                if (m12 != null) {
                    return m12;
                }
            }
            return u(3);
        }

        private final g e() {
            g l10 = this.f61848a.l();
            if (l10 == null) {
                g e10 = CoroutineScheduler.this.f61845f.e();
                if (e10 == null) {
                    return u(1);
                }
                return e10;
            }
            return l10;
        }

        private final boolean j() {
            if (this.nextParkedWorker != CoroutineScheduler.f61839l) {
                return true;
            }
            return false;
        }

        private final void l() {
            if (this.f61851d == 0) {
                this.f61851d = System.nanoTime() + CoroutineScheduler.this.f61842c;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.f61842c);
            if (System.nanoTime() - this.f61851d >= 0) {
                this.f61851d = 0L;
                v();
            }
        }

        private final g m() {
            if (k(2) == 0) {
                g e10 = CoroutineScheduler.this.f61844e.e();
                if (e10 != null) {
                    return e10;
                }
                return CoroutineScheduler.this.f61845f.e();
            }
            g e11 = CoroutineScheduler.this.f61845f.e();
            if (e11 != null) {
                return e11;
            }
            return CoroutineScheduler.this.f61844e.e();
        }

        private final void n() {
            loop0: while (true) {
                boolean z10 = false;
                while (!CoroutineScheduler.this.isTerminated() && this.f61850c != WorkerState.TERMINATED) {
                    g f10 = f(this.f61854g);
                    if (f10 != null) {
                        this.f61852e = 0L;
                        c(f10);
                    } else {
                        this.f61854g = false;
                        if (this.f61852e != 0) {
                            if (!z10) {
                                z10 = true;
                            } else {
                                t(WorkerState.PARKING);
                                Thread.interrupted();
                                LockSupport.parkNanos(this.f61852e);
                                this.f61852e = 0L;
                            }
                        } else {
                            r();
                        }
                    }
                }
            }
            t(WorkerState.TERMINATED);
        }

        private final boolean q() {
            long j10;
            if (this.f61850c == WorkerState.CPU_ACQUIRED) {
                return true;
            }
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            AtomicLongFieldUpdater d10 = CoroutineScheduler.d();
            do {
                j10 = d10.get(coroutineScheduler);
                if (((int) ((9223367638808264704L & j10) >> 42)) == 0) {
                    return false;
                }
            } while (!CoroutineScheduler.d().compareAndSet(coroutineScheduler, j10, j10 - 4398046511104L));
            this.f61850c = WorkerState.CPU_ACQUIRED;
            return true;
        }

        private final void r() {
            if (!j()) {
                CoroutineScheduler.this.w(this);
                return;
            }
            f61847i.set(this, -1);
            while (j() && f61847i.get(this) == -1 && !CoroutineScheduler.this.isTerminated() && this.f61850c != WorkerState.TERMINATED) {
                t(WorkerState.PARKING);
                Thread.interrupted();
                l();
            }
        }

        private final g u(int i10) {
            int i11 = (int) (CoroutineScheduler.d().get(CoroutineScheduler.this) & 2097151);
            if (i11 < 2) {
                return null;
            }
            int k10 = k(i11);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long j10 = Long.MAX_VALUE;
            for (int i12 = 0; i12 < i11; i12++) {
                k10++;
                if (k10 > i11) {
                    k10 = 1;
                }
                c b10 = coroutineScheduler.f61846g.b(k10);
                if (b10 != null && b10 != this) {
                    long r10 = b10.f61848a.r(i10, this.f61849b);
                    if (r10 == -1) {
                        Ref.ObjectRef<g> objectRef = this.f61849b;
                        g gVar = objectRef.element;
                        objectRef.element = null;
                        return gVar;
                    } else if (r10 > 0) {
                        j10 = Math.min(j10, r10);
                    }
                }
            }
            if (j10 == Long.MAX_VALUE) {
                j10 = 0;
            }
            this.f61852e = j10;
            return null;
        }

        private final void v() {
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (coroutineScheduler.f61846g) {
                try {
                    if (coroutineScheduler.isTerminated()) {
                        return;
                    }
                    if (((int) (CoroutineScheduler.d().get(coroutineScheduler) & 2097151)) <= coroutineScheduler.f61840a) {
                        return;
                    }
                    if (!f61847i.compareAndSet(this, -1, 1)) {
                        return;
                    }
                    int i10 = this.indexInArray;
                    o(0);
                    coroutineScheduler.x(this, i10, 0);
                    int andDecrement = (int) (CoroutineScheduler.d().getAndDecrement(coroutineScheduler) & 2097151);
                    if (andDecrement != i10) {
                        c b10 = coroutineScheduler.f61846g.b(andDecrement);
                        Intrinsics.checkNotNull(b10);
                        c cVar = b10;
                        coroutineScheduler.f61846g.c(i10, cVar);
                        cVar.o(i10);
                        coroutineScheduler.x(cVar, andDecrement, i10);
                    }
                    coroutineScheduler.f61846g.c(andDecrement, null);
                    Unit unit = Unit.f60915a;
                    this.f61850c = WorkerState.TERMINATED;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Nullable
        public final g f(boolean z10) {
            if (q()) {
                return d(z10);
            }
            return e();
        }

        public final int g() {
            return this.indexInArray;
        }

        @Nullable
        public final Object h() {
            return this.nextParkedWorker;
        }

        public final int k(int i10) {
            int i11 = this.f61853f;
            int i12 = i11 ^ (i11 << 13);
            int i13 = i12 ^ (i12 >> 17);
            int i14 = i13 ^ (i13 << 5);
            this.f61853f = i14;
            int i15 = i10 - 1;
            if ((i15 & i10) == 0) {
                return i14 & i15;
            }
            return (i14 & Integer.MAX_VALUE) % i10;
        }

        public final void o(int i10) {
            String valueOf;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(CoroutineScheduler.this.f61843d);
            sb2.append("-worker-");
            if (i10 == 0) {
                valueOf = "TERMINATED";
            } else {
                valueOf = String.valueOf(i10);
            }
            sb2.append(valueOf);
            setName(sb2.toString());
            this.indexInArray = i10;
        }

        public final void p(@Nullable Object obj) {
            this.nextParkedWorker = obj;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            n();
        }

        public final boolean t(@NotNull WorkerState workerState) {
            boolean z10;
            WorkerState workerState2 = this.f61850c;
            if (workerState2 == WorkerState.CPU_ACQUIRED) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                CoroutineScheduler.d().addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.f61850c = workerState;
            }
            return z10;
        }

        public c(CoroutineScheduler coroutineScheduler, int i10) {
            this();
            o(i10);
        }
    }
}
