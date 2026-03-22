package com.bytedance.adsdk.ugeno.ex;

import com.bytedance.adsdk.ugeno.ex.ba;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class Pfn implements tB {
    @Override // com.bytedance.adsdk.ugeno.ex.tB
    public List<ZYk> oJ() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ZYk("update") { // from class: com.bytedance.adsdk.ugeno.ex.Pfn.1
            @Override // com.bytedance.adsdk.ugeno.ex.ZYk
            public com.bytedance.adsdk.ugeno.ex.ZYk.oJ oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, ba.oJ oJVar) {
                return new com.bytedance.adsdk.ugeno.ex.ZYk.Pfn(tBVar, str, oJVar);
            }
        });
        arrayList.add(new ZYk("emit") { // from class: com.bytedance.adsdk.ugeno.ex.Pfn.2
            @Override // com.bytedance.adsdk.ugeno.ex.ZYk
            public com.bytedance.adsdk.ugeno.ex.ZYk.oJ oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, ba.oJ oJVar) {
                return new com.bytedance.adsdk.ugeno.ex.ZYk.ZYk(tBVar, str, oJVar);
            }
        });
        arrayList.add(new ZYk("startAnimate") { // from class: com.bytedance.adsdk.ugeno.ex.Pfn.3
            @Override // com.bytedance.adsdk.ugeno.ex.ZYk
            public com.bytedance.adsdk.ugeno.ex.ZYk.oJ oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, ba.oJ oJVar) {
                return new com.bytedance.adsdk.ugeno.ex.ZYk.ex(tBVar, str, oJVar);
            }
        });
        return arrayList;
    }
}
