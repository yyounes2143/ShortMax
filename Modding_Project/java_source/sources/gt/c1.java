package gt;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Executors.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c1 extends b1 implements m0 {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Executor f52530b;

    public c1(@NotNull Executor executor) {
        this.f52530b = executor;
        mt.a.a(m());
    }

    private final void o(CoroutineContext coroutineContext, RejectedExecutionException rejectedExecutionException) {
        kotlinx.coroutines.t.c(coroutineContext, z0.a("The task was rejected", rejectedExecutionException));
    }

    private final ScheduledFuture<?> p(ScheduledExecutorService scheduledExecutorService, Runnable runnable, CoroutineContext coroutineContext, long j10) {
        try {
            return scheduledExecutorService.schedule(runnable, j10, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e10) {
            o(coroutineContext, e10);
            return null;
        }
    }

    @Override // gt.m0
    public void a(long j10, @NotNull i<? super Unit> iVar) {
        ScheduledExecutorService scheduledExecutorService;
        Executor m10 = m();
        ScheduledFuture<?> scheduledFuture = null;
        if (m10 instanceof ScheduledExecutorService) {
            scheduledExecutorService = (ScheduledExecutorService) m10;
        } else {
            scheduledExecutorService = null;
        }
        if (scheduledExecutorService != null) {
            scheduledFuture = p(scheduledExecutorService, new o1(this, iVar), iVar.getContext(), j10);
        }
        if (scheduledFuture != null) {
            l.c(iVar, new h(scheduledFuture));
        } else {
            i0.f52539g.a(j10, iVar);
        }
    }

    @Override // gt.m0
    @NotNull
    public s0 c(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        ScheduledExecutorService scheduledExecutorService;
        Executor m10 = m();
        ScheduledFuture<?> scheduledFuture = null;
        if (m10 instanceof ScheduledExecutorService) {
            scheduledExecutorService = (ScheduledExecutorService) m10;
        } else {
            scheduledExecutorService = null;
        }
        if (scheduledExecutorService != null) {
            scheduledFuture = p(scheduledExecutorService, runnable, coroutineContext, j10);
        }
        if (scheduledFuture != null) {
            return new r0(scheduledFuture);
        }
        return i0.f52539g.c(j10, runnable, coroutineContext);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ExecutorService executorService;
        Executor m10 = m();
        if (m10 instanceof ExecutorService) {
            executorService = (ExecutorService) m10;
        } else {
            executorService = null;
        }
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override // gt.c0
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        try {
            Executor m10 = m();
            b.a();
            m10.execute(runnable);
        } catch (RejectedExecutionException e10) {
            b.a();
            o(coroutineContext, e10);
            q0.b().dispatch(coroutineContext, runnable);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof c1) && ((c1) obj).m() == m()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return System.identityHashCode(m());
    }

    @Override // gt.b1
    @NotNull
    public Executor m() {
        return this.f52530b;
    }

    @Override // gt.c0
    @NotNull
    public String toString() {
        return m().toString();
    }
}
