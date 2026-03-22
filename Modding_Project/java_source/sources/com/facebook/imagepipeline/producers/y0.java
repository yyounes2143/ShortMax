package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.Map;
/* compiled from: PostprocessedBitmapMemoryCacheProducer.java */
/* loaded from: classes3.dex */
public class y0 implements b1<o2.a<y3.e>> {

    /* renamed from: a  reason: collision with root package name */
    private final r3.w<f2.a, y3.e> f15988a;

    /* renamed from: b  reason: collision with root package name */
    private final r3.j f15989b;

    /* renamed from: c  reason: collision with root package name */
    private final b1<o2.a<y3.e>> f15990c;

    /* compiled from: PostprocessedBitmapMemoryCacheProducer.java */
    /* loaded from: classes3.dex */
    public static class a extends u<o2.a<y3.e>, o2.a<y3.e>> {

        /* renamed from: c  reason: collision with root package name */
        private final f2.a f15991c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f15992d;

        /* renamed from: e  reason: collision with root package name */
        private final r3.w<f2.a, y3.e> f15993e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f15994f;

        public a(n<o2.a<y3.e>> nVar, f2.a aVar, boolean z10, r3.w<f2.a, y3.e> wVar, boolean z11) {
            super(nVar);
            this.f15991c = aVar;
            this.f15992d = z10;
            this.f15993e = wVar;
            this.f15994f = z11;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: p */
        public void h(o2.a<y3.e> aVar, int i10) {
            o2.a<y3.e> aVar2 = null;
            if (aVar == null) {
                if (c.d(i10)) {
                    o().b(null, i10);
                }
            } else if (c.e(i10) && !this.f15992d) {
            } else {
                if (this.f15994f) {
                    aVar2 = this.f15993e.d(this.f15991c, aVar);
                }
                try {
                    o().c(1.0f);
                    n<o2.a<y3.e>> o10 = o();
                    if (aVar2 != null) {
                        aVar = aVar2;
                    }
                    o10.b(aVar, i10);
                } finally {
                    o2.a.r(aVar2);
                }
            }
        }
    }

    public y0(r3.w<f2.a, y3.e> wVar, r3.j jVar, b1<o2.a<y3.e>> b1Var) {
        this.f15988a = wVar;
        this.f15989b = jVar;
        this.f15990c = b1Var;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<o2.a<y3.e>> nVar, c1 c1Var) {
        o2.a<y3.e> aVar;
        e1 l10 = c1Var.l();
        ImageRequest o10 = c1Var.o();
        Object d10 = c1Var.d();
        e4.b m10 = o10.m();
        if (m10 != null && m10.b() != null) {
            l10.b(c1Var, c());
            f2.a a10 = this.f15989b.a(o10, d10);
            Map<String, String> map = null;
            if (c1Var.o().z(1)) {
                aVar = this.f15988a.get(a10);
            } else {
                aVar = null;
            }
            if (aVar != null) {
                String c10 = c();
                if (l10.f(c1Var, c())) {
                    map = ImmutableMap.of("cached_value_found", "true");
                }
                l10.j(c1Var, c10, map);
                l10.a(c1Var, "PostprocessedBitmapMemoryCacheProducer", true);
                c1Var.q("memory_bitmap", "postprocessed");
                nVar.c(1.0f);
                nVar.b(aVar, 1);
                aVar.close();
                return;
            }
            a aVar2 = new a(nVar, a10, m10 instanceof e4.c, this.f15988a, c1Var.o().z(2));
            String c11 = c();
            if (l10.f(c1Var, c())) {
                map = ImmutableMap.of("cached_value_found", "false");
            }
            l10.j(c1Var, c11, map);
            this.f15990c.b(aVar2, c1Var);
            return;
        }
        this.f15990c.b(nVar, c1Var);
    }

    protected String c() {
        return "PostprocessedBitmapMemoryCacheProducer";
    }
}
