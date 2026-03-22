package com.bytedance.sdk.openadsdk.component.reward;

import com.bytedance.sdk.openadsdk.api.model.PAGErrorModel;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardItem;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class jFA implements com.bytedance.sdk.openadsdk.oJ.Pfn.oJ {
    private final AtomicBoolean Pfn;
    private final PAGRewardedAdInteractionCallback ZYk;
    private final AtomicBoolean ex;
    private final PAGRewardedAdInteractionListener oJ;
    private final AtomicBoolean tB;

    public jFA(PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener) {
        this.tB = new AtomicBoolean(false);
        this.ex = new AtomicBoolean(false);
        this.Pfn = new AtomicBoolean(false);
        this.oJ = pAGRewardedAdInteractionListener;
        this.ZYk = null;
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.Pfn.oJ
    public void ZYk() {
        if (!this.ex.compareAndSet(false, true)) {
            return;
        }
        PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener = this.oJ;
        if (pAGRewardedAdInteractionListener != null) {
            pAGRewardedAdInteractionListener.onAdDismissed();
            return;
        }
        PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback = this.ZYk;
        if (pAGRewardedAdInteractionCallback != null) {
            pAGRewardedAdInteractionCallback.onAdDismissed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.Pfn.oJ
    public void oJ() {
        if (this.tB.compareAndSet(false, true)) {
            PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener = this.oJ;
            if (pAGRewardedAdInteractionListener != null) {
                pAGRewardedAdInteractionListener.onAdShowed();
                return;
            }
            PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback = this.ZYk;
            if (pAGRewardedAdInteractionCallback != null) {
                pAGRewardedAdInteractionCallback.onAdShowed();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
    public void onAdClicked() {
        PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener = this.oJ;
        if (pAGRewardedAdInteractionListener != null) {
            pAGRewardedAdInteractionListener.onAdClicked();
            return;
        }
        PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback = this.ZYk;
        if (pAGRewardedAdInteractionCallback != null) {
            pAGRewardedAdInteractionCallback.onAdClicked();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.Pfn.oJ
    public void oJ(boolean z10, int i10, String str, int i11, String str2) {
        if (this.Pfn.compareAndSet(false, true)) {
            PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener = this.oJ;
            if (pAGRewardedAdInteractionListener != null) {
                if (z10) {
                    pAGRewardedAdInteractionListener.onUserEarnedReward(new PAGRewardItem(i10, str));
                    return;
                } else {
                    pAGRewardedAdInteractionListener.onUserEarnedRewardFail(i11, str2);
                    return;
                }
            }
            PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback = this.ZYk;
            if (pAGRewardedAdInteractionCallback != null) {
                if (z10) {
                    pAGRewardedAdInteractionCallback.onUserEarnedReward(new PAGRewardItem(i10, str));
                } else {
                    pAGRewardedAdInteractionCallback.onUserEarnedRewardFail(new PAGErrorModel(i11, str2));
                }
            }
        }
    }

    public jFA(PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback) {
        this.tB = new AtomicBoolean(false);
        this.ex = new AtomicBoolean(false);
        this.Pfn = new AtomicBoolean(false);
        this.ZYk = pAGRewardedAdInteractionCallback;
        this.oJ = null;
    }
}
