package com.bytedance.adsdk.oJ.ZYk.ZYk.oJ;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class RZ implements com.bytedance.adsdk.oJ.ZYk.ZYk.ZYk {
    private com.bytedance.adsdk.oJ.ZYk.ZYk.oJ ZYk;
    private com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJ;
    private com.bytedance.adsdk.oJ.ZYk.ZYk.oJ tB;

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.ZYk
    public void ZYk(com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar) {
        this.ZYk = oJVar;
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public Object oJ(Map<String, JSONObject> map) {
        Object oJ = this.oJ.oJ(map);
        if (oJ == null) {
            return null;
        }
        if (((Boolean) oJ).booleanValue()) {
            return this.ZYk.oJ(map);
        }
        return this.tB.oJ(map);
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.ZYk
    public void tB(com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar) {
        this.tB = oJVar;
    }

    public String toString() {
        return ZYk();
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public String ZYk() {
        return this.oJ.ZYk() + "?" + this.ZYk.ZYk() + ":" + this.tB.ZYk();
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public com.bytedance.adsdk.oJ.ZYk.ex.Pfn oJ() {
        return com.bytedance.adsdk.oJ.ZYk.ex.ba.OPERATOR_RESULT;
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.ZYk
    public void oJ(com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar) {
        this.oJ = oJVar;
    }
}
