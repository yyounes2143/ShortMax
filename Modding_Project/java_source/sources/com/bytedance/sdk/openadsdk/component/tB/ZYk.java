package com.bytedance.sdk.openadsdk.component.tB;

import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class ZYk implements PAGInterstitialAdLoadListener {
    final PAGInterstitialAdLoadListener oJ;

    public ZYk(PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        this.oJ = pAGInterstitialAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* renamed from: oJ */
    public void onAdLoaded(final PAGInterstitialAd pAGInterstitialAd) {
        if (this.oJ != null) {
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.tB.ZYk.2
                @Override // java.lang.Runnable
                public void run() {
                    PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener = ZYk.this.oJ;
                    if (pAGInterstitialAdLoadListener != null) {
                        pAGInterstitialAdLoadListener.onAdLoaded(pAGInterstitialAd);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
    public void onError(final int i10, final String str) {
        if (this.oJ != null) {
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.tB.ZYk.1
                @Override // java.lang.Runnable
                public void run() {
                    PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener = ZYk.this.oJ;
                    if (pAGInterstitialAdLoadListener != null) {
                        pAGInterstitialAdLoadListener.onError(i10, str);
                    }
                }
            });
        }
    }
}
