package i2;

import android.os.Handler;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: ScheduledFutureImpl.java */
/* loaded from: classes3.dex */
public class f<V> implements RunnableFuture<V>, ScheduledFuture<V> {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f53287a;

    /* renamed from: b  reason: collision with root package name */
    private final FutureTask<V> f53288b;

    public f(Handler handler, Callable<V> callable) {
        this.f53287a = handler;
        this.f53288b = new FutureTask<>(callable);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(Delayed delayed) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return this.f53288b.cancel(z10);
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        return this.f53288b.get();
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f53288b.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f53288b.isDone();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        this.f53288b.run();
    }

    @Override // java.util.concurrent.Future
    public V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f53288b.get(j10, timeUnit);
    }

    public f(Handler handler, Runnable runnable, V v10) {
        this.f53287a = handler;
        this.f53288b = new FutureTask<>(runnable, v10);
    }
}
