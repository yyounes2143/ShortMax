package com.bytedance.sdk.openadsdk.core.settings;

import com.bytedance.sdk.openadsdk.core.settings.BTZ;
import com.bytedance.sdk.openadsdk.core.settings.Pfn;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ extends BTZ {
    public oJ() {
        super("tt_set_apm.prop", new BTZ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.settings.oJ.1
            @Override // com.bytedance.sdk.openadsdk.core.settings.BTZ.oJ
            public void ZYk() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.settings.BTZ.oJ
            public void oJ() {
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn
    public void oJ(JSONObject jSONObject) {
        Pfn.oJ oJ = oJ();
        if (jSONObject.has("apm_url")) {
            oJ.oJ("apm_url", jSONObject.optString("apm_url"));
        }
        if (jSONObject.has("perf_con")) {
            try {
                JSONObject optJSONObject = jSONObject.optJSONObject("perf_con");
                if (optJSONObject != null && optJSONObject.has("perf_con_apm")) {
                    oJ.oJ("perf_con_apm", optJSONObject.optInt("perf_con_apm"));
                }
            } catch (Exception unused) {
            }
        }
        oJ.oJ();
        ex();
    }
}
