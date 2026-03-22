package com.bytedance.sdk.openadsdk.component.reward;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class cFZ implements PAGRewardedAdLoadListener {
    final PAGRewardedAdLoadListener oJ;

    public cFZ(PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        this.oJ = pAGRewardedAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* renamed from: oJ */
    public void onAdLoaded(final PAGRewardedAd pAGRewardedAd) {
        if (this.oJ != null) {
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.cFZ.2
                @Override // java.lang.Runnable
                public void run() {
                    PAGRewardedAdLoadListener pAGRewardedAdLoadListener = cFZ.this.oJ;
                    if (pAGRewardedAdLoadListener != null) {
                        pAGRewardedAdLoadListener.onAdLoaded(pAGRewardedAd);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
    public void onError(final int i10, final String str) {
        if (this.oJ != null) {
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.cFZ.1
                @Override // java.lang.Runnable
                public void run() {
                    PAGRewardedAdLoadListener pAGRewardedAdLoadListener = cFZ.this.oJ;
                    if (pAGRewardedAdLoadListener != null) {
                        pAGRewardedAdLoadListener.onError(i10, str);
                    }
                }
            });
        }
    }
}
