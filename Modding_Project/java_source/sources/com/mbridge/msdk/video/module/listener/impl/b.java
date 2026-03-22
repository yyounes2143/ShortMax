package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
/* compiled from: ContainerViewDefaultListener.java */
/* loaded from: classes6.dex */
public class b extends d {

    /* renamed from: n  reason: collision with root package name */
    private MBridgeVideoView f31150n;

    /* renamed from: o  reason: collision with root package name */
    private MBridgeContainerView f31151o;

    public b(MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i10, boolean z10) {
        super(campaignEx, aVar, cVar, str, str2, aVar2, i10, z10);
        this.f31150n = mBridgeVideoView;
        this.f31151o = mBridgeContainerView;
        if (mBridgeVideoView == null || mBridgeContainerView == null) {
            this.f31161a = false;
        }
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.d, com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i10, Object obj) {
        if (this.f31161a) {
            if (i10 != 8) {
                if (i10 != 107) {
                    if (i10 != 112) {
                        if (i10 == 115) {
                            this.f31151o.resizeMiniCard(this.f31150n.getBorderViewWidth(), this.f31150n.getBorderViewHeight(), this.f31150n.getBorderViewRadius());
                        }
                    } else {
                        this.f31150n.setCover(true);
                        this.f31150n.setMiniEndCardState(true);
                        this.f31150n.videoOperate(2);
                    }
                } else {
                    this.f31151o.showVideoClickView(-1);
                    this.f31150n.setCover(false);
                    this.f31150n.setMiniEndCardState(false);
                    this.f31150n.videoOperate(1);
                }
            } else {
                MBridgeContainerView mBridgeContainerView = this.f31151o;
                if (mBridgeContainerView != null) {
                    if (!mBridgeContainerView.showAlertWebView()) {
                        MBridgeVideoView mBridgeVideoView = this.f31150n;
                        if (mBridgeVideoView != null) {
                            mBridgeVideoView.showAlertView();
                        }
                    } else {
                        MBridgeVideoView mBridgeVideoView2 = this.f31150n;
                        if (mBridgeVideoView2 != null) {
                            mBridgeVideoView2.alertWebViewShowed();
                        }
                    }
                } else {
                    MBridgeVideoView mBridgeVideoView3 = this.f31150n;
                    if (mBridgeVideoView3 != null) {
                        mBridgeVideoView3.showAlertView();
                    }
                }
            }
        }
        super.a(i10, obj);
    }
}
