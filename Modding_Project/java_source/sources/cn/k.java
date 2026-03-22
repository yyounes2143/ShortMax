package cn;
/* compiled from: ConditionVariable.java */
/* loaded from: classes8.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final h f3606a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3607b;

    public k() {
        this(h.f3594a);
    }

    public synchronized void a() throws InterruptedException {
        while (!this.f3607b) {
            wait();
        }
    }

    public synchronized void b() {
        boolean z10 = false;
        while (!this.f3607b) {
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
        z10 = this.f3607b;
        this.f3607b = false;
        return z10;
    }

    public synchronized boolean d() {
        return this.f3607b;
    }

    public synchronized boolean e() {
        if (this.f3607b) {
            return false;
        }
        this.f3607b = true;
        notifyAll();
        return true;
    }

    public k(h hVar) {
        this.f3606a = hVar;
    }
}
