package com.facebook.imagepipeline.producers;
/* compiled from: AddImageTransformMetaDataProducer.java */
/* loaded from: classes3.dex */
public class a implements b1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    private final b1<y3.k> f15725a;

    /* compiled from: AddImageTransformMetaDataProducer.java */
    /* renamed from: com.facebook.imagepipeline.producers.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private static class C0266a extends u<y3.k, y3.k> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: p */
        public void h(y3.k kVar, int i10) {
            if (kVar == null) {
                o().b(null, i10);
                return;
            }
            if (!y3.k.P(kVar)) {
                kVar.W();
            }
            o().b(kVar, i10);
        }

        private C0266a(n<y3.k> nVar) {
            super(nVar);
        }
    }

    public a(b1<y3.k> b1Var) {
        this.f15725a = b1Var;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        this.f15725a.b(new C0266a(nVar), c1Var);
    }
}
