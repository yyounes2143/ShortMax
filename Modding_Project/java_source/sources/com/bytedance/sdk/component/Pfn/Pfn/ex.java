package com.bytedance.sdk.component.Pfn.Pfn;
/* loaded from: classes3.dex */
public class ex extends oJ {
    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public void oJ(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        com.bytedance.sdk.component.Pfn.ZYk RZ = tBVar.RZ();
        if (RZ != null) {
            if (RZ.Pfn()) {
                tBVar.oJ(new kkU());
                return;
            } else if (RZ.cFZ()) {
                tBVar.oJ(new ba());
                return;
            }
        }
        tBVar.oJ(new dLZ());
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public String oJ() {
        return "cache_policy";
    }
}
