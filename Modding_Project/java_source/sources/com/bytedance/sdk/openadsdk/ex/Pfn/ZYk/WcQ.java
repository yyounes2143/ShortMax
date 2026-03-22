package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.component.utils.QSm;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class WcQ implements tB {
    private final String Pfn;
    private long ZYk;
    private final int ex;
    private long oJ;
    private final int tB;

    public WcQ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ oJVar) {
        this.tB = oJVar.oJ();
        this.ex = oJVar.ZYk();
        this.Pfn = oJVar.tB();
    }

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
            jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, this.tB);
            jSONObject.put("extra_error_code", this.ex);
            jSONObject.put("error_message", this.Pfn);
        } catch (Throwable th2) {
            QSm.tB("PlayErrorModel", th2.getMessage());
        }
    }
}
