package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: BitmapMemoryCacheKeyMultiplexProducer.java */
/* loaded from: classes3.dex */
public class h extends s0<Pair<f2.a, ImageRequest.RequestLevel>, o2.a<y3.e>> {

    /* renamed from: f  reason: collision with root package name */
    private final r3.j f15781f;

    public h(r3.j jVar, b1 b1Var) {
        super(b1Var, "BitmapMemoryCacheKeyMultiplexProducer", "multiplex_bmp_cnt");
        this.f15781f = jVar;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    /* renamed from: l */
    public o2.a<y3.e> g(o2.a<y3.e> aVar) {
        return o2.a.p(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.s0
    /* renamed from: m */
    public Pair<f2.a, ImageRequest.RequestLevel> j(c1 c1Var) {
        return Pair.create(this.f15781f.c(c1Var.o(), c1Var.d()), c1Var.v());
    }
}
