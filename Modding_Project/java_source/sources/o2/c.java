package o2;

import o2.a;
/* compiled from: FinalizerCloseableReference.java */
/* loaded from: classes3.dex */
public class c<T> extends a<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(T t10, h<T> hVar, a.c cVar, Throwable th2) {
        super(t10, hVar, cVar, th2, true);
    }

    protected void finalize() throws Throwable {
        String name;
        try {
            synchronized (this) {
                if (this.f63080a) {
                    return;
                }
                T f10 = this.f63081b.f();
                Integer valueOf = Integer.valueOf(System.identityHashCode(this));
                Integer valueOf2 = Integer.valueOf(System.identityHashCode(this.f63081b));
                if (f10 == null) {
                    name = null;
                } else {
                    name = f10.getClass().getName();
                }
                l2.a.z("FinalizerCloseableReference", "Finalized without closing: %x %x (type = %s)", valueOf, valueOf2, name);
                this.f63081b.d();
            }
        } finally {
            super.finalize();
        }
    }

    @Override // o2.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // o2.a
    /* renamed from: l */
    public a<T> clone() {
        return this;
    }
}
