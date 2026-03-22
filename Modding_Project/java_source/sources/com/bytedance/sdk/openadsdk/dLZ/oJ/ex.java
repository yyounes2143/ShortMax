package com.bytedance.sdk.openadsdk.dLZ.oJ;

import com.bytedance.sdk.component.oJ.si;
import com.bytedance.sdk.openadsdk.core.UN;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex extends com.bytedance.sdk.component.oJ.Pfn<JSONObject, JSONObject> {
    private final UN oJ;

    public ex(UN un2) {
        this.oJ = un2;
    }

    public static void oJ(si siVar, UN un2) {
        siVar.oJ("expressAdViewStartZoom", new ex(un2));
    }

    @Override // com.bytedance.sdk.component.oJ.Pfn
    public JSONObject oJ(JSONObject jSONObject, com.bytedance.sdk.component.oJ.ba baVar) throws Exception {
        this.oJ.ex(jSONObject);
        return null;
    }
}
