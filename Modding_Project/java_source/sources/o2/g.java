package o2;

import com.facebook.common.references.SharedReference;
import o2.a;
/* compiled from: RefCountCloseableReference.java */
/* loaded from: classes3.dex */
public class g<T> extends a<T> {
    private g(SharedReference<T> sharedReference, a.c cVar, Throwable th2) {
        super(sharedReference, cVar, th2);
    }

    @Override // o2.a
    /* renamed from: l */
    public a<T> clone() {
        k2.h.i(u());
        return new g(this.f63081b, this.f63082c, this.f63083d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(T t10, h<T> hVar, a.c cVar, Throwable th2) {
        super(t10, hVar, cVar, th2, false);
    }
}
