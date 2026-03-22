package nu;

import ku.c;
import ku.f;
import ku.i;
/* compiled from: OperatorSubscribeOn.java */
/* loaded from: classes8.dex */
public final class b<T> implements c.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final f f63052a;

    /* renamed from: b  reason: collision with root package name */
    final ku.c<T> f63053b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f63054c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OperatorSubscribeOn.java */
    /* loaded from: classes8.dex */
    public static final class a<T> extends i<T> implements mu.a {

        /* renamed from: e  reason: collision with root package name */
        final i<? super T> f63055e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f63056f;

        /* renamed from: g  reason: collision with root package name */
        final f.a f63057g;

        /* renamed from: h  reason: collision with root package name */
        ku.c<T> f63058h;

        /* renamed from: i  reason: collision with root package name */
        Thread f63059i;

        /* compiled from: OperatorSubscribeOn.java */
        /* renamed from: nu.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        class C0881a implements ku.e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ku.e f63060a;

            /* compiled from: OperatorSubscribeOn.java */
            /* renamed from: nu.b$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes8.dex */
            class C0882a implements mu.a {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ long f63062a;

                C0882a(long j10) {
                    this.f63062a = j10;
                }

                @Override // mu.a
                public void call() {
                    C0881a.this.f63060a.request(this.f63062a);
                }
            }

            C0881a(ku.e eVar) {
                this.f63060a = eVar;
            }

            @Override // ku.e
            public void request(long j10) {
                if (a.this.f63059i != Thread.currentThread()) {
                    a aVar = a.this;
                    if (aVar.f63056f) {
                        aVar.f63057g.a(new C0882a(j10));
                        return;
                    }
                }
                this.f63060a.request(j10);
            }
        }

        a(i<? super T> iVar, boolean z10, f.a aVar, ku.c<T> cVar) {
            this.f63055e = iVar;
            this.f63056f = z10;
            this.f63057g = aVar;
            this.f63058h = cVar;
        }

        @Override // ku.d
        public void a() {
            try {
                this.f63055e.a();
            } finally {
                this.f63057g.e();
            }
        }

        @Override // ku.d
        public void b(T t10) {
            this.f63055e.b(t10);
        }

        @Override // mu.a
        public void call() {
            ku.c<T> cVar = this.f63058h;
            this.f63058h = null;
            this.f63059i = Thread.currentThread();
            cVar.g(this);
        }

        @Override // ku.i
        public void i(ku.e eVar) {
            this.f63055e.i(new C0881a(eVar));
        }

        @Override // ku.d
        public void onError(Throwable th2) {
            try {
                this.f63055e.onError(th2);
            } finally {
                this.f63057g.e();
            }
        }
    }

    public b(ku.c<T> cVar, f fVar, boolean z10) {
        this.f63052a = fVar;
        this.f63053b = cVar;
        this.f63054c = z10;
    }

    @Override // mu.b
    /* renamed from: b */
    public void a(i<? super T> iVar) {
        f.a a10 = this.f63052a.a();
        a aVar = new a(iVar, this.f63054c, a10, this.f63053b);
        iVar.c(aVar);
        iVar.c(a10);
        a10.a(aVar);
    }
}
