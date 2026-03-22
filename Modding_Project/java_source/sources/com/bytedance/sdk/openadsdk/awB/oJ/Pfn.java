package com.bytedance.sdk.openadsdk.awB.oJ;

import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn {
    public static void oJ(final String str, final String str2, final int i10, final String str3) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ(str, false, 10, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.oJ.Pfn.1
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("url", str2);
                jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i10);
                jSONObject.put("error_msg", str3);
                return ex.ZYk().oJ(str).ZYk(jSONObject.toString());
            }
        });
    }
}
