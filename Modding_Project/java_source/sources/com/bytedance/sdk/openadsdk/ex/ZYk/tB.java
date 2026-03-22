package com.bytedance.sdk.openadsdk.ex.ZYk;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB implements ZYk {
    ZYk oJ;

    @Override // com.bytedance.sdk.openadsdk.ex.ZYk.ZYk
    public void oJ(JSONObject jSONObject, long j10) throws JSONException {
        ZYk zYk = this.oJ;
        if (zYk != null) {
            zYk.oJ(jSONObject, j10);
        }
        if (j10 <= 0) {
            j10 = System.currentTimeMillis();
        }
        jSONObject.put("event_ts", j10);
    }
}
