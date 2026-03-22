package i2;

import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: StatefulRunnable.java */
/* loaded from: classes3.dex */
public abstract class h<T> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    protected final AtomicInteger f53289a = new AtomicInteger(0);

    public void a() {
        if (this.f53289a.compareAndSet(0, 2)) {
            e();
        }
    }

    protected abstract void c(T t10);

    protected abstract T d() throws Exception;

    protected abstract void e();

    protected abstract void f(Exception exc);

    protected abstract void g(T t10);

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f53289a.compareAndSet(0, 1)) {
            return;
        }
        try {
            T d10 = d();
            this.f53289a.set(3);
            try {
                g(d10);
            } finally {
                c(d10);
            }
        } catch (Exception e10) {
            this.f53289a.set(4);
            f(e10);
        }
    }
}
