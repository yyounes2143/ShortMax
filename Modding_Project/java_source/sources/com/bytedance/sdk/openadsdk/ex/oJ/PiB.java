package com.bytedance.sdk.openadsdk.ex.oJ;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PiB implements com.bytedance.sdk.openadsdk.awB.ZYk {
    private final boolean ZYk;
    private final com.bytedance.sdk.component.ba.oJ.ba.ex oJ;

    public PiB(boolean z10, com.bytedance.sdk.component.ba.oJ.ba.ex exVar) {
        this.oJ = exVar;
        this.ZYk = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.awB.ZYk
    @Nullable
    public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
        int i10;
        if (this.oJ == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("success", this.ZYk);
        jSONObject.put("url", this.oJ.ZYk());
        int ex = this.oJ.ex();
        if (ex <= 0) {
            ex = 0;
        }
        jSONObject.put("retry_times", ex);
        jSONObject.put("ad_id", this.oJ.ba());
        jSONObject.put("track_type", this.oJ.Pfn());
        if (this.ZYk) {
            if (this.oJ.kkU()) {
                i10 = 3;
            } else if (this.oJ.ex() <= 0) {
                i10 = 1;
            } else {
                i10 = 2;
            }
        } else {
            i10 = 4;
        }
        jSONObject.put("upload_scene", i10);
        String cFZ = this.oJ.cFZ();
        if (!TextUtils.isEmpty(cFZ)) {
            JSONArray jSONArray = new JSONArray();
            for (String str : cFZ.split(",")) {
                jSONArray.put(str);
            }
            jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, jSONArray);
        }
        String jFA = this.oJ.jFA();
        if (!TextUtils.isEmpty(jFA)) {
            JSONArray jSONArray2 = new JSONArray();
            for (String str2 : jFA.split(",")) {
                jSONArray2.put(str2);
            }
            jSONObject.put("error_msg", jSONArray2);
        }
        return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("track_link_result").ZYk(jSONObject.toString());
    }
}
