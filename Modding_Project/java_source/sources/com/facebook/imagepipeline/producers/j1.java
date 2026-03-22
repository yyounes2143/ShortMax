package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: SettableProducerContext.java */
/* loaded from: classes3.dex */
public class j1 extends e {
    public j1(ImageRequest imageRequest, c1 c1Var) {
        this(imageRequest, c1Var.getId(), c1Var.r(), c1Var.l(), c1Var.d(), c1Var.v(), c1Var.u(), c1Var.t(), c1Var.m(), c1Var.k());
    }

    public j1(ImageRequest imageRequest, String str, e1 e1Var, Object obj, ImageRequest.RequestLevel requestLevel, boolean z10, boolean z11, Priority priority, t3.t tVar) {
        super(imageRequest, str, e1Var, obj, requestLevel, z10, z11, priority, tVar);
    }

    public j1(ImageRequest imageRequest, String str, String str2, e1 e1Var, Object obj, ImageRequest.RequestLevel requestLevel, boolean z10, boolean z11, Priority priority, t3.t tVar) {
        super(imageRequest, str, str2, null, e1Var, obj, requestLevel, z10, z11, priority, tVar);
    }
}
