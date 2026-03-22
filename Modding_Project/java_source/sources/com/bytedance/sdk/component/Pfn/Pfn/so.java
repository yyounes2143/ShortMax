package com.bytedance.sdk.component.Pfn.Pfn;

import com.bytedance.sdk.component.Pfn.eZI;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class so extends oJ {
    private int ZYk;
    private Throwable oJ;
    private String tB;

    public so(int i10, String str, Throwable th2) {
        this.ZYk = i10;
        this.tB = str;
        this.oJ = th2;
    }

    private void ZYk(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        eZI so2 = tBVar.so();
        if (so2 != null) {
            so2.oJ(this.ZYk, this.tB, this.oJ);
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public void oJ(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        tBVar.oJ(new com.bytedance.sdk.component.Pfn.tB.oJ(this.ZYk, this.tB, this.oJ));
        String Id = tBVar.Id();
        Map<String, List<com.bytedance.sdk.component.Pfn.tB.tB>> so2 = tBVar.Ry().so();
        List<com.bytedance.sdk.component.Pfn.tB.tB> list = so2.get(Id);
        if (list == null) {
            ZYk(tBVar);
            return;
        }
        synchronized (list) {
            try {
                for (com.bytedance.sdk.component.Pfn.tB.tB tBVar2 : list) {
                    ZYk(tBVar2);
                }
                list.clear();
                so2.remove(Id);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public String oJ() {
        return "failed";
    }
}
