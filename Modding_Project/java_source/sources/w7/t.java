package w7;
/* compiled from: Lazy.java */
/* loaded from: classes5.dex */
public class t<T> implements w8.b<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f69789c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f69790a = f69789c;

    /* renamed from: b  reason: collision with root package name */
    private volatile w8.b<T> f69791b;

    public t(w8.b<T> bVar) {
        this.f69791b = bVar;
    }

    @Override // w8.b
    public T get() {
        T t10 = (T) this.f69790a;
        Object obj = f69789c;
        if (t10 == obj) {
            synchronized (this) {
                try {
                    t10 = this.f69790a;
                    if (t10 == obj) {
                        t10 = this.f69791b.get();
                        this.f69790a = t10;
                        this.f69791b = null;
                    }
                } finally {
                }
            }
        }
        return t10;
    }
}
