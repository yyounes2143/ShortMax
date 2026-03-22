package ku;

import rx.exceptions.OnErrorFailedException;
import rx.internal.util.ScalarSynchronousObservable;
/* compiled from: Observable.java */
/* loaded from: classes8.dex */
public class c<T> {

    /* renamed from: a  reason: collision with root package name */
    final a<T> f62048a;

    /* compiled from: Observable.java */
    /* loaded from: classes8.dex */
    public interface a<T> extends mu.b<i<? super T>> {
    }

    /* compiled from: Observable.java */
    /* loaded from: classes8.dex */
    public interface b<R, T> extends mu.c<i<? super R>, i<? super T>> {
    }

    protected c(a<T> aVar) {
        this.f62048a = aVar;
    }

    @Deprecated
    public static <T> c<T> a(a<T> aVar) {
        return new c<>(qu.c.d(aVar));
    }

    public static <T> c<T> f(a<T> aVar) {
        return new c<>(qu.c.d(aVar));
    }

    public final c<T> b(f fVar) {
        return c(fVar, true);
    }

    public final c<T> c(f fVar, boolean z10) {
        if (this instanceof ScalarSynchronousObservable) {
            return ((ScalarSynchronousObservable) this).h(fVar);
        }
        return f(new nu.b(this, fVar, z10));
    }

    public ku.a d() {
        return ku.a.b(this);
    }

    public g<T> e() {
        return new g<>(nu.a.c(this));
    }

    public final j g(i<? super T> iVar) {
        try {
            iVar.g();
            qu.c.i(this, this.f62048a).a(iVar);
            return qu.c.h(iVar);
        } catch (Throwable th2) {
            lu.a.d(th2);
            try {
                iVar.onError(qu.c.g(th2));
                return ru.b.a();
            } catch (Throwable th3) {
                lu.a.d(th3);
                OnErrorFailedException onErrorFailedException = new OnErrorFailedException("Error occurred attempting to subscribe [" + th2.getMessage() + "] and then again while trying to pass to onError.", th3);
                qu.c.g(onErrorFailedException);
                throw onErrorFailedException;
            }
        }
    }
}
