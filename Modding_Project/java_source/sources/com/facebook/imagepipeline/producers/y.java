package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: EncodedCacheKeyMultiplexProducer.java */
/* loaded from: classes3.dex */
public class y extends s0<Pair<f2.a, ImageRequest.RequestLevel>, y3.k> {

    /* renamed from: f  reason: collision with root package name */
    private final r3.j f15987f;

    public y(r3.j jVar, boolean z10, b1 b1Var) {
        super(b1Var, "EncodedCacheKeyMultiplexProducer", "multiplex_enc_cnt", z10);
        this.f15987f = jVar;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    /* renamed from: l */
    public y3.k g(y3.k kVar) {
        return y3.k.g(kVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.s0
    /* renamed from: m */
    public Pair<f2.a, ImageRequest.RequestLevel> j(c1 c1Var) {
        return Pair.create(this.f15987f.b(c1Var.o(), c1Var.d()), c1Var.v());
    }
}
