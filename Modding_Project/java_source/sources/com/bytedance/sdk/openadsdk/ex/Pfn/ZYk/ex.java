package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.component.utils.QSm;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex implements tB {
    public long ZYk;
    public int ex = 0;
    public long oJ;
    public int tB;

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
            jSONObject.put("total_duration", this.oJ);
            jSONObject.put("buffers_time", this.ZYk);
            jSONObject.put("break_reason", this.tB);
            jSONObject.put("video_backup", this.ex);
        } catch (Throwable th2) {
            QSm.tB("FeedBreakModel", th2.getMessage());
        }
    }
}
