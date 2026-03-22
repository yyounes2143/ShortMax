package com.bytedance.sdk.openadsdk.oJ.ex;

import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class oJ implements PAGAppOpenAdLoadListener {
    private final PAGAppOpenAdLoadListener oJ;

    public oJ(PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener) {
        this.oJ = pAGAppOpenAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
    public void onError(final int i10, final String str) {
        if (this.oJ == null) {
            return;
        }
        if (str == null) {
            str = "Unknown exception.";
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.ex.oJ.1
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
    public void onAdLoaded(final PAGAppOpenAd pAGAppOpenAd) {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.ex.oJ.2
            @Override // java.lang.Runnable
            public void run() {
                if (oJ.this.oJ != null) {
                    oJ.this.oJ.onAdLoaded(pAGAppOpenAd);
                }
            }
        });
    }
}
