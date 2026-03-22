package com.bytedance.adsdk.ugeno.ex.ZYk;

import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.ex.ba;
import java.util.Map;
/* loaded from: classes3.dex */
public class Pfn extends oJ {
    public Pfn(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, ba.oJ oJVar) {
        super(tBVar, str, oJVar);
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ZYk.oJ
    public void oJ() {
        Map<String, String> map = this.f11669ba;
        if (map == null || map.size() <= 0) {
            return;
        }
        String str = this.f11669ba.get("id");
        if (TextUtils.isEmpty(str)) {
            oJ(this.tB);
            return;
        }
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.tB;
        com.bytedance.adsdk.ugeno.ZYk.tB ZYk = tBVar.ZYk(tBVar);
        if (ZYk == null) {
            return;
        }
        oJ(ZYk.ex(str));
    }

    private void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        if (tBVar == null) {
            return;
        }
        for (String str : this.f11669ba.keySet()) {
            if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, "id")) {
                tBVar.oJ(str, this.f11669ba.get(str));
            }
        }
        tBVar.oJ(this.f11669ba.containsKey("width"), this.f11669ba.containsKey("height"));
        tBVar.ZYk();
    }
}
