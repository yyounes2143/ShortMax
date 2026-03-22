package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
/* compiled from: BitmapPrepareProducer.java */
/* loaded from: classes3.dex */
public class j implements b1<o2.a<y3.e>> {

    /* renamed from: a  reason: collision with root package name */
    private final b1<o2.a<y3.e>> f15815a;

    /* renamed from: b  reason: collision with root package name */
    private final int f15816b;

    /* renamed from: c  reason: collision with root package name */
    private final int f15817c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f15818d;

    /* compiled from: BitmapPrepareProducer.java */
    /* loaded from: classes3.dex */
    private static class a extends u<o2.a<y3.e>, o2.a<y3.e>> {

        /* renamed from: c  reason: collision with root package name */
        private final int f15819c;

        /* renamed from: d  reason: collision with root package name */
        private final int f15820d;

        a(n<o2.a<y3.e>> nVar, int i10, int i11) {
            super(nVar);
            this.f15819c = i10;
            this.f15820d = i11;
        }

        private void p(o2.a<y3.e> aVar) {
            y3.e s10;
            Bitmap B0;
            int rowBytes;
            if (aVar == null || !aVar.u() || (s10 = aVar.s()) == null || s10.isClosed() || !(s10 instanceof y3.f) || (B0 = ((y3.f) s10).B0()) == null || (rowBytes = B0.getRowBytes() * B0.getHeight()) < this.f15819c || rowBytes > this.f15820d) {
                return;
            }
            B0.prepareToDraw();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: q */
        public void h(o2.a<y3.e> aVar, int i10) {
            p(aVar);
            o().b(aVar, i10);
        }
    }

    public j(b1<o2.a<y3.e>> b1Var, int i10, int i11, boolean z10) {
        boolean z11;
        if (i10 <= i11) {
            z11 = true;
        } else {
            z11 = false;
        }
        k2.h.b(Boolean.valueOf(z11));
        this.f15815a = (b1) k2.h.g(b1Var);
        this.f15816b = i10;
        this.f15817c = i11;
        this.f15818d = z10;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<o2.a<y3.e>> nVar, c1 c1Var) {
        if (c1Var.u() && !this.f15818d) {
            this.f15815a.b(nVar, c1Var);
        } else {
            this.f15815a.b(new a(nVar, this.f15816b, this.f15817c), c1Var);
        }
    }
}
