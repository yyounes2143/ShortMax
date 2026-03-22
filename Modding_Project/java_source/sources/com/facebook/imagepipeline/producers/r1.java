package com.facebook.imagepipeline.producers;
/* compiled from: ThumbnailBranchProducer.java */
/* loaded from: classes3.dex */
public class r1 implements b1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    private final s1<y3.k>[] f15921a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThumbnailBranchProducer.java */
    /* loaded from: classes3.dex */
    public class a extends u<y3.k, y3.k> {

        /* renamed from: c  reason: collision with root package name */
        private final c1 f15922c;

        /* renamed from: d  reason: collision with root package name */
        private final int f15923d;

        /* renamed from: e  reason: collision with root package name */
        private final s3.f f15924e;

        public a(n<y3.k> nVar, c1 c1Var, int i10) {
            super(nVar);
            this.f15922c = c1Var;
            this.f15923d = i10;
            this.f15924e = c1Var.o().s();
        }

        @Override // com.facebook.imagepipeline.producers.u, com.facebook.imagepipeline.producers.c
        protected void g(Throwable th2) {
            if (!r1.this.e(this.f15923d + 1, o(), this.f15922c)) {
                o().onFailure(th2);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: p */
        public void h(y3.k kVar, int i10) {
            if (kVar != null && (c.e(i10) || t1.c(kVar, this.f15924e))) {
                o().b(kVar, i10);
            } else if (c.d(i10)) {
                y3.k.i(kVar);
                if (!r1.this.e(this.f15923d + 1, o(), this.f15922c)) {
                    o().b(null, 1);
                }
            }
        }
    }

    public r1(s1<y3.k>... s1VarArr) {
        s1<y3.k>[] s1VarArr2 = (s1[]) k2.h.g(s1VarArr);
        this.f15921a = s1VarArr2;
        k2.h.e(0, s1VarArr2.length);
    }

    private int d(int i10, s3.f fVar) {
        while (true) {
            s1<y3.k>[] s1VarArr = this.f15921a;
            if (i10 < s1VarArr.length) {
                if (s1VarArr[i10].a(fVar)) {
                    return i10;
                }
                i10++;
            } else {
                return -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(int i10, n<y3.k> nVar, c1 c1Var) {
        int d10 = d(i10, c1Var.o().s());
        if (d10 == -1) {
            return false;
        }
        this.f15921a[d10].b(new a(nVar, c1Var, d10), c1Var);
        return true;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        if (c1Var.o().s() == null) {
            nVar.b(null, 1);
        } else if (!e(0, nVar, c1Var)) {
            nVar.b(null, 1);
        }
    }
}
