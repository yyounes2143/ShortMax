package retrofit2.adapter.rxjava;

import fu.c0;
import ku.c;
import ku.i;
/* compiled from: CallExecuteOnSubscribe.java */
/* loaded from: classes8.dex */
final class c<T> implements c.a<c0<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final fu.d<T> f65830a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(fu.d<T> dVar) {
        this.f65830a = dVar;
    }

    @Override // mu.b
    /* renamed from: b */
    public void a(i<? super c0<T>> iVar) {
        fu.d<T> clone = this.f65830a.clone();
        CallArbiter callArbiter = new CallArbiter(clone, iVar);
        iVar.c(callArbiter);
        iVar.i(callArbiter);
        try {
            callArbiter.g(clone.execute());
        } catch (Throwable th2) {
            lu.a.d(th2);
            callArbiter.f(th2);
        }
    }
}
