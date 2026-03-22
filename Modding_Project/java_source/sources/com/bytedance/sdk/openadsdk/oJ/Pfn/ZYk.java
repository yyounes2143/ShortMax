package com.bytedance.sdk.openadsdk.oJ.Pfn;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class ZYk implements PAGRewardedAdLoadListener {
    private final PAGRewardedAdLoadListener oJ;

    public ZYk(PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        this.oJ = pAGRewardedAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
    public void onError(final int i10, final String str) {
        if (this.oJ == null) {
            return;
        }
        if (str == null) {
            str = "Unknown exception.";
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.Pfn.ZYk.1
            @Override // java.lang.Runnable
            public void run() {
                if (ZYk.this.oJ != null) {
                    ZYk.this.oJ.onError(i10, str);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* renamed from: oJ */
    public void onAdLoaded(final PAGRewardedAd pAGRewardedAd) {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.Pfn.ZYk.2
            @Override // java.lang.Runnable
            public void run() {
                if (ZYk.this.oJ != null) {
                    ZYk.this.oJ.onAdLoaded(pAGRewardedAd);
                }
            }
        });
    }
}
