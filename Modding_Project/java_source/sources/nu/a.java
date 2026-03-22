package nu;

import java.util.NoSuchElementException;
import ku.g;
import ku.h;
import ku.i;
/* compiled from: OnSubscribeSingle.java */
/* loaded from: classes8.dex */
public class a<T> implements g.a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final ku.c<T> f63046a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OnSubscribeSingle.java */
    /* renamed from: nu.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0880a extends i<T> {

        /* renamed from: e  reason: collision with root package name */
        private boolean f63047e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f63048f;

        /* renamed from: g  reason: collision with root package name */
        private T f63049g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ h f63050h;

        C0880a(h hVar) {
            this.f63050h = hVar;
        }

        @Override // ku.d
        public void a() {
            if (!this.f63047e) {
                if (this.f63048f) {
                    this.f63050h.c(this.f63049g);
                } else {
                    this.f63050h.b(new NoSuchElementException("Observable emitted no items"));
                }
            }
        }

        @Override // ku.d
        public void b(T t10) {
            if (this.f63048f) {
                this.f63047e = true;
                this.f63050h.b(new IllegalArgumentException("Observable emitted too many elements"));
                e();
                return;
            }
            this.f63048f = true;
            this.f63049g = t10;
        }

        @Override // ku.i
        public void g() {
            h(2L);
        }

        @Override // ku.d
        public void onError(Throwable th2) {
            this.f63050h.b(th2);
            e();
        }
    }

    public a(ku.c<T> cVar) {
        this.f63046a = cVar;
    }

    public static <T> a<T> c(ku.c<T> cVar) {
        return new a<>(cVar);
    }

    @Override // mu.b
    /* renamed from: b */
    public void a(h<? super T> hVar) {
        C0880a c0880a = new C0880a(hVar);
        hVar.a(c0880a);
        this.f63046a.g(c0880a);
    }
}
