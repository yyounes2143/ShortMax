package com.bytedance.sdk.openadsdk.awB.tB;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {

    /* loaded from: classes3.dex */
    public static class oJ {
        public final JSONObject ZYk;
        public final String oJ;

        public oJ(String str, JSONObject jSONObject) {
            this.oJ = str;
            this.ZYk = jSONObject;
            JSONObject optJSONObject = jSONObject.optJSONObject("device_info");
            if (optJSONObject != null) {
                try {
                    optJSONObject.put("gaid", com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().ZYk());
                    jSONObject.put("device_info", optJSONObject);
                } catch (JSONException unused) {
                }
            }
        }
    }

    public static ZYk oJ() {
        return ex.oJ();
    }
}
