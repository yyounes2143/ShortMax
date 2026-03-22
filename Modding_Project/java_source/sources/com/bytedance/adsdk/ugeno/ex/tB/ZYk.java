package com.bytedance.adsdk.ugeno.ex.tB;

import com.bytedance.adsdk.ugeno.ex.ba;
/* loaded from: classes3.dex */
public class ZYk extends com.bytedance.adsdk.ugeno.ex.ZYk.oJ {
    public ZYk(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, ba.oJ oJVar) {
        super(tBVar, str, oJVar);
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ZYk.oJ
    public void oJ() {
        if (this.tB == null) {
            return;
        }
        int oJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.f11669ba.get("position"), 0);
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.tB;
        com.bytedance.adsdk.ugeno.ZYk.tB ZYk = tBVar.ZYk(tBVar);
        if (ZYk == null) {
            return;
        }
        com.bytedance.adsdk.ugeno.ZYk.tB Pfn = ZYk.Pfn("SwiperView");
        if (Pfn instanceof com.bytedance.adsdk.ugeno.ZYk) {
            ((com.bytedance.adsdk.ugeno.ZYk) Pfn).oJ(oJ);
        }
    }
}
