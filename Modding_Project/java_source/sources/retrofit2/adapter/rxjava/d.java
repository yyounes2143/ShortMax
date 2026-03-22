package retrofit2.adapter.rxjava;

import fu.c0;
import ku.c;
import ku.i;
import rx.exceptions.CompositeException;
import rx.exceptions.OnCompletedFailedException;
import rx.exceptions.OnErrorFailedException;
import rx.exceptions.OnErrorNotImplementedException;
/* compiled from: ResultOnSubscribe.java */
/* loaded from: classes8.dex */
final class d<T> implements c.a<gu.a<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final c.a<c0<T>> f65831a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ResultOnSubscribe.java */
    /* loaded from: classes8.dex */
    public static class a<R> extends i<c0<R>> {

        /* renamed from: e  reason: collision with root package name */
        private final i<? super gu.a<R>> f65832e;

        a(i<? super gu.a<R>> iVar) {
            super(iVar);
            this.f65832e = iVar;
        }

        @Override // ku.d
        public void a() {
            this.f65832e.a();
        }

        @Override // ku.d
        /* renamed from: j */
        public void b(c0<R> c0Var) {
            this.f65832e.b(gu.a.b(c0Var));
        }

        @Override // ku.d
        public void onError(Throwable th2) {
            try {
                this.f65832e.b(gu.a.a(th2));
                this.f65832e.a();
            } catch (Throwable th3) {
                try {
                    this.f65832e.onError(th3);
                } catch (OnCompletedFailedException e10) {
                    e = e10;
                    qu.f.c().b().a(e);
                } catch (OnErrorFailedException e11) {
                    e = e11;
                    qu.f.c().b().a(e);
                } catch (OnErrorNotImplementedException e12) {
                    e = e12;
                    qu.f.c().b().a(e);
                } catch (Throwable th4) {
                    lu.a.d(th4);
                    qu.f.c().b().a(new CompositeException(th3, th4));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c.a<c0<T>> aVar) {
        this.f65831a = aVar;
    }

    @Override // mu.b
    /* renamed from: b */
    public void a(i<? super gu.a<T>> iVar) {
        this.f65831a.a(new a(iVar));
    }
}
