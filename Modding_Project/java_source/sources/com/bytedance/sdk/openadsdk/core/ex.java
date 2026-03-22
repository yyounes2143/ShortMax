package com.bytedance.sdk.openadsdk.core;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex {
    public static void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str, int i10, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("type", i10);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, str, "convert_track", jSONObject);
    }
}
