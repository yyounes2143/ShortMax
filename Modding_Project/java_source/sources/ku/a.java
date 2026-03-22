package ku;
/* compiled from: Completable.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    static final a f62042b = new a(new b(), false);

    /* renamed from: c  reason: collision with root package name */
    static final a f62043c = new a(new c(), false);

    /* renamed from: a  reason: collision with root package name */
    private final d f62044a;

    /* compiled from: Completable.java */
    /* loaded from: classes8.dex */
    static class b implements d {
        b() {
        }

        @Override // mu.b
        /* renamed from: b */
        public void a(ku.b bVar) {
            bVar.b(ru.b.a());
            bVar.a();
        }
    }

    /* compiled from: Completable.java */
    /* loaded from: classes8.dex */
    static class c implements d {
        c() {
        }

        @Override // mu.b
        /* renamed from: b */
        public void a(ku.b bVar) {
            bVar.b(ru.b.a());
        }
    }

    /* compiled from: Completable.java */
    /* loaded from: classes8.dex */
    public interface d extends mu.b<ku.b> {
    }

    /* compiled from: Completable.java */
    /* loaded from: classes8.dex */
    public interface e extends mu.c<ku.b, ku.b> {
    }

    protected a(d dVar) {
        this.f62044a = qu.c.c(dVar);
    }

    public static a a(d dVar) {
        c(dVar);
        try {
            return new a(dVar);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            qu.c.f(th2);
            throw d(th2);
        }
    }

    public static a b(ku.c<?> cVar) {
        c(cVar);
        return a(new C0859a(cVar));
    }

    static <T> T c(T t10) {
        t10.getClass();
        return t10;
    }

    static NullPointerException d(Throwable th2) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th2);
        return nullPointerException;
    }

    protected a(d dVar, boolean z10) {
        this.f62044a = z10 ? qu.c.c(dVar) : dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Completable.java */
    /* renamed from: ku.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class C0859a implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ku.c f62045a;

        C0859a(ku.c cVar) {
            this.f62045a = cVar;
        }

        @Override // mu.b
        /* renamed from: b */
        public void a(ku.b bVar) {
            C0860a c0860a = new C0860a(bVar);
            bVar.b(c0860a);
            this.f62045a.g(c0860a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Completable.java */
        /* renamed from: ku.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0860a extends i<Object> {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ ku.b f62046e;

            C0860a(ku.b bVar) {
                this.f62046e = bVar;
            }

            @Override // ku.d
            public void a() {
                this.f62046e.a();
            }

            @Override // ku.d
            public void onError(Throwable th2) {
                this.f62046e.onError(th2);
            }

            @Override // ku.d
            public void b(Object obj) {
            }
        }
    }
}
