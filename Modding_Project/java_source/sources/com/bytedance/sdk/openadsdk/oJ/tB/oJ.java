package com.bytedance.sdk.openadsdk.oJ.tB;

import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class oJ implements PAGInterstitialAdLoadListener {
    private final PAGInterstitialAdLoadListener oJ;

    public oJ(PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        this.oJ = pAGInterstitialAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
    public void onError(final int i10, final String str) {
        if (this.oJ == null) {
            return;
        }
        if (str == null) {
            str = "Unknown exception.";
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.tB.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                if (oJ.this.oJ != null) {
                    oJ.this.oJ.onError(i10, str);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* renamed from: oJ */
    public void onAdLoaded(final PAGInterstitialAd pAGInterstitialAd) {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.tB.oJ.2
            @Override // java.lang.Runnable
            public void run() {
                if (oJ.this.oJ != null) {
                    oJ.this.oJ.onAdLoaded(pAGInterstitialAd);
                }
            }
        });
    }
}
