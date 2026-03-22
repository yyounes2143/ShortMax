package com.facebook.imagepipeline.producers;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: BitmapProbeProducer.java */
/* loaded from: classes3.dex */
public class k implements b1<o2.a<y3.e>> {

    /* renamed from: a  reason: collision with root package name */
    private final r3.w<f2.a, PooledByteBuffer> f15821a;

    /* renamed from: b  reason: collision with root package name */
    private final k2.k<t3.c> f15822b;

    /* renamed from: c  reason: collision with root package name */
    private final r3.j f15823c;

    /* renamed from: d  reason: collision with root package name */
    private final b1<o2.a<y3.e>> f15824d;

    /* renamed from: e  reason: collision with root package name */
    private final r3.d<f2.a> f15825e;

    /* renamed from: f  reason: collision with root package name */
    private final r3.d<f2.a> f15826f;

    /* compiled from: BitmapProbeProducer.java */
    /* loaded from: classes3.dex */
    private static class a extends u<o2.a<y3.e>, o2.a<y3.e>> {

        /* renamed from: c  reason: collision with root package name */
        private final c1 f15827c;

        /* renamed from: d  reason: collision with root package name */
        private final r3.w<f2.a, PooledByteBuffer> f15828d;

        /* renamed from: e  reason: collision with root package name */
        private final k2.k<t3.c> f15829e;

        /* renamed from: f  reason: collision with root package name */
        private final r3.j f15830f;

        /* renamed from: g  reason: collision with root package name */
        private final r3.d<f2.a> f15831g;

        /* renamed from: h  reason: collision with root package name */
        private final r3.d<f2.a> f15832h;

        public a(n<o2.a<y3.e>> nVar, c1 c1Var, r3.w<f2.a, PooledByteBuffer> wVar, k2.k<t3.c> kVar, r3.j jVar, r3.d<f2.a> dVar, r3.d<f2.a> dVar2) {
            super(nVar);
            this.f15827c = c1Var;
            this.f15828d = wVar;
            this.f15829e = kVar;
            this.f15830f = jVar;
            this.f15831g = dVar;
            this.f15832h = dVar2;
        }

        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: p */
        public void h(o2.a<y3.e> aVar, int i10) {
            boolean z10;
            r3.i b10;
            try {
                if (f4.b.d()) {
                    f4.b.a("BitmapProbeProducer#onNewResultImpl");
                }
                if (!c.e(i10) && aVar != null && !c.l(i10, 8)) {
                    ImageRequest o10 = this.f15827c.o();
                    f2.a b11 = this.f15830f.b(o10, this.f15827c.d());
                    String str = (String) this.f15827c.getExtra("origin");
                    if (str != null && str.equals("memory_bitmap")) {
                        if (this.f15827c.k().n().E() && !this.f15831g.b(b11)) {
                            this.f15828d.a(b11);
                            this.f15831g.a(b11);
                        }
                        if (this.f15827c.k().n().C() && !this.f15832h.b(b11)) {
                            if (o10.d() == ImageRequest.CacheChoice.SMALL) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            t3.c cVar = this.f15829e.get();
                            if (z10) {
                                b10 = cVar.a();
                            } else {
                                b10 = cVar.b();
                            }
                            b10.e(b11);
                            this.f15832h.a(b11);
                        }
                    }
                    o().b(aVar, i10);
                    if (f4.b.d()) {
                        f4.b.b();
                        return;
                    }
                    return;
                }
                o().b(aVar, i10);
                if (f4.b.d()) {
                    f4.b.b();
                }
            } catch (Throwable th2) {
                if (f4.b.d()) {
                    f4.b.b();
                }
                throw th2;
            }
        }
    }

    public k(r3.w<f2.a, PooledByteBuffer> wVar, k2.k<t3.c> kVar, r3.j jVar, r3.d<f2.a> dVar, r3.d<f2.a> dVar2, b1<o2.a<y3.e>> b1Var) {
        this.f15821a = wVar;
        this.f15822b = kVar;
        this.f15823c = jVar;
        this.f15825e = dVar;
        this.f15826f = dVar2;
        this.f15824d = b1Var;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<o2.a<y3.e>> nVar, c1 c1Var) {
        try {
            if (f4.b.d()) {
                f4.b.a("BitmapProbeProducer#produceResults");
            }
            e1 l10 = c1Var.l();
            l10.b(c1Var, c());
            a aVar = new a(nVar, c1Var, this.f15821a, this.f15822b, this.f15823c, this.f15825e, this.f15826f);
            l10.j(c1Var, "BitmapProbeProducer", null);
            if (f4.b.d()) {
                f4.b.a("mInputProducer.produceResult");
            }
            this.f15824d.b(aVar, c1Var);
            if (f4.b.d()) {
                f4.b.b();
            }
            if (f4.b.d()) {
                f4.b.b();
            }
        } catch (Throwable th2) {
            if (f4.b.d()) {
                f4.b.b();
            }
            throw th2;
        }
    }

    protected String c() {
        return "BitmapProbeProducer";
    }
}
