package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.component.utils.QSm;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class kkU implements tB {
    private String Pfn;
    private long ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f13338ba;
    private int ex;
    private String oJ;
    private long tB;

    public void ZYk(long j10) {
        this.tB = j10;
    }

    public void oJ(String str) {
        this.oJ = str;
    }

    public void tB(String str) {
        this.f13338ba = str;
    }

    public void ZYk(String str) {
        this.Pfn = str;
    }

    public void oJ(long j10) {
        this.ZYk = j10;
    }

    public void oJ(int i10) {
        this.ex = i10;
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
            jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, this.ex);
            jSONObject.put("error_message", this.Pfn);
            jSONObject.put("error_message_server", this.f13338ba);
        } catch (Throwable th2) {
            QSm.tB("LoadVideoErrorModel", th2.getMessage());
        }
    }
}
