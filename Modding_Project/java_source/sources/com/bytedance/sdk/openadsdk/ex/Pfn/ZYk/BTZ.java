package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.component.utils.QSm;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BTZ implements tB {
    private long ZYk;
    private long ex;
    private String oJ;
    private long tB;

    public void ZYk(long j10) {
        this.tB = j10;
    }

    public void oJ(String str) {
        this.oJ = str;
    }

    public void tB(long j10) {
        this.ex = j10;
    }

    public void oJ(long j10) {
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
            jSONObject.put("load_time", this.tB);
            jSONObject.put("local_cache", this.ex);
        } catch (Throwable th2) {
            QSm.tB("LoadVideoSuccessModel", th2.getMessage());
        }
    }
}
