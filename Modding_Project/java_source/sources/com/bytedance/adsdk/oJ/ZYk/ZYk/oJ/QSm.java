package com.bytedance.adsdk.oJ.ZYk.ZYk.oJ;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class QSm implements com.bytedance.adsdk.oJ.ZYk.ZYk.oJ {
    private final String oJ;

    public QSm(String str) {
        this.oJ = str;
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public String ZYk() {
        return "'" + this.oJ + "'";
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
        return com.bytedance.adsdk.oJ.ZYk.ex.ba.STRING;
    }
}
