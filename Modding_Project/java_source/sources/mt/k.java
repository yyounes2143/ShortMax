package mt;

import gt.s0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LimitedDispatcher.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,154:1\n62#1,18:155\n62#1,18:173\n29#2:191\n29#2:193\n16#3:192\n16#3:194\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n44#1:155,18\n51#1:173,18\n85#1:191\n98#1:193\n85#1:192\n98#1:194\n*E\n"})
/* loaded from: classes8.dex */
public final class k extends gt.c0 implements gt.m0 {

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f62677g = AtomicIntegerFieldUpdater.newUpdater(k.class, "runningWorkers$volatile");

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ gt.m0 f62678a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final gt.c0 f62679b;

    /* renamed from: c  reason: collision with root package name */
    private final int f62680c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f62681d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final n<Runnable> f62682e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Object f62683f;
    private volatile /* synthetic */ int runningWorkers$volatile;

    /* compiled from: LimitedDispatcher.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher$Worker\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,154:1\n29#2:155\n16#3:156\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher$Worker\n*L\n139#1:155\n139#1:156\n*E\n"})
    /* loaded from: classes8.dex */
    private final class a implements Runnable {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private Runnable f62684a;

        public a(@NotNull Runnable runnable) {
            this.f62684a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10 = 0;
            while (true) {
                this.f62684a.run();
                Runnable v10 = k.this.v();
                if (v10 == null) {
                    return;
                }
                try {
                    this.f62684a = v10;
                    i10++;
                    if (i10 >= 16 && i.d(k.this.f62679b, k.this)) {
                        i.c(k.this.f62679b, k.this, this);
                        return;
                    }
                }
            }
        }
    }

    public k(@NotNull gt.c0 c0Var, int i10, @Nullable String str) {
        gt.m0 m0Var;
        if (c0Var instanceof gt.m0) {
            m0Var = (gt.m0) c0Var;
        } else {
            m0Var = null;
        }
        this.f62678a = m0Var == null ? gt.j0.a() : m0Var;
        this.f62679b = c0Var;
        this.f62680c = i10;
        this.f62681d = str;
        this.f62682e = new n<>(false);
        this.f62683f = new Object();
    }

    public static final /* synthetic */ AtomicIntegerFieldUpdater o() {
        return f62677g;
    }

    public static final /* synthetic */ Object p(k kVar) {
        return kVar.f62683f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Runnable v() {
        while (true) {
            Runnable e10 = this.f62682e.e();
            if (e10 == null) {
                synchronized (this.f62683f) {
                    f62677g.decrementAndGet(this);
                    if (this.f62682e.c() == 0) {
                        return null;
                    }
                    f62677g.incrementAndGet(this);
                }
            } else {
                return e10;
            }
        }
    }

    private final boolean w() {
        synchronized (this.f62683f) {
            if (f62677g.get(this) >= this.f62680c) {
                return false;
            }
            f62677g.incrementAndGet(this);
            return true;
        }
    }

    @Override // gt.m0
    public void a(long j10, @NotNull gt.i<? super Unit> iVar) {
        this.f62678a.a(j10, iVar);
    }

    @Override // gt.m0
    @NotNull
    public s0 c(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return this.f62678a.c(j10, runnable, coroutineContext);
    }

    @Override // gt.c0
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        Runnable v10;
        this.f62682e.a(runnable);
        if (f62677g.get(this) < this.f62680c && w() && (v10 = v()) != null) {
            try {
                i.c(this.f62679b, this, new a(v10));
            } catch (Throwable th2) {
                f62677g.decrementAndGet(this);
                throw th2;
            }
        }
    }

    @Override // gt.c0
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        Runnable v10;
        this.f62682e.a(runnable);
        if (f62677g.get(this) < this.f62680c && w() && (v10 = v()) != null) {
            try {
                this.f62679b.dispatchYield(this, new a(v10));
            } catch (Throwable th2) {
                f62677g.decrementAndGet(this);
                throw th2;
            }
        }
    }

    @Override // gt.c0
    @NotNull
    public gt.c0 limitedParallelism(int i10, @Nullable String str) {
        l.a(i10);
        if (i10 >= this.f62680c) {
            return l.b(this, str);
        }
        return super.limitedParallelism(i10, str);
    }

    @Override // gt.c0
    @NotNull
    public String toString() {
        String str = this.f62681d;
        if (str == null) {
            return this.f62679b + ".limitedParallelism(" + this.f62680c + ')';
        }
        return str;
    }
}
