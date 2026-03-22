package com.bytedance.sdk.openadsdk.component;

import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionListener;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class Pfn implements com.bytedance.sdk.openadsdk.oJ.ex.ZYk {
    private final AtomicBoolean ZYk = new AtomicBoolean(false);
    private final PAGAppOpenAdInteractionListener oJ;

    public Pfn(PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener) {
        this.oJ = pAGAppOpenAdInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.ex.ZYk
    public void ZYk() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener;
        if (!this.ZYk.getAndSet(true) && (pAGAppOpenAdInteractionListener = this.oJ) != null) {
            pAGAppOpenAdInteractionListener.onAdDismissed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.ex.ZYk
    public void oJ() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener = this.oJ;
        if (pAGAppOpenAdInteractionListener != null) {
            pAGAppOpenAdInteractionListener.onAdShowed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
    public void onAdClicked() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener = this.oJ;
        if (pAGAppOpenAdInteractionListener != null) {
            pAGAppOpenAdInteractionListener.onAdClicked();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.ex.ZYk
    public void tB() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener;
        if (!this.ZYk.getAndSet(true) && (pAGAppOpenAdInteractionListener = this.oJ) != null) {
            pAGAppOpenAdInteractionListener.onAdDismissed();
        }
    }
}
