package va;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import ua.f;
import ua.h;
/* loaded from: classes5.dex */
public final class e<TResult> extends f<TResult> {

    /* renamed from: b  reason: collision with root package name */
    private boolean f68863b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f68864c;

    /* renamed from: d  reason: collision with root package name */
    private TResult f68865d;

    /* renamed from: e  reason: collision with root package name */
    private Exception f68866e;

    /* renamed from: a  reason: collision with root package name */
    private final Object f68862a = new Object();

    /* renamed from: f  reason: collision with root package name */
    private List<ua.b<TResult>> f68867f = new ArrayList();

    private f<TResult> h(ua.b<TResult> bVar) {
        boolean o10;
        synchronized (this.f68862a) {
            try {
                o10 = o();
                if (!o10) {
                    this.f68867f.add(bVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (o10) {
            bVar.onComplete(this);
        }
        return this;
    }

    private void n() {
        synchronized (this.f68862a) {
            for (ua.b<TResult> bVar : this.f68867f) {
                try {
                    bVar.onComplete(this);
                } catch (RuntimeException e10) {
                    throw e10;
                } catch (Exception e11) {
                    throw new RuntimeException(e11);
                }
            }
            this.f68867f = null;
        }
    }

    @Override // ua.f
    public final f<TResult> a(ua.c<TResult> cVar) {
        return k(h.a(), cVar);
    }

    @Override // ua.f
    public final f<TResult> b(ua.d dVar) {
        return l(h.a(), dVar);
    }

    @Override // ua.f
    public final f<TResult> c(ua.e<TResult> eVar) {
        return m(h.a(), eVar);
    }

    @Override // ua.f
    public final Exception d() {
        Exception exc;
        synchronized (this.f68862a) {
            exc = this.f68866e;
        }
        return exc;
    }

    @Override // ua.f
    public final TResult e() {
        TResult tresult;
        synchronized (this.f68862a) {
            try {
                if (this.f68866e == null) {
                    tresult = this.f68865d;
                } else {
                    throw new RuntimeException(this.f68866e);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return tresult;
    }

    @Override // ua.f
    public final boolean f() {
        return this.f68864c;
    }

    @Override // ua.f
    public final boolean g() {
        boolean z10;
        synchronized (this.f68862a) {
            try {
                if (this.f68863b && !f() && this.f68866e == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } finally {
            }
        }
        return z10;
    }

    public final void i(Exception exc) {
        synchronized (this.f68862a) {
            try {
                if (this.f68863b) {
                    return;
                }
                this.f68863b = true;
                this.f68866e = exc;
                this.f68862a.notifyAll();
                n();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void j(TResult tresult) {
        synchronized (this.f68862a) {
            try {
                if (this.f68863b) {
                    return;
                }
                this.f68863b = true;
                this.f68865d = tresult;
                this.f68862a.notifyAll();
                n();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final f<TResult> k(Executor executor, ua.c<TResult> cVar) {
        return h(new b(executor, cVar));
    }

    public final f<TResult> l(Executor executor, ua.d dVar) {
        return h(new c(executor, dVar));
    }

    public final f<TResult> m(Executor executor, ua.e<TResult> eVar) {
        return h(new d(executor, eVar));
    }

    public final boolean o() {
        boolean z10;
        synchronized (this.f68862a) {
            z10 = this.f68863b;
        }
        return z10;
    }
}
