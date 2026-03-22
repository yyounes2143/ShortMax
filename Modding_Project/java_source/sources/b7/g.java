package b7;
/* compiled from: ConditionVariable.java */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final d f2447a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2448b;

    public g() {
        this(d.f2436a);
    }

    public synchronized void a() throws InterruptedException {
        while (!this.f2448b) {
            wait();
        }
    }

    public synchronized void b() {
        boolean z10 = false;
        while (!this.f2448b) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z10 = true;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean c() {
        boolean z10;
        z10 = this.f2448b;
        this.f2448b = false;
        return z10;
    }

    public synchronized boolean d() {
        return this.f2448b;
    }

    public synchronized boolean e() {
        if (this.f2448b) {
            return false;
        }
        this.f2448b = true;
        notifyAll();
        return true;
    }

    public g(d dVar) {
        this.f2447a = dVar;
    }
}
