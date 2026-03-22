package com.bytedance.adsdk.ugeno.core;

import android.content.Context;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class dLZ {
    private JSONObject ZYk;
    private Map<String, Object> ex;
    private Context oJ;
    private JSONObject tB;

    public void ZYk(JSONObject jSONObject) {
        this.tB = jSONObject;
    }

    public void oJ(Context context) {
        this.oJ = context;
    }

    public Map<String, Object> ZYk() {
        return this.ex;
    }

    public void oJ(JSONObject jSONObject) {
        this.ZYk = jSONObject;
    }

    public JSONObject oJ() {
        return this.tB;
    }

    public void oJ(Map<String, Object> map) {
        this.ex = map;
    }
}
