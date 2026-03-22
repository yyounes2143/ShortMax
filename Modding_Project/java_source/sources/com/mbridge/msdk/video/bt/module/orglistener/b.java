package com.mbridge.msdk.video.bt.module.orglistener;

import com.mbridge.msdk.foundation.tools.p0;
/* compiled from: DefaultShowRewardListener.java */
/* loaded from: classes6.dex */
public class b implements h {

    /* renamed from: a  reason: collision with root package name */
    private Boolean f30649a = null;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f30650b = null;

    public void a() {
        this.f30650b = Boolean.TRUE;
    }

    public void b() {
        this.f30649a = Boolean.TRUE;
    }

    public Boolean c() {
        return this.f30650b;
    }

    public Boolean d() {
        return this.f30649a;
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        p0.a("ShowRewardListener", "onAdShow");
        this.f30649a = Boolean.TRUE;
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void b(String str, String str2) {
        p0.a("ShowRewardListener", "onVideoComplete: " + str2);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar2) {
        p0.a("ShowRewardListener", "onAdClose:isCompleteView:" + z10 + ",reward:" + cVar2);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
        p0.a("ShowRewardListener", "onShowFail:" + str);
        this.f30650b = Boolean.TRUE;
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(boolean z10, String str, String str2) {
        p0.a("ShowRewardListener", "onVideoAdClicked:" + str2);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(boolean z10, int i10) {
        p0.a("ShowRewardListener", "onAdCloseWithIVReward: " + z10 + "  " + i10);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(String str, String str2) {
        p0.a("ShowRewardListener", "onEndcardShow: " + str2);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(int i10, String str, String str2) {
        p0.a("ShowRewardListener", "onAutoLoad: " + str2);
    }
}
