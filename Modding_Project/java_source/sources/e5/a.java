package e5;
/* compiled from: DoubleCheck.java */
/* loaded from: classes4.dex */
public final class a<T> implements ls.a<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f50794c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile ls.a<T> f50795a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f50796b = f50794c;

    private a(ls.a<T> aVar) {
        this.f50795a = aVar;
    }

    public static <P extends ls.a<T>, T> ls.a<T> a(P p10) {
        d.b(p10);
        if (p10 instanceof a) {
            return p10;
        }
        return new a(p10);
    }

    private static Object b(Object obj, Object obj2) {
        if (obj != f50794c && obj != obj2) {
            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
        }
        return obj2;
    }

    @Override // ls.a
    public T get() {
        T t10 = (T) this.f50796b;
        Object obj = f50794c;
        if (t10 == obj) {
            synchronized (this) {
                try {
                    t10 = this.f50796b;
                    if (t10 == obj) {
                        t10 = this.f50795a.get();
                        this.f50796b = b(this.f50796b, t10);
                        this.f50795a = null;
                    }
                } finally {
                }
            }
        }
        return t10;
    }
}
