package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: EncodedProbeProducer.java */
/* loaded from: classes3.dex */
public class a0 implements b1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    private final k2.k<t3.c> f15726a;

    /* renamed from: b  reason: collision with root package name */
    private final r3.j f15727b;

    /* renamed from: c  reason: collision with root package name */
    private final b1<y3.k> f15728c;

    /* renamed from: d  reason: collision with root package name */
    private final r3.d<f2.a> f15729d;

    /* renamed from: e  reason: collision with root package name */
    private final r3.d<f2.a> f15730e;

    /* compiled from: EncodedProbeProducer.java */
    /* loaded from: classes3.dex */
    private static class a extends u<y3.k, y3.k> {

        /* renamed from: c  reason: collision with root package name */
        private final c1 f15731c;

        /* renamed from: d  reason: collision with root package name */
        private final k2.k<t3.c> f15732d;

        /* renamed from: e  reason: collision with root package name */
        private final r3.j f15733e;

        /* renamed from: f  reason: collision with root package name */
        private final r3.d<f2.a> f15734f;

        /* renamed from: g  reason: collision with root package name */
        private final r3.d<f2.a> f15735g;

        public a(n<y3.k> nVar, c1 c1Var, k2.k<t3.c> kVar, r3.j jVar, r3.d<f2.a> dVar, r3.d<f2.a> dVar2) {
            super(nVar);
            this.f15731c = c1Var;
            this.f15732d = kVar;
            this.f15733e = jVar;
            this.f15734f = dVar;
            this.f15735g = dVar2;
        }

        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: p */
        public void h(y3.k kVar, int i10) {
            boolean z10;
            r3.i b10;
            try {
                if (f4.b.d()) {
                    f4.b.a("EncodedProbeProducer#onNewResultImpl");
                }
                if (!c.e(i10) && kVar != null && !c.l(i10, 10) && kVar.q() != com.facebook.imageformat.c.f15620d) {
                    ImageRequest o10 = this.f15731c.o();
                    f2.a b11 = this.f15733e.b(o10, this.f15731c.d());
                    this.f15734f.a(b11);
                    if ("memory_encoded".equals(this.f15731c.getExtra("origin"))) {
                        if (!this.f15735g.b(b11)) {
                            if (o10.d() == ImageRequest.CacheChoice.SMALL) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            t3.c cVar = this.f15732d.get();
                            if (z10) {
                                b10 = cVar.a();
                            } else {
                                b10 = cVar.b();
                            }
                            b10.e(b11);
                            this.f15735g.a(b11);
                        }
                    } else if ("disk".equals(this.f15731c.getExtra("origin"))) {
                        this.f15735g.a(b11);
                    }
                    o().b(kVar, i10);
                    if (f4.b.d()) {
                        f4.b.b();
                        return;
                    }
                    return;
                }
                o().b(kVar, i10);
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

    public a0(k2.k<t3.c> kVar, r3.j jVar, r3.d dVar, r3.d dVar2, b1<y3.k> b1Var) {
        this.f15726a = kVar;
        this.f15727b = jVar;
        this.f15729d = dVar;
        this.f15730e = dVar2;
        this.f15728c = b1Var;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        try {
            if (f4.b.d()) {
                f4.b.a("EncodedProbeProducer#produceResults");
            }
            e1 l10 = c1Var.l();
            l10.b(c1Var, c());
            a aVar = new a(nVar, c1Var, this.f15726a, this.f15727b, this.f15729d, this.f15730e);
            l10.j(c1Var, "EncodedProbeProducer", null);
            if (f4.b.d()) {
                f4.b.a("mInputProducer.produceResult");
            }
            this.f15728c.b(aVar, c1Var);
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
        return "EncodedProbeProducer";
    }
}
