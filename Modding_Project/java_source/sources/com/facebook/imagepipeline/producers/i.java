package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.Map;
/* compiled from: BitmapMemoryCacheProducer.java */
/* loaded from: classes3.dex */
public class i implements b1<o2.a<y3.e>> {

    /* renamed from: a  reason: collision with root package name */
    private final r3.w<f2.a, y3.e> f15787a;

    /* renamed from: b  reason: collision with root package name */
    private final r3.j f15788b;

    /* renamed from: c  reason: collision with root package name */
    private final b1<o2.a<y3.e>> f15789c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapMemoryCacheProducer.java */
    /* loaded from: classes3.dex */
    public class a extends u<o2.a<y3.e>, o2.a<y3.e>> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ f2.a f15790c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f15791d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(n nVar, f2.a aVar, boolean z10) {
            super(nVar);
            this.f15790c = aVar;
            this.f15791d = z10;
        }

        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: p */
        public void h(o2.a<y3.e> aVar, int i10) {
            o2.a<y3.e> aVar2;
            try {
                if (f4.b.d()) {
                    f4.b.a("BitmapMemoryCacheProducer#onNewResultImpl");
                }
                boolean d10 = c.d(i10);
                o2.a<y3.e> aVar3 = null;
                if (aVar == null) {
                    if (d10) {
                        o().b(null, i10);
                    }
                    if (f4.b.d()) {
                        f4.b.b();
                        return;
                    }
                    return;
                }
                if (!aVar.s().J0() && !c.m(i10, 8)) {
                    if (!d10 && (aVar2 = i.this.f15787a.get(this.f15790c)) != null) {
                        y3.p x02 = aVar.s().x0();
                        y3.p x03 = aVar2.s().x0();
                        if (!x03.a() && x03.c() < x02.c()) {
                            o2.a.r(aVar2);
                        } else {
                            o().b(aVar2, i10);
                            o2.a.r(aVar2);
                            if (f4.b.d()) {
                                f4.b.b();
                                return;
                            }
                            return;
                        }
                    }
                    if (this.f15791d) {
                        aVar3 = i.this.f15787a.d(this.f15790c, aVar);
                    }
                    if (d10) {
                        o().c(1.0f);
                    }
                    n<o2.a<y3.e>> o10 = o();
                    if (aVar3 != null) {
                        aVar = aVar3;
                    }
                    o10.b(aVar, i10);
                    o2.a.r(aVar3);
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

    public i(r3.w<f2.a, y3.e> wVar, r3.j jVar, b1<o2.a<y3.e>> b1Var) {
        this.f15787a = wVar;
        this.f15788b = jVar;
        this.f15789c = b1Var;
    }

    private static void f(y3.l lVar, c1 c1Var) {
        c1Var.putExtras(lVar.getExtras());
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<o2.a<y3.e>> nVar, c1 c1Var) {
        o2.a<y3.e> aVar;
        Map<String, String> map;
        Map<String, String> map2;
        try {
            if (f4.b.d()) {
                f4.b.a("BitmapMemoryCacheProducer#produceResults");
            }
            e1 l10 = c1Var.l();
            l10.b(c1Var, e());
            f2.a c10 = this.f15788b.c(c1Var.o(), c1Var.d());
            Map<String, String> map3 = null;
            if (c1Var.o().z(1)) {
                aVar = this.f15787a.get(c10);
            } else {
                aVar = null;
            }
            if (aVar != null) {
                f(aVar.s(), c1Var);
                boolean a10 = aVar.s().x0().a();
                if (a10) {
                    String e10 = e();
                    if (l10.f(c1Var, e())) {
                        map2 = ImmutableMap.of("cached_value_found", "true");
                    } else {
                        map2 = null;
                    }
                    l10.j(c1Var, e10, map2);
                    l10.a(c1Var, e(), true);
                    c1Var.q("memory_bitmap", d());
                    nVar.c(1.0f);
                }
                nVar.b(aVar, c.k(a10));
                aVar.close();
                if (a10) {
                    if (f4.b.d()) {
                        f4.b.b();
                        return;
                    }
                    return;
                }
            }
            if (c1Var.v().getValue() >= ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE.getValue()) {
                String e11 = e();
                if (l10.f(c1Var, e())) {
                    map = ImmutableMap.of("cached_value_found", "false");
                } else {
                    map = null;
                }
                l10.j(c1Var, e11, map);
                l10.a(c1Var, e(), false);
                c1Var.q("memory_bitmap", d());
                nVar.b(null, 1);
                if (f4.b.d()) {
                    f4.b.b();
                    return;
                }
                return;
            }
            n<o2.a<y3.e>> g10 = g(nVar, c10, c1Var.o().z(2));
            String e12 = e();
            if (l10.f(c1Var, e())) {
                map3 = ImmutableMap.of("cached_value_found", "false");
            }
            l10.j(c1Var, e12, map3);
            if (f4.b.d()) {
                f4.b.a("mInputProducer.produceResult");
            }
            this.f15789c.b(g10, c1Var);
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

    protected String d() {
        return "pipe_bg";
    }

    protected String e() {
        return "BitmapMemoryCacheProducer";
    }

    protected n<o2.a<y3.e>> g(n<o2.a<y3.e>> nVar, f2.a aVar, boolean z10) {
        return new a(nVar, aVar, z10);
    }
}
