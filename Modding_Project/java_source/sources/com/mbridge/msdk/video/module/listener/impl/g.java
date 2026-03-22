package com.mbridge.msdk.video.module.listener.impl;

import androidx.annotation.RequiresApi;
import com.mbridge.msdk.video.module.MBridgeClickMiniCardView;
/* compiled from: MiniCardProxyNotifyListener.java */
/* loaded from: classes6.dex */
public class g extends i {

    /* renamed from: b  reason: collision with root package name */
    private MBridgeClickMiniCardView f31158b;

    public g(MBridgeClickMiniCardView mBridgeClickMiniCardView, com.mbridge.msdk.video.module.listener.a aVar) {
        super(aVar);
        this.f31158b = mBridgeClickMiniCardView;
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.i, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    @RequiresApi(api = 11)
    public void a(int i10, Object obj) {
        boolean z10 = false;
        switch (i10) {
            case 100:
                MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f31158b;
                if (mBridgeClickMiniCardView != null) {
                    mBridgeClickMiniCardView.webviewshow();
                    MBridgeClickMiniCardView mBridgeClickMiniCardView2 = this.f31158b;
                    mBridgeClickMiniCardView2.onSelfConfigurationChanged(mBridgeClickMiniCardView2.getResources().getConfiguration());
                    break;
                }
                break;
            case 101:
            case 102:
                z10 = true;
                break;
            case 103:
                i10 = 107;
                break;
        }
        if (!z10) {
            super.a(i10, obj);
        }
    }
}
