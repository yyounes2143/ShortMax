package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.Map;
/* compiled from: EncodedMemoryCacheProducer.java */
/* loaded from: classes3.dex */
public class z implements b1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    private final r3.w<f2.a, PooledByteBuffer> f15995a;

    /* renamed from: b  reason: collision with root package name */
    private final r3.j f15996b;

    /* renamed from: c  reason: collision with root package name */
    private final b1<y3.k> f15997c;

    /* compiled from: EncodedMemoryCacheProducer.java */
    /* loaded from: classes3.dex */
    private static class a extends u<y3.k, y3.k> {

        /* renamed from: c  reason: collision with root package name */
        private final r3.w<f2.a, PooledByteBuffer> f15998c;

        /* renamed from: d  reason: collision with root package name */
        private final f2.a f15999d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f16000e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f16001f;

        public a(n<y3.k> nVar, r3.w<f2.a, PooledByteBuffer> wVar, f2.a aVar, boolean z10, boolean z11) {
            super(nVar);
            this.f15998c = wVar;
            this.f15999d = aVar;
            this.f16000e = z10;
            this.f16001f = z11;
        }

        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: p */
        public void h(y3.k kVar, int i10) {
            o2.a<PooledByteBuffer> aVar;
            try {
                if (f4.b.d()) {
                    f4.b.a("EncodedMemoryCacheProducer#onNewResultImpl");
                }
                if (!c.e(i10) && kVar != null && !c.l(i10, 10) && kVar.q() != com.facebook.imageformat.c.f15620d) {
                    o2.a<PooledByteBuffer> l10 = kVar.l();
                    if (l10 != null) {
                        if (this.f16001f && this.f16000e) {
                            aVar = this.f15998c.d(this.f15999d, l10);
                        } else {
                            aVar = null;
                        }
                        o2.a.r(l10);
                        if (aVar != null) {
                            y3.k kVar2 = new y3.k(aVar);
                            kVar2.k(kVar);
                            o2.a.r(aVar);
                            o().c(1.0f);
                            o().b(kVar2, i10);
                            y3.k.i(kVar2);
                            if (f4.b.d()) {
                                f4.b.b();
                                return;
                            }
                            return;
                        }
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

    public z(r3.w<f2.a, PooledByteBuffer> wVar, r3.j jVar, b1<y3.k> b1Var) {
        this.f15995a = wVar;
        this.f15996b = jVar;
        this.f15997c = b1Var;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        o2.a<PooledByteBuffer> aVar;
        Map<String, String> map;
        try {
            if (f4.b.d()) {
                f4.b.a("EncodedMemoryCacheProducer#produceResults");
            }
            e1 l10 = c1Var.l();
            l10.b(c1Var, "EncodedMemoryCacheProducer");
            f2.a b10 = this.f15996b.b(c1Var.o(), c1Var.d());
            Map<String, String> map2 = null;
            if (c1Var.o().z(4)) {
                aVar = this.f15995a.get(b10);
            } else {
                aVar = null;
            }
            if (aVar != null) {
                y3.k kVar = new y3.k(aVar);
                if (l10.f(c1Var, "EncodedMemoryCacheProducer")) {
                    map2 = ImmutableMap.of("cached_value_found", "true");
                }
                l10.j(c1Var, "EncodedMemoryCacheProducer", map2);
                l10.a(c1Var, "EncodedMemoryCacheProducer", true);
                c1Var.s("memory_encoded");
                nVar.c(1.0f);
                nVar.b(kVar, 1);
                y3.k.i(kVar);
                o2.a.r(aVar);
                if (f4.b.d()) {
                    f4.b.b();
                }
            } else if (c1Var.v().getValue() >= ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue()) {
                if (l10.f(c1Var, "EncodedMemoryCacheProducer")) {
                    map = ImmutableMap.of("cached_value_found", "false");
                } else {
                    map = null;
                }
                l10.j(c1Var, "EncodedMemoryCacheProducer", map);
                l10.a(c1Var, "EncodedMemoryCacheProducer", false);
                c1Var.q("memory_encoded", "nil-result");
                nVar.b(null, 1);
                o2.a.r(aVar);
                if (f4.b.d()) {
                    f4.b.b();
                }
            } else {
                a aVar2 = new a(nVar, this.f15995a, b10, c1Var.o().z(8), c1Var.k().n().D());
                if (l10.f(c1Var, "EncodedMemoryCacheProducer")) {
                    map2 = ImmutableMap.of("cached_value_found", "false");
                }
                l10.j(c1Var, "EncodedMemoryCacheProducer", map2);
                this.f15997c.b(aVar2, c1Var);
                o2.a.r(aVar);
                if (f4.b.d()) {
                    f4.b.b();
                }
            }
        } catch (Throwable th2) {
            if (f4.b.d()) {
                f4.b.b();
            }
            throw th2;
        }
    }
}
