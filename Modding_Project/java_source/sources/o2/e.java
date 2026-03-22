package o2;
/* compiled from: NoOpCloseableReference.java */
/* loaded from: classes3.dex */
public class e<T> extends a<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public e(T t10) {
        super(t10, null, null, null, false);
    }

    @Override // o2.a
    public boolean u() {
        return true;
    }

    @Override // o2.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // o2.a
    /* renamed from: l */
    public a<T> clone() {
        return this;
    }

    @Override // o2.a
    public a<T> o() {
        return this;
    }
}
