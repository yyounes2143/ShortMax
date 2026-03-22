package com.mbridge.msdk.video.bt.module.orglistener;

import com.mbridge.msdk.foundation.tools.p0;
/* compiled from: H5ShowRewardListener.java */
/* loaded from: classes6.dex */
public class c extends b {

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.video.bt.module.listener.b f30651c;

    /* renamed from: d  reason: collision with root package name */
    private String f30652d;

    public c(com.mbridge.msdk.video.bt.module.listener.b bVar, String str) {
        this.f30651c = bVar;
        this.f30652d = str;
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f30651c != null) {
            p0.a("H5ShowRewardListener", "onAdShow");
            this.f30651c.a(this.f30652d);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void b(String str, String str2) {
        if (this.f30651c != null) {
            p0.a("H5ShowRewardListener", "onVideoComplete");
            this.f30651c.a(this.f30652d, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar2) {
        if (this.f30651c != null) {
            p0.a("H5ShowRewardListener", "onAdClose");
            this.f30651c.a(this.f30652d, z10, cVar2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
        if (this.f30651c != null) {
            p0.a("H5ShowRewardListener", "onShowFail");
            this.f30651c.a(this.f30652d, str);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(boolean z10, String str, String str2) {
        if (this.f30651c != null) {
            p0.a("H5ShowRewardListener", "onVideoAdClicked");
            this.f30651c.b(this.f30652d, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(String str, String str2) {
        if (this.f30651c != null) {
            p0.a("H5ShowRewardListener", "onEndcardShow");
            this.f30651c.c(this.f30652d, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(int i10, String str, String str2) {
        if (this.f30651c != null) {
            p0.a("H5ShowRewardListener", "onAutoLoad");
            this.f30651c.a(this.f30652d, i10, str, str2);
        }
    }
}
