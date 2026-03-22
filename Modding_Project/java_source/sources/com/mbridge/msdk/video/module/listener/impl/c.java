package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
/* compiled from: ContainerViewJSListener.java */
/* loaded from: classes6.dex */
public class c extends d {

    /* renamed from: n  reason: collision with root package name */
    private IJSFactory f31152n;

    public c(IJSFactory iJSFactory, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i10, boolean z10) {
        super(campaignEx, aVar, cVar, str, str2, aVar2, i10, z10);
        this.f31152n = iJSFactory;
        if (iJSFactory == null) {
            this.f31161a = false;
        }
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.d, com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i10, Object obj) {
        if (this.f31161a) {
            if (i10 != 8) {
                if (i10 != 105) {
                    if (i10 != 107) {
                        if (i10 != 112) {
                            if (i10 == 115) {
                                com.mbridge.msdk.video.signal.j jSVideoModule = this.f31152n.getJSVideoModule();
                                this.f31152n.getJSContainerModule().resizeMiniCard(jSVideoModule.getBorderViewWidth(), jSVideoModule.getBorderViewHeight(), jSVideoModule.getBorderViewRadius());
                            }
                        } else {
                            this.f31152n.getJSVideoModule().setCover(true);
                            this.f31152n.getJSVideoModule().setMiniEndCardState(true);
                            this.f31152n.getJSVideoModule().videoOperate(2);
                        }
                    } else {
                        this.f31152n.getJSContainerModule().showVideoClickView(-1);
                        this.f31152n.getJSVideoModule().setCover(false);
                        this.f31152n.getJSVideoModule().setMiniEndCardState(false);
                        this.f31152n.getJSVideoModule().videoOperate(1);
                    }
                } else {
                    this.f31152n.getJSNotifyProxy().a(3, obj.toString());
                    i10 = -1;
                }
            } else if (!this.f31152n.getJSContainerModule().showAlertWebView()) {
                this.f31152n.getJSVideoModule().showAlertView();
            } else {
                this.f31152n.getJSVideoModule().alertWebViewShowed();
            }
        }
        super.a(i10, obj);
    }
}
