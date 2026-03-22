package retrofit2.adapter.rxjava;

import fu.c0;
import ku.c;
import ku.i;
/* compiled from: CallEnqueueOnSubscribe.java */
/* loaded from: classes8.dex */
final class b<T> implements c.a<c0<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final fu.d<T> f65827a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CallEnqueueOnSubscribe.java */
    /* loaded from: classes8.dex */
    public class a implements fu.f<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CallArbiter f65828a;

        a(CallArbiter callArbiter) {
            this.f65828a = callArbiter;
        }

        @Override // fu.f
        public void a(fu.d<T> dVar, Throwable th2) {
            lu.a.d(th2);
            this.f65828a.f(th2);
        }

        @Override // fu.f
        public void b(fu.d<T> dVar, c0<T> c0Var) {
            this.f65828a.g(c0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(fu.d<T> dVar) {
        this.f65827a = dVar;
    }

    @Override // mu.b
    /* renamed from: b */
    public void a(i<? super c0<T>> iVar) {
        fu.d<T> clone = this.f65827a.clone();
        CallArbiter callArbiter = new CallArbiter(clone, iVar);
        iVar.c(callArbiter);
        iVar.i(callArbiter);
        clone.d(new a(callArbiter));
    }
}
