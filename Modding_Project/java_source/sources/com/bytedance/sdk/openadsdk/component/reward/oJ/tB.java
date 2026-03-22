package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.common.awB;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.mbridge.msdk.foundation.entity.CampaignEx;
/* loaded from: classes3.dex */
public class tB {
    private com.bytedance.sdk.openadsdk.common.awB ZYk;
    private final oJ oJ;
    private TTAdDislikeToast tB;

    public tB(oJ oJVar) {
        this.oJ = oJVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB() {
        TTAdDislikeToast tTAdDislikeToast = this.tB;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.show(TTAdDislikeToast.getDislikeSendTip());
        }
    }

    public void ZYk() {
        TTAdDislikeToast tTAdDislikeToast = this.tB;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.onDestroy();
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk) {
        com.bytedance.sdk.openadsdk.activity.so soVar;
        if (this.oJ.HyG.isFinishing()) {
            return;
        }
        if (!this.oJ.BTZ.get() && ((soVar = this.oJ.oCU) == null || !soVar.wd().Id())) {
            if (this.ZYk == null) {
                try {
                    ZYk(zYk);
                } catch (Throwable th2) {
                    ApmHelper.reportCustomError("initDislike error", "RewardFullDislikeManager", th2);
                }
            }
            com.bytedance.sdk.openadsdk.common.awB awb = this.ZYk;
            if (awb != null) {
                awb.oJ();
                return;
            }
            return;
        }
        if (this.tB == null) {
            this.tB = new TTAdDislikeToast(this.oJ.HyG);
            ((FrameLayout) this.oJ.HyG.findViewById(16908290)).addView(this.tB);
        }
        this.tB.show(TTAdDislikeToast.getDislikeTip());
        this.oJ.BTZ.set(true);
    }

    private void ZYk(final com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk) {
        if (this.ZYk == null) {
            oJ oJVar = this.oJ;
            com.bytedance.sdk.openadsdk.common.awB awb = new com.bytedance.sdk.openadsdk.common.awB(oJVar.HyG, oJVar.ZYk);
            this.ZYk = awb;
            awb.setCallback(new awB.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.tB.1
                @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                public void ZYk(View view) {
                    tB.this.oJ.dLZ.set(false);
                    if (tB.this.oJ.cY.Pfn) {
                        if (tB.this.oJ.f13026tb != null) {
                            tB.this.oJ.f13026tb.oJ(0, true);
                            return;
                        }
                        return;
                    }
                    tB.this.oJ.cY.oJ(zYk);
                    if (tB.this.oJ.cY.jFA()) {
                        tB.this.oJ.cY.QSm();
                    }
                    if ((tB.this.oJ.oCU instanceof com.bytedance.sdk.openadsdk.activity.Pfn) && !tB.this.oJ.oCU.ofl()) {
                        tB.this.oJ.oCU.wd().ZYk(tB.this.oJ.oCU, 1);
                    }
                    com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(tB.this.oJ.ZYk, 4);
                    tB.this.oJ.Xe.Pfn(0);
                }

                @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                public void oJ(View view) {
                    tB.this.oJ.dLZ.set(true);
                    String str = "landing_page";
                    if (!QSm.ZYk(tB.this.oJ.ZYk) && !QSm.ex(tB.this.oJ.ZYk) && !QSm.Pfn(tB.this.oJ.ZYk)) {
                        if (tB.this.oJ.kkU.get()) {
                            if (!Ln.ZYk(tB.this.oJ.ZYk)) {
                                if (!tB.this.oJ.ZYk.eXp()) {
                                    str = CampaignEx.JSON_NATIVE_VIDEO_ENDCARD;
                                }
                            } else {
                                str = "playable";
                            }
                        } else {
                            str = "video_player";
                        }
                    }
                    tB.this.ZYk.setDislikeSource(str);
                    if (tB.this.oJ.cY.Pfn) {
                        if (tB.this.oJ.f13026tb != null) {
                            tB.this.oJ.f13026tb.oJ(8, false);
                            return;
                        }
                        return;
                    }
                    zYk.eZI();
                    if (tB.this.oJ.cY.ba()) {
                        tB.this.oJ.cY.oq();
                    }
                    if ((tB.this.oJ.oCU instanceof com.bytedance.sdk.openadsdk.activity.Pfn) && !tB.this.oJ.oCU.ofl()) {
                        tB.this.oJ.oCU.wd().ZYk(tB.this.oJ.oCU, 2);
                    }
                    com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(tB.this.oJ.ZYk, 8);
                    tB.this.oJ.Xe.WcQ();
                }

                @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                public void oJ(FilterWord filterWord) {
                    if (tB.this.oJ.BTZ.get() || filterWord == null || filterWord.hasSecondOptions()) {
                        return;
                    }
                    tB.this.oJ.BTZ.set(true);
                    if (tB.this.oJ.oCU != null) {
                        tB.this.oJ.oCU.wd().ZYk(true);
                    }
                    tB.this.tB();
                }
            });
            ((FrameLayout) this.oJ.HyG.findViewById(16908290)).addView(this.ZYk);
        }
        if (this.tB == null) {
            this.tB = new TTAdDislikeToast(this.oJ.HyG);
            ((FrameLayout) this.oJ.HyG.findViewById(16908290)).addView(this.tB);
        }
    }

    public void oJ() {
        TTAdDislikeToast tTAdDislikeToast = this.tB;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.hide();
        }
    }
}
