package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.component.utils.QSm;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba implements tB {
    private long ZYk;
    private long oJ;
    private int tB = 0;

    public void ZYk(long j10) {
        this.ZYk = j10;
    }

    public void oJ(long j10) {
        this.oJ = j10;
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
            jSONObject.put("video_backup", this.tB);
        } catch (Throwable th2) {
            QSm.tB("FeedOverModel", th2.getMessage());
        }
    }
}
