package retrofit2.adapter.rxjava;

import fu.c0;
import ku.c;
import ku.i;
import rx.exceptions.CompositeException;
import rx.exceptions.OnCompletedFailedException;
import rx.exceptions.OnErrorFailedException;
import rx.exceptions.OnErrorNotImplementedException;
/* compiled from: BodyOnSubscribe.java */
/* loaded from: classes8.dex */
final class a<T> implements c.a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final c.a<c0<T>> f65824a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BodyOnSubscribe.java */
    /* renamed from: retrofit2.adapter.rxjava.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class C0916a<R> extends i<c0<R>> {

        /* renamed from: e  reason: collision with root package name */
        private final i<? super R> f65825e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f65826f;

        C0916a(i<? super R> iVar) {
            super(iVar);
            this.f65825e = iVar;
        }

        @Override // ku.d
        public void a() {
            if (!this.f65826f) {
                this.f65825e.a();
            }
        }

        @Override // ku.d
        /* renamed from: j */
        public void b(c0<R> c0Var) {
            if (c0Var.d()) {
                this.f65825e.b(c0Var.a());
                return;
            }
            this.f65826f = true;
            HttpException httpException = new HttpException(c0Var);
            try {
                this.f65825e.onError(httpException);
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
                qu.f.c().b().a(new CompositeException(httpException, th2));
            }
        }

        @Override // ku.d
        public void onError(Throwable th2) {
            if (!this.f65826f) {
                this.f65825e.onError(th2);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a Retrofit bug with the full stacktrace.");
            assertionError.initCause(th2);
            qu.f.c().b().a(assertionError);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(c.a<c0<T>> aVar) {
        this.f65824a = aVar;
    }

    @Override // mu.b
    /* renamed from: b */
    public void a(i<? super T> iVar) {
        this.f65824a.a(new C0916a(iVar));
    }
}
