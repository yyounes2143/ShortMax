package au;

import java.util.logging.Level;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BackgroundPoster.java */
/* loaded from: classes8.dex */
public final class b implements Runnable, k {

    /* renamed from: a  reason: collision with root package name */
    private final j f2047a = new j();

    /* renamed from: b  reason: collision with root package name */
    private final c f2048b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f2049c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(c cVar) {
        this.f2048b = cVar;
    }

    @Override // au.k
    public void a(p pVar, Object obj) {
        i a10 = i.a(pVar, obj);
        synchronized (this) {
            try {
                this.f2047a.a(a10);
                if (!this.f2049c) {
                    this.f2049c = true;
                    this.f2048b.e().execute(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                try {
                    i c10 = this.f2047a.c(1000);
                    if (c10 == null) {
                        synchronized (this) {
                            c10 = this.f2047a.b();
                            if (c10 == null) {
                                this.f2049c = false;
                                this.f2049c = false;
                                return;
                            }
                        }
                    }
                    this.f2048b.h(c10);
                } catch (InterruptedException e10) {
                    f f10 = this.f2048b.f();
                    Level level = Level.WARNING;
                    f10.b(level, Thread.currentThread().getName() + " was interruppted", e10);
                    this.f2049c = false;
                    return;
                }
            } catch (Throwable th2) {
                this.f2049c = false;
                throw th2;
            }
        }
    }
}
