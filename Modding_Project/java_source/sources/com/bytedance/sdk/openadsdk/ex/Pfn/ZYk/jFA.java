package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.component.utils.QSm;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class jFA implements tB {
    private final long ZYk;
    private final String oJ;

    public jFA(String str, long j10) {
        this.oJ = str;
        this.ZYk = j10;
    }

    @Override // com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.tB
    public void oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.oJ);
            jSONObject.put("preload_size", this.ZYk);
        } catch (Throwable th2) {
            QSm.tB("LoadVideoCancelModel", th2.getMessage());
        }
    }
}
