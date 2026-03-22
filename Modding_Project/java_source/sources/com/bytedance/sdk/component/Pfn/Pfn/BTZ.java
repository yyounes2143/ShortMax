package com.bytedance.sdk.component.Pfn.Pfn;
/* loaded from: classes3.dex */
public class BTZ extends oJ {
    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public void oJ(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        byte[] oJ = tBVar.Ry().ZYk(tBVar.RZ()).oJ(tBVar.jFA());
        if (oJ == null) {
            tBVar.oJ(new ba());
        } else {
            tBVar.oJ(new ZYk(oJ, null));
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public String oJ() {
        return "raw_cache";
    }
}
