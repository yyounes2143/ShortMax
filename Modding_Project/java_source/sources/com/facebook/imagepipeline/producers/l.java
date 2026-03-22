package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: BranchOnSeparateImagesProducer.java */
/* loaded from: classes3.dex */
public class l implements b1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    private final b1<y3.k> f15845a;

    /* renamed from: b  reason: collision with root package name */
    private final b1<y3.k> f15846b;

    /* compiled from: BranchOnSeparateImagesProducer.java */
    /* loaded from: classes3.dex */
    private class a extends u<y3.k, y3.k> {

        /* renamed from: c  reason: collision with root package name */
        private c1 f15847c;

        @Override // com.facebook.imagepipeline.producers.u, com.facebook.imagepipeline.producers.c
        protected void g(Throwable th2) {
            l.this.f15846b.b(o(), this.f15847c);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: p */
        public void h(y3.k kVar, int i10) {
            ImageRequest o10 = this.f15847c.o();
            boolean d10 = c.d(i10);
            boolean c10 = t1.c(kVar, o10.s());
            if (kVar != null && (c10 || o10.k())) {
                if (d10 && c10) {
                    o().b(kVar, i10);
                } else {
                    o().b(kVar, c.n(i10, 1));
                }
            }
            if (d10 && !c10 && !o10.j()) {
                y3.k.i(kVar);
                l.this.f15846b.b(o(), this.f15847c);
            }
        }

        private a(n<y3.k> nVar, c1 c1Var) {
            super(nVar);
            this.f15847c = c1Var;
        }
    }

    public l(b1<y3.k> b1Var, b1<y3.k> b1Var2) {
        this.f15845a = b1Var;
        this.f15846b = b1Var2;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        this.f15845a.b(new a(nVar, c1Var), c1Var);
    }
}
