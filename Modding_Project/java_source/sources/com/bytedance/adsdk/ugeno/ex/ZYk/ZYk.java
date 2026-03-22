package com.bytedance.adsdk.ugeno.ex.ZYk;

import com.bytedance.adsdk.ugeno.ex.ba;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class ZYk extends oJ {
    private List<com.bytedance.adsdk.ugeno.ex.oJ.ex> jFA;

    public ZYk(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, ba.oJ oJVar) {
        super(tBVar, str, oJVar);
        this.jFA = new CopyOnWriteArrayList();
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ZYk.oJ
    public void oJ() {
        com.bytedance.adsdk.ugeno.ex.oJ.tB oJ;
        Map<String, String> map = this.f11669ba;
        if (map != null && map.size() > 0) {
            String str = this.f11669ba.get("name");
            com.bytedance.adsdk.ugeno.ex.oJ.oJ cdg = this.tB.cdg();
            if (cdg != null && (oJ = cdg.oJ(str)) != null) {
                oJ.oJ(str);
            }
        }
    }
}
