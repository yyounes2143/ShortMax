package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.producers.DiskCacheDecision;
import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: DiskCacheWriteProducer.java */
/* loaded from: classes3.dex */
public class w implements b1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    private final k2.k<t3.c> f15963a;

    /* renamed from: b  reason: collision with root package name */
    private final r3.j f15964b;

    /* renamed from: c  reason: collision with root package name */
    private final b1<y3.k> f15965c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiskCacheWriteProducer.java */
    /* loaded from: classes3.dex */
    public static class a extends u<y3.k, y3.k> {

        /* renamed from: c  reason: collision with root package name */
        private final c1 f15966c;

        /* renamed from: d  reason: collision with root package name */
        private final k2.k<t3.c> f15967d;

        /* renamed from: e  reason: collision with root package name */
        private final r3.j f15968e;

        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: p */
        public void h(y3.k kVar, int i10) {
            this.f15966c.l().b(this.f15966c, "DiskCacheWriteProducer");
            if (!c.e(i10) && kVar != null && !c.l(i10, 10) && kVar.q() != com.facebook.imageformat.c.f15620d) {
                ImageRequest o10 = this.f15966c.o();
                f2.a b10 = this.f15968e.b(o10, this.f15966c.d());
                t3.c cVar = this.f15967d.get();
                r3.i a10 = DiskCacheDecision.a(o10, cVar.a(), cVar.b(), cVar.c());
                if (a10 == null) {
                    e1 l10 = this.f15966c.l();
                    c1 c1Var = this.f15966c;
                    l10.k(c1Var, "DiskCacheWriteProducer", new DiskCacheDecision.DiskCacheDecisionNoDiskCacheChosenException("Got no disk cache for CacheChoice: " + Integer.valueOf(o10.d().ordinal()).toString()), null);
                    o().b(kVar, i10);
                    return;
                }
                a10.m(b10, kVar);
                this.f15966c.l().j(this.f15966c, "DiskCacheWriteProducer", null);
                o().b(kVar, i10);
                return;
            }
            this.f15966c.l().j(this.f15966c, "DiskCacheWriteProducer", null);
            o().b(kVar, i10);
        }

        private a(n<y3.k> nVar, c1 c1Var, k2.k<t3.c> kVar, r3.j jVar) {
            super(nVar);
            this.f15966c = c1Var;
            this.f15967d = kVar;
            this.f15968e = jVar;
        }
    }

    public w(k2.k<t3.c> kVar, r3.j jVar, b1<y3.k> b1Var) {
        this.f15963a = kVar;
        this.f15964b = jVar;
        this.f15965c = b1Var;
    }

    private void c(n<y3.k> nVar, c1 c1Var) {
        if (c1Var.v().getValue() >= ImageRequest.RequestLevel.DISK_CACHE.getValue()) {
            c1Var.q("disk", "nil-result_write");
            nVar.b(null, 1);
            return;
        }
        if (c1Var.o().z(32)) {
            nVar = new a(nVar, c1Var, this.f15963a, this.f15964b);
        }
        this.f15965c.b(nVar, c1Var);
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        c(nVar, c1Var);
    }
}
