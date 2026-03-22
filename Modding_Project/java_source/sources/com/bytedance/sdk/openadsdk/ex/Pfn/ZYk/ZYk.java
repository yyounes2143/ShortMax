package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.component.utils.QSm;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk implements tB {
    private long ZYk;
    private int ex;
    private long oJ;
    private int tB;

    public void ZYk(long j10) {
        this.ZYk = j10;
    }

    public void oJ(long j10) {
        this.oJ = j10;
    }

    public void ZYk(int i10) {
        this.ex = i10;
    }

    public void oJ(int i10) {
        this.tB = i10;
    }

    @Override // com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.tB
    public void oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.oJ);
            jSONObject.put("total_duration", this.ZYk);
            jSONObject.put("vbtt_skip_type", this.tB);
            jSONObject.put("skip_reason", this.ex);
        } catch (Throwable th2) {
            QSm.tB("EndcardSkipModel", th2.getMessage());
        }
    }
}
