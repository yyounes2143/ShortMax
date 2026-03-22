package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.component.utils.QSm;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class so implements tB {
    private long ZYk;
    private long oJ;
    private int tB;

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
            jSONObject.put("video_start_duration", this.oJ);
            jSONObject.put("video_cache_size", this.ZYk);
            jSONObject.put("is_auto_play", this.tB);
        } catch (Throwable th2) {
            QSm.tB("FeedPlayModel", th2.getMessage());
        }
    }
}
