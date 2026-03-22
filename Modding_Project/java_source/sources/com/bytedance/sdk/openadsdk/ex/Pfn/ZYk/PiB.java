package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.component.utils.QSm;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PiB implements tB {
    public int ZYk;
    public long oJ;
    public long tB;

    public void ZYk(long j10) {
        this.tB = j10;
    }

    public void oJ(long j10) {
        this.oJ = j10;
    }

    public void oJ(int i10) {
        this.ZYk = i10;
    }

    @Override // com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.tB
    public void oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.oJ);
            jSONObject.put("buffers_count", this.ZYk);
            jSONObject.put("total_duration", this.tB);
        } catch (Throwable th2) {
            QSm.tB("PlayBufferModel", th2.getMessage());
        }
    }
}
