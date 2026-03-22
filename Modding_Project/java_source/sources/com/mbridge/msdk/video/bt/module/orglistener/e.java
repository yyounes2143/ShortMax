package com.mbridge.msdk.video.bt.module.orglistener;

import com.mbridge.msdk.video.bt.module.MBTempContainer;
/* compiled from: ReportBTContainerErrorListener.java */
/* loaded from: classes6.dex */
public class e extends MBTempContainer.k.a {

    /* renamed from: b  reason: collision with root package name */
    private h f30662b;

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.report.metrics.c f30663c;

    public e(com.mbridge.msdk.foundation.same.report.metrics.c cVar, h hVar) {
        this.f30662b = hVar;
        this.f30663c = cVar;
    }

    @Override // com.mbridge.msdk.video.bt.module.MBTempContainer.k.a, com.mbridge.msdk.video.bt.module.MBTempContainer.k
    public void onError(String str) {
        super.onError(str);
        h hVar = this.f30662b;
        if (hVar != null) {
            hVar.a(this.f30663c, str);
        }
    }
}
