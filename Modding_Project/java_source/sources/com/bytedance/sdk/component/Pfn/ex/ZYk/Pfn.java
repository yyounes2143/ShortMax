package com.bytedance.sdk.component.Pfn.ex.ZYk;

import com.bytedance.sdk.component.Pfn.RZ;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class Pfn implements ba {
    @Override // com.bytedance.sdk.component.Pfn.ex.ZYk.ba
    public boolean oJ(com.bytedance.sdk.component.Pfn.ex.tB.tB tBVar, RZ rz, com.bytedance.sdk.component.Pfn.ex.tB.oJ oJVar) {
        List<com.bytedance.sdk.component.Pfn.ex.tB.tB> list;
        String QSm = tBVar.QSm();
        Map<String, List<com.bytedance.sdk.component.Pfn.ex.tB.tB>> jFA = tBVar.si().jFA();
        tBVar.BTZ();
        tBVar.oJ();
        synchronized (jFA) {
            try {
                list = jFA.get(QSm);
                if (list == null) {
                    list = new CopyOnWriteArrayList<>();
                    jFA.put(QSm, list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (list) {
            list.add(tBVar);
            if (list.size() > 1) {
                tBVar.BTZ();
                tBVar.oJ();
                return false;
            }
            return true;
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.ex.ZYk.ba
    public String oJ() {
        return "check_duplicate";
    }
}
