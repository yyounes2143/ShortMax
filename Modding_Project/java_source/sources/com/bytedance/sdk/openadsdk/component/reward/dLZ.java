package com.bytedance.sdk.openadsdk.component.reward;

import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.HyG;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class dLZ {
    private boolean Pfn;
    private long ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f12996ba;
    private long ex;
    private final oJ oJ;
    private long tB;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ();
    }

    public dLZ(oJ oJVar) {
        this.Pfn = true;
        this.oJ = oJVar;
        int oJ2 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("reward_callback_fallback", 0);
        if (oJ2 != 0) {
            this.Pfn = false;
            if (oJ2 == 2) {
                this.f12996ba = true;
            }
        }
    }

    public static void oJ(cY cYVar, boolean z10, final int i10) {
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), cYVar, HyG.oJ(cYVar), z10 ? "reward_callback" : "reward_fail_callback", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.dLZ.1
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("reason", i10);
                    jSONObject2.put("pag_json_data", jSONObject3);
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public void ZYk() {
        if (this.Pfn) {
            return;
        }
        this.tB = SystemClock.elapsedRealtime();
    }

    public void ex() {
        if (this.oJ != null) {
            long j10 = this.ex;
            long j11 = 0;
            if (this.tB > 0) {
                j11 = SystemClock.elapsedRealtime() - this.tB;
            }
            long j12 = (j10 + j11) / 1000;
            if (this.Pfn) {
                return;
            }
            if (!this.f12996ba && j12 < this.ZYk) {
                return;
            }
            this.oJ.oJ();
        }
    }

    public void tB() {
        this.Pfn = true;
    }

    public void oJ(long j10) {
        if (j10 <= this.ZYk) {
            return;
        }
        this.ZYk = j10;
    }

    public void oJ() {
        if (!this.Pfn && this.tB > 0) {
            this.ex += SystemClock.elapsedRealtime() - this.tB;
            this.tB = 0L;
        }
    }
}
