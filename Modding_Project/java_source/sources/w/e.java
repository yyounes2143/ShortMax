package w;

import bolts.ExecutorException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* compiled from: Task.java */
/* loaded from: classes2.dex */
public class e<TResult> {

    /* renamed from: i  reason: collision with root package name */
    public static final ExecutorService f69571i = w.b.a();

    /* renamed from: j  reason: collision with root package name */
    private static final Executor f69572j = w.b.b();

    /* renamed from: k  reason: collision with root package name */
    public static final Executor f69573k = w.a.c();

    /* renamed from: l  reason: collision with root package name */
    private static e<?> f69574l = new e<>((Object) null);

    /* renamed from: m  reason: collision with root package name */
    private static e<Boolean> f69575m = new e<>(Boolean.TRUE);

    /* renamed from: n  reason: collision with root package name */
    private static e<Boolean> f69576n = new e<>(Boolean.FALSE);

    /* renamed from: o  reason: collision with root package name */
    private static e<?> f69577o = new e<>(true);

    /* renamed from: b  reason: collision with root package name */
    private boolean f69579b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f69580c;

    /* renamed from: d  reason: collision with root package name */
    private TResult f69581d;

    /* renamed from: e  reason: collision with root package name */
    private Exception f69582e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f69583f;

    /* renamed from: g  reason: collision with root package name */
    private g f69584g;

    /* renamed from: a  reason: collision with root package name */
    private final Object f69578a = new Object();

    /* renamed from: h  reason: collision with root package name */
    private List<w.d<TResult, Void>> f69585h = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public class a implements w.d<TResult, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f69586a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ w.d f69587b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Executor f69588c;

        a(f fVar, w.d dVar, Executor executor, w.c cVar) {
            this.f69586a = fVar;
            this.f69587b = dVar;
            this.f69588c = executor;
        }

        @Override // w.d
        /* renamed from: b */
        public Void a(e<TResult> eVar) {
            e.d(this.f69586a, this.f69587b, eVar, this.f69588c, null);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f69590a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ w.d f69591b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ e f69592c;

        b(w.c cVar, f fVar, w.d dVar, e eVar) {
            this.f69590a = fVar;
            this.f69591b = dVar;
            this.f69592c = eVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f69590a.d(this.f69591b.a(this.f69592c));
            } catch (CancellationException unused) {
                this.f69590a.b();
            } catch (Exception e10) {
                this.f69590a.c(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f69593a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Callable f69594b;

        c(w.c cVar, f fVar, Callable callable) {
            this.f69593a = fVar;
            this.f69594b = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f69593a.d(this.f69594b.call());
            } catch (CancellationException unused) {
                this.f69593a.b();
            } catch (Exception e10) {
                this.f69593a.c(e10);
            }
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes2.dex */
    public interface d {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e() {
    }

    public static <TResult> e<TResult> b(Callable<TResult> callable, Executor executor) {
        return c(callable, executor, null);
    }

    public static <TResult> e<TResult> c(Callable<TResult> callable, Executor executor, w.c cVar) {
        f fVar = new f();
        try {
            executor.execute(new c(cVar, fVar, callable));
        } catch (Exception e10) {
            fVar.c(new ExecutorException(e10));
        }
        return fVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void d(f<TContinuationResult> fVar, w.d<TResult, TContinuationResult> dVar, e<TResult> eVar, Executor executor, w.c cVar) {
        try {
            executor.execute(new b(cVar, fVar, dVar, eVar));
        } catch (Exception e10) {
            fVar.c(new ExecutorException(e10));
        }
    }

    public static <TResult> e<TResult> g(Exception exc) {
        f fVar = new f();
        fVar.c(exc);
        return fVar.a();
    }

    public static <TResult> e<TResult> h(TResult tresult) {
        if (tresult == null) {
            return (e<TResult>) f69574l;
        }
        if (tresult instanceof Boolean) {
            if (((Boolean) tresult).booleanValue()) {
                return (e<TResult>) f69575m;
            }
            return (e<TResult>) f69576n;
        }
        f fVar = new f();
        fVar.d(tresult);
        return fVar.a();
    }

    public static d k() {
        return null;
    }

    private void o() {
        synchronized (this.f69578a) {
            for (w.d<TResult, Void> dVar : this.f69585h) {
                try {
                    dVar.a(this);
                } catch (RuntimeException e10) {
                    throw e10;
                } catch (Exception e11) {
                    throw new RuntimeException(e11);
                }
            }
            this.f69585h = null;
        }
    }

    public <TContinuationResult> e<TContinuationResult> e(w.d<TResult, TContinuationResult> dVar) {
        return f(dVar, f69572j, null);
    }

    public <TContinuationResult> e<TContinuationResult> f(w.d<TResult, TContinuationResult> dVar, Executor executor, w.c cVar) {
        boolean m10;
        f fVar = new f();
        synchronized (this.f69578a) {
            try {
                m10 = m();
                if (!m10) {
                    this.f69585h.add(new a(fVar, dVar, executor, cVar));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (m10) {
            d(fVar, dVar, this, executor, cVar);
        }
        return fVar.a();
    }

    public Exception i() {
        Exception exc;
        synchronized (this.f69578a) {
            try {
                if (this.f69582e != null) {
                    this.f69583f = true;
                }
                exc = this.f69582e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return exc;
    }

    public TResult j() {
        TResult tresult;
        synchronized (this.f69578a) {
            tresult = this.f69581d;
        }
        return tresult;
    }

    public boolean l() {
        boolean z10;
        synchronized (this.f69578a) {
            z10 = this.f69580c;
        }
        return z10;
    }

    public boolean m() {
        boolean z10;
        synchronized (this.f69578a) {
            z10 = this.f69579b;
        }
        return z10;
    }

    public boolean n() {
        boolean z10;
        synchronized (this.f69578a) {
            if (i() != null) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean p() {
        synchronized (this.f69578a) {
            try {
                if (this.f69579b) {
                    return false;
                }
                this.f69579b = true;
                this.f69580c = true;
                this.f69578a.notifyAll();
                o();
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q(Exception exc) {
        synchronized (this.f69578a) {
            try {
                if (this.f69579b) {
                    return false;
                }
                this.f69579b = true;
                this.f69582e = exc;
                this.f69583f = false;
                this.f69578a.notifyAll();
                o();
                if (!this.f69583f) {
                    k();
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean r(TResult tresult) {
        synchronized (this.f69578a) {
            try {
                if (this.f69579b) {
                    return false;
                }
                this.f69579b = true;
                this.f69581d = tresult;
                this.f69578a.notifyAll();
                o();
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private e(TResult tresult) {
        r(tresult);
    }

    private e(boolean z10) {
        if (z10) {
            p();
        } else {
            r(null);
        }
    }
}
