package nu;

import ku.c;
import ku.g;
import ku.i;
/* compiled from: SingleToObservable.java */
/* loaded from: classes8.dex */
public final class e<T> implements c.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final g.a<T> f63069a;

    public e(g.a<T> aVar) {
        this.f63069a = aVar;
    }

    @Override // mu.b
    /* renamed from: b */
    public void a(i<? super T> iVar) {
        d dVar = new d(iVar);
        iVar.c(dVar);
        this.f63069a.a(dVar);
    }
}
