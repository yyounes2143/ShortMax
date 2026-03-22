package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.component.utils.QSm;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ implements tB {
    private long ZYk;
    private long oJ;

    public void ZYk(long j10) {
        this.ZYk = j10;
    }

    public void oJ(long j10) {
        this.oJ = j10;
    }

    @Override // com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.tB
    public void oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.oJ);
            jSONObject.put("total_duration", this.ZYk);
        } catch (Throwable th2) {
            QSm.tB("FeedPauseModel", th2.getMessage());
        }
    }
}
