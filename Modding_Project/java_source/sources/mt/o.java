package mt;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LockFreeTaskQueue.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLockFreeTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n+ 2 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,304:1\n295#2,3:305\n295#2,3:308\n295#2,3:311\n295#2,3:314\n295#2,3:317\n295#2,3:321\n295#2,3:324\n1#3:320\n*S KotlinDebug\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n*L\n87#1:305,3\n88#1:308,3\n103#1:311,3\n163#1:314,3\n196#1:317,3\n227#1:321,3\n243#1:324,3\n*E\n"})
/* loaded from: classes8.dex */
public final class o<E> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f62693e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f62694f = AtomicReferenceFieldUpdater.newUpdater(o.class, Object.class, "_next$volatile");

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f62695g = AtomicLongFieldUpdater.newUpdater(o.class, "_state$volatile");
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a0 f62696h = new a0("REMOVE_FROZEN");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;

    /* renamed from: a  reason: collision with root package name */
    private final int f62697a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f62698b;

    /* renamed from: c  reason: collision with root package name */
    private final int f62699c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f62700d;

    /* compiled from: LockFreeTaskQueue.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(long j10) {
            if ((j10 & 2305843009213693952L) != 0) {
                return 2;
            }
            return 1;
        }

        public final long b(long j10, int i10) {
            return d(j10, 1073741823L) | i10;
        }

        public final long c(long j10, int i10) {
            return d(j10, 1152921503533105152L) | (i10 << 30);
        }

        public final long d(long j10, long j11) {
            return j10 & (~j11);
        }

        private a() {
        }
    }

    /* compiled from: LockFreeTaskQueue.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f62701a;

        public b(int i10) {
            this.f62701a = i10;
        }
    }

    public o(int i10, boolean z10) {
        this.f62697a = i10;
        this.f62698b = z10;
        int i11 = i10 - 1;
        this.f62699c = i11;
        this.f62700d = new AtomicReferenceArray(i10);
        if (i11 <= 1073741823) {
            if ((i10 & i11) == 0) {
                return;
            }
            throw new IllegalStateException("Check failed.");
        }
        throw new IllegalStateException("Check failed.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final o<E> b(long j10) {
        o<E> oVar = new o<>(this.f62697a * 2, this.f62698b);
        int i10 = (int) (1073741823 & j10);
        int i11 = (int) ((1152921503533105152L & j10) >> 30);
        while (true) {
            int i12 = this.f62699c;
            if ((i10 & i12) != (i12 & i11)) {
                Object obj = f().get(this.f62699c & i10);
                if (obj == null) {
                    obj = new b(i10);
                }
                oVar.f().set(oVar.f62699c & i10, obj);
                i10++;
            } else {
                f62695g.set(oVar, f62693e.d(j10, 1152921504606846976L));
                return oVar;
            }
        }
    }

    private final o<E> c(long j10) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f62694f;
        while (true) {
            o<E> oVar = (o) atomicReferenceFieldUpdater.get(this);
            if (oVar != null) {
                return oVar;
            }
            androidx.concurrent.futures.a.a(f62694f, this, null, b(j10));
        }
    }

    private final o<E> e(int i10, E e10) {
        Object obj = f().get(this.f62699c & i10);
        if ((obj instanceof b) && ((b) obj).f62701a == i10) {
            f().set(i10 & this.f62699c, e10);
            return this;
        }
        return null;
    }

    private final /* synthetic */ AtomicReferenceArray f() {
        return this.f62700d;
    }

    private final long k() {
        long j10;
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f62695g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & 1152921504606846976L) != 0) {
                return j10;
            }
            j11 = j10 | 1152921504606846976L;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j11));
        return j11;
    }

    private final o<E> n(int i10, int i11) {
        long j10;
        int i12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f62695g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            i12 = (int) (1073741823 & j10);
            if ((1152921504606846976L & j10) != 0) {
                return l();
            }
        } while (!f62695g.compareAndSet(this, j10, f62693e.b(j10, i11)));
        f().set(this.f62699c & i12, null);
        return null;
    }

    public final int a(@NotNull E e10) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f62695g;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j10) != 0) {
                return f62693e.a(j10);
            }
            int i10 = (int) (1073741823 & j10);
            int i11 = (int) ((1152921503533105152L & j10) >> 30);
            int i12 = this.f62699c;
            if (((i11 + 2) & i12) == (i10 & i12)) {
                return 1;
            }
            if (!this.f62698b && f().get(i11 & i12) != null) {
                int i13 = this.f62697a;
                if (i13 < 1024 || ((i11 - i10) & 1073741823) > (i13 >> 1)) {
                    break;
                }
            } else if (f62695g.compareAndSet(this, j10, f62693e.c(j10, (i11 + 1) & 1073741823))) {
                f().set(i11 & i12, e10);
                o<E> oVar = this;
                while ((f62695g.get(oVar) & 1152921504606846976L) != 0 && (oVar = oVar.l().e(i11, e10)) != null) {
                }
                return 0;
            }
        }
        return 1;
    }

    public final boolean d() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f62695g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j10) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j10 | 2305843009213693952L));
        return true;
    }

    public final int g() {
        long j10 = f62695g.get(this);
        return (((int) ((j10 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j10))) & 1073741823;
    }

    public final boolean j() {
        long j10 = f62695g.get(this);
        if (((int) (1073741823 & j10)) == ((int) ((j10 & 1152921503533105152L) >> 30))) {
            return true;
        }
        return false;
    }

    @NotNull
    public final o<E> l() {
        return c(k());
    }

    @Nullable
    public final Object m() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f62695g;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            if ((1152921504606846976L & j10) != 0) {
                return f62696h;
            }
            int i10 = (int) (1073741823 & j10);
            int i11 = this.f62699c;
            if ((((int) ((1152921503533105152L & j10) >> 30)) & i11) == (i11 & i10)) {
                return null;
            }
            Object obj = f().get(this.f62699c & i10);
            if (obj == null) {
                if (this.f62698b) {
                    return null;
                }
            } else if (obj instanceof b) {
                return null;
            } else {
                int i12 = (i10 + 1) & 1073741823;
                if (f62695g.compareAndSet(this, j10, f62693e.b(j10, i12))) {
                    f().set(this.f62699c & i10, null);
                    return obj;
                } else if (this.f62698b) {
                    o<E> oVar = this;
                    do {
                        oVar = oVar.n(i10, i12);
                    } while (oVar != null);
                    return obj;
                }
            }
        }
    }
}
