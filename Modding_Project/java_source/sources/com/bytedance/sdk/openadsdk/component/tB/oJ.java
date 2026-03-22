package com.bytedance.sdk.openadsdk.component.tB;

import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class oJ implements com.bytedance.sdk.openadsdk.oJ.tB.ZYk {
    private final PAGInterstitialAdInteractionListener oJ;
    private final AtomicBoolean ZYk = new AtomicBoolean(false);
    private final AtomicBoolean tB = new AtomicBoolean(false);

    public oJ(PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener) {
        this.oJ = pAGInterstitialAdInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.tB.ZYk
    public void ZYk() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener;
        if (this.tB.compareAndSet(false, true) && (pAGInterstitialAdInteractionListener = this.oJ) != null) {
            pAGInterstitialAdInteractionListener.onAdDismissed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.tB.ZYk
    public void oJ() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener;
        if (this.ZYk.compareAndSet(false, true) && (pAGInterstitialAdInteractionListener = this.oJ) != null) {
            pAGInterstitialAdInteractionListener.onAdShowed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
    public void onAdClicked() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener = this.oJ;
        if (pAGInterstitialAdInteractionListener != null) {
            pAGInterstitialAdInteractionListener.onAdClicked();
        }
    }
}
