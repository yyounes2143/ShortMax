package k2;
/* compiled from: Suppliers.java */
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public static final k<Boolean> f60583a = new b();

    /* renamed from: b  reason: collision with root package name */
    public static final k<Boolean> f60584b = new c();

    /* renamed from: c  reason: collision with root package name */
    public static final k<String> f60585c = new d();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Suppliers.java */
    /* loaded from: classes3.dex */
    class a<T> implements k<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f60586a;

        a(Object obj) {
            this.f60586a = obj;
        }

        @Override // k2.k
        public T get() {
            return (T) this.f60586a;
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes3.dex */
    class b implements k<Boolean> {
        b() {
        }

        @Override // k2.k
        /* renamed from: a */
        public Boolean get() {
            return Boolean.TRUE;
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes3.dex */
    class c implements k<Boolean> {
        c() {
        }

        @Override // k2.k
        /* renamed from: a */
        public Boolean get() {
            return Boolean.FALSE;
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes3.dex */
    class d implements k<String> {
        d() {
        }

        @Override // k2.k
        /* renamed from: a */
        public String get() {
            return "";
        }
    }

    public static <T> k<T> a(T t10) {
        return new a(t10);
    }
}
