package u3;

import com.facebook.imagepipeline.producers.b1;
import com.facebook.imagepipeline.producers.c1;
import com.facebook.imagepipeline.producers.j1;
/* compiled from: CloseableProducerToDataSourceAdapter.java */
/* loaded from: classes3.dex */
public class c<T> extends a<o2.a<T>> {
    private c(b1<o2.a<T>> b1Var, j1 j1Var, a4.d dVar) {
        super(b1Var, j1Var, dVar);
    }

    public static <T> com.facebook.datasource.b<o2.a<T>> F(b1<o2.a<T>> b1Var, j1 j1Var, a4.d dVar) {
        if (f4.b.d()) {
            f4.b.a("CloseableProducerToDataSourceAdapter#create");
        }
        c cVar = new c(b1Var, j1Var, dVar);
        if (f4.b.d()) {
            f4.b.b();
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.datasource.AbstractDataSource
    /* renamed from: E */
    public void f(o2.a<T> aVar) {
        o2.a.r(aVar);
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.b
    /* renamed from: G */
    public o2.a<T> getResult() {
        return o2.a.p((o2.a) super.getResult());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // u3.a
    /* renamed from: H */
    public void D(o2.a<T> aVar, int i10, c1 c1Var) {
        super.D(o2.a.p(aVar), i10, c1Var);
    }
}
