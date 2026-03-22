package nu;

import java.util.NoSuchElementException;
import ku.c;
import ku.g;
import ku.h;
import ku.i;
/* compiled from: SingleFromObservable.java */
/* loaded from: classes8.dex */
public final class c<T> implements g.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final c.a<T> f63064a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleFromObservable.java */
    /* loaded from: classes8.dex */
    public static final class a<T> extends i<T> {

        /* renamed from: e  reason: collision with root package name */
        final h<? super T> f63065e;

        /* renamed from: f  reason: collision with root package name */
        T f63066f;

        /* renamed from: g  reason: collision with root package name */
        int f63067g;

        a(h<? super T> hVar) {
            this.f63065e = hVar;
        }

        @Override // ku.d
        public void a() {
            int i10 = this.f63067g;
            if (i10 == 0) {
                this.f63065e.b(new NoSuchElementException());
            } else if (i10 == 1) {
                this.f63067g = 2;
                T t10 = this.f63066f;
                this.f63066f = null;
                this.f63065e.c(t10);
            }
        }

        @Override // ku.d
        public void b(T t10) {
            int i10 = this.f63067g;
            if (i10 == 0) {
                this.f63067g = 1;
                this.f63066f = t10;
            } else if (i10 == 1) {
                this.f63067g = 2;
                this.f63065e.b(new IndexOutOfBoundsException("The upstream produced more than one value"));
            }
        }

        @Override // ku.d
        public void onError(Throwable th2) {
            if (this.f63067g == 2) {
                qu.c.f(th2);
                return;
            }
            this.f63066f = null;
            this.f63065e.b(th2);
        }
    }

    public c(c.a<T> aVar) {
        this.f63064a = aVar;
    }

    @Override // mu.b
    /* renamed from: b */
    public void a(h<? super T> hVar) {
        a aVar = new a(hVar);
        hVar.a(aVar);
        this.f63064a.a(aVar);
    }
}
