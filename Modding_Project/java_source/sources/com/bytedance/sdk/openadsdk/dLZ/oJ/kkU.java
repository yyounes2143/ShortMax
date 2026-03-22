package com.bytedance.sdk.openadsdk.dLZ.oJ;

import com.bytedance.sdk.component.oJ.si;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class kkU extends com.bytedance.sdk.component.oJ.Pfn<JSONObject, JSONObject> {
    private WeakReference<com.bytedance.sdk.component.jFA.ba> oJ;

    public kkU(com.bytedance.sdk.component.jFA.ba baVar) {
        this.oJ = new WeakReference<>(baVar);
    }

    public static void oJ(si siVar, com.bytedance.sdk.component.jFA.ba baVar) {
        siVar.oJ("preventTouchEvent", new kkU(baVar));
    }

    @Override // com.bytedance.sdk.component.oJ.Pfn
    public JSONObject oJ(JSONObject jSONObject, com.bytedance.sdk.component.oJ.ba baVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        try {
            boolean optBoolean = jSONObject.optBoolean("isPrevent", false);
            com.bytedance.sdk.component.jFA.ba baVar2 = this.oJ.get();
            if (baVar2 != null) {
                baVar2.setIsPreventTouchEvent(optBoolean);
                jSONObject2.put("success", true);
            } else {
                jSONObject2.put("success", false);
            }
        } catch (Throwable unused) {
            jSONObject2.put("success", false);
        }
        return jSONObject2;
    }
}
