package com.bytedance.adsdk.ugeno.ex.ZYk;

import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.ex.ba;
import java.util.Map;
/* loaded from: classes3.dex */
public class ex extends oJ {
    public ex(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, ba.oJ oJVar) {
        super(tBVar, str, oJVar);
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ZYk.oJ
    public void oJ() {
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar;
        com.bytedance.adsdk.ugeno.ZYk.tB ZYk;
        com.bytedance.adsdk.ugeno.oJ.oJ kkU;
        Map<String, String> map = this.f11669ba;
        if (map != null && map.size() > 0) {
            String str = this.f11669ba.get("name");
            if (!TextUtils.isEmpty(str) && (ZYk = (tBVar = this.tB).ZYk(tBVar)) != null && (kkU = ZYk.ba(str).kkU(str)) != null) {
                kkU.ZYk();
                kkU.oJ(new com.bytedance.adsdk.ugeno.oJ.ZYk() { // from class: com.bytedance.adsdk.ugeno.ex.ZYk.ex.1
                    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk
                    public void ZYk() {
                        ex.this.tB();
                    }

                    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk
                    public void oJ() {
                    }
                });
            }
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ZYk.oJ
    public void ZYk() {
    }
}
