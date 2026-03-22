package com.bytedance.adsdk.oJ.ZYk.ZYk.oJ;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class awB implements com.bytedance.adsdk.oJ.ZYk.ZYk.oJ {
    private Number oJ;

    public awB(String str) {
        if (str.indexOf(46) >= 0) {
            Float valueOf = Float.valueOf(str);
            this.oJ = valueOf;
            if (Float.isInfinite(valueOf.floatValue())) {
                this.oJ = Double.valueOf(str);
                return;
            }
            return;
        }
        try {
            this.oJ = Integer.valueOf(str);
        } catch (NumberFormatException unused) {
            this.oJ = Long.valueOf(str);
        }
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public String ZYk() {
        return this.oJ.toString();
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public Object oJ(Map<String, JSONObject> map) {
        return this.oJ;
    }

    public String toString() {
        return ZYk();
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public com.bytedance.adsdk.oJ.ZYk.ex.Pfn oJ() {
        return com.bytedance.adsdk.oJ.ZYk.ex.ba.NUMBER;
    }
}
