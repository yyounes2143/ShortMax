package nu;

import ku.h;
import ku.i;
import rx.internal.producers.SingleProducer;
/* compiled from: SingleLiftObservableOperator.java */
/* loaded from: classes8.dex */
final class d<T> extends h<T> {

    /* renamed from: b  reason: collision with root package name */
    final i<? super T> f63068b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(i<? super T> iVar) {
        this.f63068b = iVar;
    }

    @Override // ku.h
    public void b(Throwable th2) {
        this.f63068b.onError(th2);
    }

    @Override // ku.h
    public void c(T t10) {
        this.f63068b.i(new SingleProducer(this.f63068b, t10));
    }
}
