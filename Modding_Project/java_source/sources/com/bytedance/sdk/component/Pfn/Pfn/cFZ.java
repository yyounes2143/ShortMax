package com.bytedance.sdk.component.Pfn.Pfn;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class cFZ extends oJ {
    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public void oJ(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        List<com.bytedance.sdk.component.Pfn.tB.tB> list;
        String Id = tBVar.Id();
        Map<String, List<com.bytedance.sdk.component.Pfn.tB.tB>> so2 = tBVar.Ry().so();
        synchronized (so2) {
            try {
                list = so2.get(Id);
                if (list == null) {
                    list = new LinkedList<>();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (list) {
            try {
                list.add(tBVar);
                so2.put(Id, list);
                if (list.size() <= 1) {
                    tBVar.oJ(new ex());
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public String oJ() {
        return "check_duplicate";
    }
}
