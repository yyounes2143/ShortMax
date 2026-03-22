package com.bytedance.sdk.component.Pfn.Pfn;

import java.util.Collection;
/* loaded from: classes3.dex */
public class ba extends oJ {
    private byte[] ZYk(com.bytedance.sdk.component.Pfn.tB.tB tBVar, String str) {
        com.bytedance.sdk.component.Pfn.tB tB = tBVar.Ry().tB(tBVar.RZ());
        if (tB == null) {
            return null;
        }
        return tB.oJ((com.bytedance.sdk.component.Pfn.tB) str);
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public void oJ(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        byte[] oJ;
        String jFA = tBVar.jFA();
        if (!tBVar.QSm() && !tBVar.RZ().jFA()) {
            oJ = ZYk(tBVar, jFA);
        } else {
            oJ = oJ(tBVar, jFA);
        }
        if (oJ == null) {
            tBVar.oJ(new dLZ());
            return;
        }
        tBVar.oJ(new ZYk(oJ, null));
        tBVar.Ry().ZYk(tBVar.RZ()).oJ(jFA, oJ);
    }

    private byte[] oJ(com.bytedance.sdk.component.Pfn.tB.tB tBVar, String str) {
        tBVar.Ry().tB(tBVar.RZ());
        Collection<com.bytedance.sdk.component.Pfn.tB> tB = tBVar.Ry().tB();
        if (tB == null) {
            return null;
        }
        for (com.bytedance.sdk.component.Pfn.tB tBVar2 : tB) {
            byte[] oJ = tBVar2.oJ((com.bytedance.sdk.component.Pfn.tB) str);
            if (oJ != null) {
                return oJ;
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public String oJ() {
        return "disk_cache";
    }
}
