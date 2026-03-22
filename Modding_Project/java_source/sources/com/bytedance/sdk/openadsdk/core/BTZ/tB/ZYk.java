package com.bytedance.sdk.openadsdk.core.BTZ.tB;

import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    public static void oJ(cY cYVar) {
        if (Ln.ZYk(cYVar)) {
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, "playable_preload", "preload_start", (JSONObject) null);
        }
    }

    public static void oJ(cY cYVar, long j10, long j11) {
        if (cYVar != null) {
            if (Ln.tB(cYVar) || Ln.ZYk(cYVar)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("loadzip_success_time", j10);
                    jSONObject.put("unzip_success_time", j11);
                } catch (JSONException e10) {
                    QSm.oJ("PlayableEvent", "onSuccess json error", e10);
                }
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, "playable_preload", "preload_success", jSONObject);
            }
        }
    }

    public static void oJ(cY cYVar, int i10, String str) {
        if (cYVar != null) {
            if (Ln.tB(cYVar) || Ln.ZYk(cYVar)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i10);
                    jSONObject.put("error_reason", str);
                } catch (JSONException e10) {
                    QSm.oJ("PlayableEvent", "onFail json error", e10);
                }
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, "playable_preload", "preload_fail", jSONObject);
            }
        }
    }
}
