package com.bytedance.sdk.component.Pfn.Pfn;

import com.bytedance.sdk.component.Pfn.eZI;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class PiB<T> extends oJ {
    private com.bytedance.sdk.component.Pfn.ba ZYk;
    private T oJ;
    private boolean tB;

    public PiB(T t10, com.bytedance.sdk.component.Pfn.ba baVar, boolean z10) {
        this.oJ = t10;
        this.ZYk = baVar;
        this.tB = z10;
    }

    private Map<String, String> ZYk() {
        com.bytedance.sdk.component.Pfn.ba baVar = this.ZYk;
        if (baVar != null) {
            return baVar.Pfn();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public void oJ(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
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

    private void ZYk(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        eZI so2 = tBVar.so();
        if (so2 != null) {
            so2.oJ(new com.bytedance.sdk.component.Pfn.tB.ex().oJ(tBVar, this.oJ, ZYk(), this.tB));
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public String oJ() {
        return "success";
    }
}
