package l9;
/* compiled from: DoubleCheck.java */
/* loaded from: classes5.dex */
public final class a<T> implements e<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f62102c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile e<T> f62103a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f62104b = f62102c;

    private a(e<T> eVar) {
        this.f62103a = eVar;
    }

    public static <P extends e<T>, T> e<T> a(P p10) {
        d.b(p10);
        if (p10 instanceof a) {
            return p10;
        }
        return new a(p10);
    }

    private static Object b(Object obj, Object obj2) {
        if (obj != f62102c && obj != obj2) {
            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
        }
        return obj2;
    }

    @Override // ls.a
    public T get() {
        T t10 = (T) this.f62104b;
        Object obj = f62102c;
        if (t10 == obj) {
            synchronized (this) {
                try {
                    t10 = this.f62104b;
                    if (t10 == obj) {
                        t10 = this.f62103a.get();
                        this.f62104b = b(this.f62104b, t10);
                        this.f62103a = null;
                    }
                } finally {
                }
            }
        }
        return t10;
    }
}
