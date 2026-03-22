package com.bytedance.sdk.openadsdk.dLZ.oJ;

import com.bytedance.sdk.component.oJ.si;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn extends com.bytedance.sdk.component.oJ.Pfn<JSONObject, JSONObject> {
    private JSONObject oJ;

    public Pfn(JSONObject jSONObject) {
        this.oJ = jSONObject;
    }

    public static void oJ(si siVar, JSONObject jSONObject) {
        siVar.oJ("getData", new Pfn(jSONObject));
    }

    @Override // com.bytedance.sdk.component.oJ.Pfn
    public JSONObject oJ(JSONObject jSONObject, com.bytedance.sdk.component.oJ.ba baVar) throws Exception {
        return com.bytedance.sdk.openadsdk.core.so.oJ.ZYk.oJ(this.oJ, jSONObject);
    }
}
