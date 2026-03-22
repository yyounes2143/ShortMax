package com.bytedance.adsdk.oJ.ZYk.ZYk.oJ;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class WcQ extends si {
    public WcQ() {
        super(com.bytedance.adsdk.oJ.ZYk.ex.tB.NOT_EQ);
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public Object oJ(Map<String, JSONObject> map) {
        Object oJ = this.oJ.oJ(map);
        Object oJ2 = this.ZYk.oJ(map);
        if (oJ == null && oJ2 == null) {
            return Boolean.FALSE;
        }
        if (oJ == null && oJ2 != null) {
            return Boolean.TRUE;
        }
        if (oJ != null && oJ2 == null) {
            return Boolean.TRUE;
        }
        if ((oJ instanceof Number) && (oJ2 instanceof Number)) {
            return Boolean.valueOf(!com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.ZYk.oJ((Number) oJ, (Number) oJ2));
        }
        return Boolean.valueOf(!oJ.equals(oJ2));
    }
}
