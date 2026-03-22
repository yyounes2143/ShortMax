package com.bytedance.sdk.openadsdk.oJ.ZYk;

import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class cFZ implements ba {
    private final PAGNativeAdInteractionListener oJ;

    public cFZ(PAGNativeAdInteractionListener pAGNativeAdInteractionListener) {
        this.oJ = pAGNativeAdInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.ba
    public boolean ZYk() {
        if (this.oJ != null) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
    public void onAdClicked() {
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.cFZ.1
            @Override // java.lang.Runnable
            public void run() {
                if (cFZ.this.oJ != null) {
                    cFZ.this.oJ.onAdClicked();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.ba
    public void oJ(PAGNativeAd pAGNativeAd) {
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.cFZ.2
            @Override // java.lang.Runnable
            public void run() {
                if (cFZ.this.oJ != null) {
                    cFZ.this.oJ.onAdShowed();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.ba
    public void oJ() {
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.cFZ.3
            @Override // java.lang.Runnable
            public void run() {
                if (cFZ.this.oJ != null) {
                    cFZ.this.oJ.onAdDismissed();
                }
            }
        });
    }
}
