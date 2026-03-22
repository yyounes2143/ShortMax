package com.bytedance.sdk.openadsdk.core.cFZ;

import com.bytedance.sdk.component.cFZ.ZYk.ex;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.oq;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    private static JSONObject ZYk(String str, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "over_freq");
            jSONObject.put("rit", str);
            jSONObject.put("ad_sdk_version", BuildConfig.VERSION_NAME);
            jSONObject.put("timestamp", j10);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static void oJ(String str, long j10) {
        JSONObject ZYk = ZYk(str, j10);
        ex ZYk2 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ZYk();
        ZYk2.ZYk(HyG.ex("/api/ad/union/sdk/stats/"));
        ZYk2.ex(ZYk.toString());
        ZYk2.oJ(6);
        ZYk2.oJ("uploadFrequentEvent");
        ZYk2.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.cFZ.tB.1
            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk) {
            }

            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                iOException.getMessage();
                if (tBVar != null) {
                    oq.oJ(tBVar.ex());
                }
            }
        });
    }
}
