package retrofit2.adapter.rxjava;

import fu.c0;
import java.util.concurrent.atomic.AtomicInteger;
import ku.i;
import ku.j;
import rx.exceptions.CompositeException;
import rx.exceptions.OnCompletedFailedException;
import rx.exceptions.OnErrorFailedException;
import rx.exceptions.OnErrorNotImplementedException;
/* loaded from: classes8.dex */
final class CallArbiter<T> extends AtomicInteger implements j, ku.e {

    /* renamed from: a  reason: collision with root package name */
    private final fu.d<T> f65820a;

    /* renamed from: b  reason: collision with root package name */
    private final i<? super c0<T>> f65821b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f65822c;

    /* renamed from: d  reason: collision with root package name */
    private volatile c0<T> f65823d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallArbiter(fu.d<T> dVar, i<? super c0<T>> iVar) {
        super(0);
        this.f65820a = dVar;
        this.f65821b = iVar;
    }

    private void b(c0<T> c0Var) {
        try {
            if (!d()) {
                this.f65821b.b(c0Var);
            }
            try {
                if (!d()) {
                    this.f65821b.a();
                }
            } catch (OnCompletedFailedException e10) {
                e = e10;
                qu.f.c().b().a(e);
            } catch (OnErrorFailedException e11) {
                e = e11;
                qu.f.c().b().a(e);
            } catch (OnErrorNotImplementedException e12) {
                e = e12;
                qu.f.c().b().a(e);
            } catch (Throwable th2) {
                lu.a.d(th2);
                qu.f.c().b().a(th2);
            }
        } catch (OnCompletedFailedException e13) {
            e = e13;
            qu.f.c().b().a(e);
        } catch (OnErrorFailedException e14) {
            e = e14;
            qu.f.c().b().a(e);
        } catch (OnErrorNotImplementedException e15) {
            e = e15;
            qu.f.c().b().a(e);
        } catch (Throwable th3) {
            lu.a.d(th3);
            try {
                this.f65821b.onError(th3);
            } catch (OnCompletedFailedException e16) {
                e = e16;
                qu.f.c().b().a(e);
            } catch (OnErrorFailedException e17) {
                e = e17;
                qu.f.c().b().a(e);
            } catch (OnErrorNotImplementedException e18) {
                e = e18;
                qu.f.c().b().a(e);
            } catch (Throwable th4) {
                lu.a.d(th4);
                qu.f.c().b().a(new CompositeException(th3, th4));
            }
        }
    }

    @Override // ku.j
    public boolean d() {
        return this.f65822c;
    }

    @Override // ku.j
    public void e() {
        this.f65822c = true;
        this.f65820a.cancel();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(Throwable th2) {
        set(3);
        if (!d()) {
            try {
                this.f65821b.onError(th2);
            } catch (OnCompletedFailedException e10) {
                e = e10;
                qu.f.c().b().a(e);
            } catch (OnErrorFailedException e11) {
                e = e11;
                qu.f.c().b().a(e);
            } catch (OnErrorNotImplementedException e12) {
                e = e12;
                qu.f.c().b().a(e);
            } catch (Throwable th3) {
                lu.a.d(th3);
                qu.f.c().b().a(new CompositeException(th2, th3));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(c0<T> c0Var) {
        while (true) {
            int i10 = get();
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2 && i10 != 3) {
                        throw new IllegalStateException("Unknown state: " + i10);
                    }
                    throw new AssertionError();
                } else if (compareAndSet(1, 3)) {
                    b(c0Var);
                    return;
                }
            } else {
                this.f65823d = c0Var;
                if (compareAndSet(0, 2)) {
                    return;
                }
            }
        }
    }

    @Override // ku.e
    public void request(long j10) {
        if (j10 == 0) {
            return;
        }
        while (true) {
            int i10 = get();
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            throw new IllegalStateException("Unknown state: " + i10);
                        }
                        return;
                    } else if (compareAndSet(2, 3)) {
                        b(this.f65823d);
                        return;
                    }
                } else {
                    return;
                }
            } else if (compareAndSet(0, 1)) {
                return;
            }
        }
    }
}
