package i2;

import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: ConstrainedExecutorService.java */
/* loaded from: classes3.dex */
public class b extends AbstractExecutorService {

    /* renamed from: h  reason: collision with root package name */
    private static final Class<?> f53277h = b.class;

    /* renamed from: a  reason: collision with root package name */
    private final String f53278a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f53279b;

    /* renamed from: c  reason: collision with root package name */
    private volatile int f53280c;

    /* renamed from: d  reason: collision with root package name */
    private final BlockingQueue<Runnable> f53281d;

    /* renamed from: e  reason: collision with root package name */
    private final a f53282e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicInteger f53283f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicInteger f53284g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConstrainedExecutorService.java */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                Runnable runnable = (Runnable) b.this.f53281d.poll();
                if (runnable != null) {
                    runnable.run();
                } else {
                    l2.a.p(b.f53277h, "%s: Worker has nothing to run", b.this.f53278a);
                }
                int decrementAndGet = b.this.f53283f.decrementAndGet();
                if (!b.this.f53281d.isEmpty()) {
                    b.this.f();
                } else {
                    l2.a.q(b.f53277h, "%s: worker finished; %d workers left", b.this.f53278a, Integer.valueOf(decrementAndGet));
                }
            } catch (Throwable th2) {
                int decrementAndGet2 = b.this.f53283f.decrementAndGet();
                if (!b.this.f53281d.isEmpty()) {
                    b.this.f();
                } else {
                    l2.a.q(b.f53277h, "%s: worker finished; %d workers left", b.this.f53278a, Integer.valueOf(decrementAndGet2));
                }
                throw th2;
            }
        }

        private a() {
        }
    }

    public b(String str, int i10, Executor executor, BlockingQueue<Runnable> blockingQueue) {
        if (i10 > 0) {
            this.f53278a = str;
            this.f53279b = executor;
            this.f53280c = i10;
            this.f53281d = blockingQueue;
            this.f53282e = new a();
            this.f53283f = new AtomicInteger(0);
            this.f53284g = new AtomicInteger(0);
            return;
        }
        throw new IllegalArgumentException("max concurrency must be > 0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        int i10 = this.f53283f.get();
        while (i10 < this.f53280c) {
            int i11 = i10 + 1;
            if (this.f53283f.compareAndSet(i10, i11)) {
                l2.a.r(f53277h, "%s: starting worker %d of %d", this.f53278a, Integer.valueOf(i11), Integer.valueOf(this.f53280c));
                this.f53279b.execute(this.f53282e);
                return;
            }
            l2.a.p(f53277h, "%s: race in startWorkerIfNeeded; retrying", this.f53278a);
            i10 = this.f53283f.get();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (runnable != null) {
            if (this.f53281d.offer(runnable)) {
                int size = this.f53281d.size();
                int i10 = this.f53284g.get();
                if (size > i10 && this.f53284g.compareAndSet(i10, size)) {
                    l2.a.q(f53277h, "%s: max pending work in queue = %d", this.f53278a, Integer.valueOf(size));
                }
                f();
                return;
            }
            throw new RejectedExecutionException(this.f53278a + " queue is full, size=" + this.f53281d.size());
        }
        throw new NullPointerException("runnable parameter is null");
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
