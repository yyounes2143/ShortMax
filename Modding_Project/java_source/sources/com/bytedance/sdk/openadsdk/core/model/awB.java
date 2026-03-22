package com.bytedance.sdk.openadsdk.core.model;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class awB {
    private final int ZYk;
    private final int oJ;

    public awB(JSONObject jSONObject) {
        this.oJ = jSONObject.optInt("auto_click", 0);
        this.ZYk = jSONObject.optInt("hidden_bar", 0);
    }

    public boolean ZYk() {
        if (this.ZYk == 1) {
            return true;
        }
        return false;
    }

    public int oJ() {
        return this.oJ;
    }

    public JSONObject tB() {
        try {
            JSONObject jSONObject = new JSONObject();
            int i10 = this.oJ;
            if (i10 == 1) {
                jSONObject.put("auto_click", i10);
            }
            if (this.ZYk == 1) {
                jSONObject.put("hidden_bar", 1);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public static boolean oJ(cY cYVar) {
        if (cYVar == null || !cYVar.Br() || cYVar.CE() == null) {
            return false;
        }
        return cYVar.CE().ZYk();
    }
}
