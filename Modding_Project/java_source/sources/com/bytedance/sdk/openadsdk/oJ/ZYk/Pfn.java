package com.bytedance.sdk.openadsdk.oJ.ZYk;

import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class Pfn implements PAGNativeAdLoadListener {
    private final PAGNativeAdLoadListener oJ;

    public Pfn(PAGNativeAdLoadListener pAGNativeAdLoadListener) {
        this.oJ = pAGNativeAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
    public void onError(final int i10, final String str) {
        if (this.oJ == null) {
            return;
        }
        if (str == null) {
            str = "Unknown exception.";
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.Pfn.1
            @Override // java.lang.Runnable
            public void run() {
                if (Pfn.this.oJ != null) {
                    Pfn.this.oJ.onError(i10, str);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* renamed from: oJ */
    public void onAdLoaded(final PAGNativeAd pAGNativeAd) {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.Pfn.2
            @Override // java.lang.Runnable
            public void run() {
                if (Pfn.this.oJ != null) {
                    Pfn.this.oJ.onAdLoaded(pAGNativeAd);
                }
            }
        });
    }
}
