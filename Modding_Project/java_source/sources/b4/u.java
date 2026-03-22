package b4;

import java.util.HashSet;
import java.util.Set;
/* compiled from: LruBucketsPoolBackend.java */
/* loaded from: classes3.dex */
public abstract class u<T> implements a0<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Set<T> f2254a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private final k<T> f2255b = new k<>();

    private T c(T t10) {
        if (t10 != null) {
            synchronized (this) {
                this.f2254a.remove(t10);
            }
        }
        return t10;
    }

    @Override // b4.a0
    public T a() {
        return c(this.f2255b.f());
    }

    @Override // b4.a0
    public T get(int i10) {
        return c(this.f2255b.a(i10));
    }

    @Override // b4.a0
    public void put(T t10) {
        boolean add;
        synchronized (this) {
            add = this.f2254a.add(t10);
        }
        if (add) {
            this.f2255b.e(b(t10), t10);
        }
    }
}
