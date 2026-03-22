package com.bytedance.sdk.openadsdk.dLZ.oJ;

import com.bytedance.sdk.component.oJ.si;
import com.bytedance.sdk.openadsdk.core.UN;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PiB extends com.bytedance.sdk.component.oJ.Pfn<JSONObject, JSONObject> {
    private UN oJ;

    public PiB(UN un2) {
        this.oJ = un2;
    }

    public static void oJ(si siVar, UN un2) {
        siVar.oJ("sendLogV3", new PiB(un2));
    }

    @Override // com.bytedance.sdk.component.oJ.Pfn
    public JSONObject oJ(JSONObject jSONObject, com.bytedance.sdk.component.oJ.ba baVar) throws Exception {
        this.oJ.dLZ(jSONObject);
        return null;
    }
}
