package gt;

import gt.v0;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultExecutor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDefaultExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultExecutor.kt\nkotlinx/coroutines/DefaultExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"})
/* loaded from: classes8.dex */
public final class i0 extends v0 implements Runnable {
    @Nullable
    private static volatile Thread _thread;
    private static volatile int debugStatus;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final i0 f52539g;

    /* renamed from: h  reason: collision with root package name */
    private static final long f52540h;

    static {
        Long l10;
        i0 i0Var = new i0();
        f52539g = i0Var;
        u0.w(i0Var, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l10 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l10 = 1000L;
        }
        f52540h = timeUnit.toNanos(l10.longValue());
    }

    private i0() {
    }

    private final synchronized Thread A0() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
            _thread = thread;
            thread.setContextClassLoader(f52539g.getClass().getClassLoader());
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    private final boolean C0() {
        if (debugStatus == 4) {
            return true;
        }
        return false;
    }

    private final boolean D0() {
        int i10 = debugStatus;
        if (i10 != 2 && i10 != 3) {
            return false;
        }
        return true;
    }

    private final synchronized boolean E0() {
        if (D0()) {
            return false;
        }
        debugStatus = 1;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return true;
    }

    private final void F0() {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    private final synchronized void z0() {
        if (!D0()) {
            return;
        }
        debugStatus = 3;
        n0();
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
    }

    @Override // gt.w0
    @NotNull
    protected Thread Y() {
        Thread thread = _thread;
        if (thread == null) {
            return A0();
        }
        return thread;
    }

    @Override // gt.w0
    protected void Z(long j10, @NotNull v0.c cVar) {
        F0();
    }

    @Override // gt.v0, gt.m0
    @NotNull
    public s0 c(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return t0(j10, runnable);
    }

    @Override // gt.v0
    public void e0(@NotNull Runnable runnable) {
        if (C0()) {
            F0();
        }
        super.e0(runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean l02;
        u1.f52561a.d(this);
        b.a();
        try {
            if (!E0()) {
                if (!l02) {
                    return;
                }
                return;
            }
            long j10 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long R = R();
                if (R == Long.MAX_VALUE) {
                    b.a();
                    long nanoTime = System.nanoTime();
                    if (j10 == Long.MAX_VALUE) {
                        j10 = f52540h + nanoTime;
                    }
                    long j11 = j10 - nanoTime;
                    if (j11 <= 0) {
                        _thread = null;
                        z0();
                        b.a();
                        if (!l0()) {
                            Y();
                            return;
                        }
                        return;
                    }
                    R = kotlin.ranges.e.k(R, j11);
                } else {
                    j10 = Long.MAX_VALUE;
                }
                if (R > 0) {
                    if (D0()) {
                        _thread = null;
                        z0();
                        b.a();
                        if (!l0()) {
                            Y();
                            return;
                        }
                        return;
                    }
                    b.a();
                    LockSupport.parkNanos(this, R);
                }
            }
        } finally {
            _thread = null;
            z0();
            b.a();
            if (!l0()) {
                Y();
            }
        }
    }

    @Override // gt.v0, gt.u0
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    @Override // gt.c0
    @NotNull
    public String toString() {
        return "DefaultExecutor";
    }
}
