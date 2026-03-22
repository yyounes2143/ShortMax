package rx.internal.schedulers;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import ku.j;
import pu.b;
import qu.c;
import rx.exceptions.OnErrorNotImplementedException;
/* loaded from: classes8.dex */
public final class ScheduledAction extends AtomicReference<Thread> implements Runnable, j {

    /* renamed from: a  reason: collision with root package name */
    final b f66167a;

    /* renamed from: b  reason: collision with root package name */
    final mu.a f66168b;

    /* loaded from: classes8.dex */
    static final class Remover2 extends AtomicBoolean implements j {

        /* renamed from: a  reason: collision with root package name */
        final ScheduledAction f66169a;

        /* renamed from: b  reason: collision with root package name */
        final b f66170b;

        public Remover2(ScheduledAction scheduledAction, b bVar) {
            this.f66169a = scheduledAction;
            this.f66170b = bVar;
        }

        @Override // ku.j
        public boolean d() {
            return this.f66169a.d();
        }

        @Override // ku.j
        public void e() {
            if (compareAndSet(false, true)) {
                this.f66170b.b(this.f66169a);
            }
        }
    }

    /* loaded from: classes8.dex */
    final class a implements j {

        /* renamed from: a  reason: collision with root package name */
        private final Future<?> f66171a;

        a(Future<?> future) {
            this.f66171a = future;
        }

        @Override // ku.j
        public boolean d() {
            return this.f66171a.isCancelled();
        }

        @Override // ku.j
        public void e() {
            if (ScheduledAction.this.get() != Thread.currentThread()) {
                this.f66171a.cancel(true);
            } else {
                this.f66171a.cancel(false);
            }
        }
    }

    public ScheduledAction(mu.a aVar) {
        this.f66168b = aVar;
        this.f66167a = new b();
    }

    @Override // ku.j
    public boolean d() {
        return this.f66167a.d();
    }

    @Override // ku.j
    public void e() {
        if (!this.f66167a.d()) {
            this.f66167a.e();
        }
    }

    public void f(Future<?> future) {
        this.f66167a.a(new a(future));
    }

    void g(Throwable th2) {
        c.f(th2);
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th2);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                lazySet(Thread.currentThread());
                this.f66168b.call();
            } catch (Throwable th2) {
                e();
                throw th2;
            }
        } catch (OnErrorNotImplementedException e10) {
            g(new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", e10));
            e();
        } catch (Throwable th3) {
            g(new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", th3));
            e();
        }
        e();
    }

    public ScheduledAction(mu.a aVar, b bVar) {
        this.f66168b = aVar;
        this.f66167a = new b(new Remover2(this, bVar));
    }
}
