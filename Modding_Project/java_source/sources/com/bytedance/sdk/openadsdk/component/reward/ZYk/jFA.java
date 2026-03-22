package com.bytedance.sdk.openadsdk.component.reward.ZYk;

import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
/* loaded from: classes3.dex */
public class jFA extends ZYk {
    public jFA(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        super(oJVar);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public boolean Pfn() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void QSm() {
        super.QSm();
        if (Ln.si(this.oJ.ZYk)) {
            this.kkU.removeMessages(600);
            this.oJ.Xe.tB("go_background");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void RZ() {
        if (this.oJ.Xe.so(com.bytedance.sdk.openadsdk.component.reward.oJ.so.tB) && Ln.si(this.oJ.ZYk)) {
            this.oJ.Xe.tB("return_foreground");
            com.bytedance.sdk.openadsdk.core.widget.ZYk zYk = this.PiB;
            if ((zYk == null || !zYk.isShowing()) && this.oJ.Xe.ZYk() >= 0.0f) {
                this.oJ.Xe.Pfn(0);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public boolean ba() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void oJ(FrameLayout frameLayout) {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void oq() {
        super.oq();
        if (Ln.si(this.oJ.ZYk)) {
            this.kkU.removeMessages(600);
            this.oJ.Xe.tB("go_background");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void si() {
        if (Ln.so(this.ZYk) && this.oJ.Jc.wd() && !this.oJ.Jc.Rl()) {
            Ry();
        }
        if (Ln.cFZ(this.oJ.ZYk)) {
            if (DeviceUtils.cFZ() == 0) {
                this.oJ.bgF = true;
            }
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
            if (oJVar.bgF) {
                oJVar.f13022mu.ZYk(true);
                this.oJ.Xe.Pfn(true);
            }
        }
        this.oJ.jXJ.oJ();
    }

    public static boolean oJ(cY cYVar) {
        return Ln.cFZ(cYVar) || Ln.si(cYVar);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void cFZ() {
    }
}
