package com.bytedance.sdk.openadsdk.component.reward.ZYk;

import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk;
import com.bytedance.sdk.openadsdk.core.model.cY;
/* loaded from: classes3.dex */
public class so extends ZYk {
    private com.bytedance.sdk.openadsdk.component.reward.view.tB awB;

    public so(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        super(oJVar);
    }

    private boolean LpP() {
        return cY.Pfn(this.ZYk);
    }

    public FrameLayout Ln() {
        com.bytedance.sdk.openadsdk.component.reward.view.tB tBVar = this.awB;
        if (tBVar != null) {
            return tBVar.getVideoContainer();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public boolean Pfn() {
        return LpP();
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public boolean ba() {
        return LpP();
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void cFZ() {
        this.f12992ba.ex(8);
        this.f12992ba.ZYk(8);
        if (this.ZYk.oIC() == 2) {
            this.f12993so.oJ(false);
            this.f12993so.tB(false);
            this.f12993so.ex(false);
            this.f12992ba.ba(8);
            return;
        }
        this.f12993so.oJ(this.ZYk.LTg());
        this.f12993so.tB(LpP());
        this.f12993so.ex(LpP());
        if (LpP()) {
            this.f12992ba.ba(8);
            return;
        }
        this.f12993so.Pfn();
        this.f12992ba.ba(0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public ZYk.oJ ex() {
        return new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.ZYk.so.1
            @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk.oJ
            public void oJ(boolean z10) {
                if (so.this.awB != null) {
                    so.this.awB.setIsMute(z10);
                }
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void oJ(FrameLayout frameLayout) {
        com.bytedance.sdk.openadsdk.component.reward.view.tB tBVar = new com.bytedance.sdk.openadsdk.component.reward.view.tB(this.oJ.HyG, this.dLZ);
        this.awB = tBVar;
        tBVar.setDownloadListener(this.BTZ);
        com.bytedance.sdk.openadsdk.component.reward.view.tB tBVar2 = this.awB;
        cY cYVar = this.ZYk;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        tBVar2.oJ(cYVar, oJVar.LS, oJVar.oTd, this.tB, this.ex);
        frameLayout.addView(this.awB.getInteractionStyleRootView());
    }

    public static boolean oJ(cY cYVar) {
        return (cYVar.kO() || cYVar.dzr() == 100.0f) ? false : true;
    }
}
