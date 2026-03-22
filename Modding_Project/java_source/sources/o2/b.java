package o2;

import com.facebook.common.references.SharedReference;
import o2.a;
/* compiled from: DefaultCloseableReference.java */
/* loaded from: classes3.dex */
public class b<T> extends a<T> {
    private b(SharedReference<T> sharedReference, a.c cVar, Throwable th2) {
        super(sharedReference, cVar, th2);
    }

    protected void finalize() throws Throwable {
        String name;
        try {
            synchronized (this) {
                if (this.f63080a) {
                    super.finalize();
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
                l2.a.z("DefaultCloseableReference", "Finalized without closing: %x %x (type = %s)", valueOf, valueOf2, name);
                a.c cVar = this.f63082c;
                if (cVar != null) {
                    cVar.b(this.f63081b, this.f63083d);
                }
                close();
                super.finalize();
            }
        } catch (Throwable th2) {
            super.finalize();
            throw th2;
        }
    }

    @Override // o2.a
    /* renamed from: l */
    public a<T> clone() {
        Throwable th2;
        k2.h.i(u());
        SharedReference<T> sharedReference = this.f63081b;
        a.c cVar = this.f63082c;
        if (this.f63083d != null) {
            th2 = new Throwable();
        } else {
            th2 = null;
        }
        return new b(sharedReference, cVar, th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(T t10, h<T> hVar, a.c cVar, Throwable th2) {
        super(t10, hVar, cVar, th2, true);
    }
}
