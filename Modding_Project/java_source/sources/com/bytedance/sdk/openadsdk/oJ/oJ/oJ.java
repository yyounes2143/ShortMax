package com.bytedance.sdk.openadsdk.oJ.oJ;

import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class oJ implements PAGBannerAdLoadListener {
    private final PAGBannerAdLoadListener oJ;

    public oJ(PAGBannerAdLoadListener pAGBannerAdLoadListener) {
        this.oJ = pAGBannerAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
    public void onError(final int i10, final String str) {
        if (this.oJ == null) {
            return;
        }
        if (str == null) {
            str = "Unknown exception.";
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.oJ.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                oJ.this.oJ.onError(i10, str);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* renamed from: oJ */
    public void onAdLoaded(final PAGBannerAd pAGBannerAd) {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.oJ.oJ.2
            @Override // java.lang.Runnable
            public void run() {
                oJ.this.oJ.onAdLoaded(pAGBannerAd);
            }
        });
    }
}
