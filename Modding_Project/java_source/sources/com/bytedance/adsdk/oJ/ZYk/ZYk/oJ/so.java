package com.bytedance.adsdk.oJ.ZYk.ZYk.oJ;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class so extends si {
    public so() {
        super(com.bytedance.adsdk.oJ.ZYk.ex.tB.LT_EQ);
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public Object oJ(Map<String, JSONObject> map) {
        Object oJ;
        Object oJ2 = this.oJ.oJ(map);
        if (oJ2 == null || (oJ = this.ZYk.oJ(map)) == null) {
            return null;
        }
        return Boolean.valueOf(!((Boolean) com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.tB.oJ(oJ2, (Number) oJ)).booleanValue());
    }
}
