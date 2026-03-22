package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Xe {
    private int ZYk;
    private int oJ;
    private String tB = "Next Ad";

    public String ZYk() {
        return this.tB;
    }

    public JSONObject ex() {
        JSONObject jSONObject = new JSONObject();
        try {
            int i10 = this.oJ;
            if (i10 != -1) {
                jSONObject.put("endcard_show_time", i10);
            }
            jSONObject.put("is_allow_pause", this.ZYk);
            if (!TextUtils.isEmpty(this.tB)) {
                jSONObject.put("endcard_next_ad_text", this.tB);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public int oJ() {
        return this.ZYk;
    }

    public int tB() {
        return this.oJ;
    }

    public void ZYk(int i10) {
        this.oJ = i10;
    }

    public void oJ(int i10) {
        this.ZYk = i10;
    }

    public void oJ(String str) {
        this.tB = str;
    }

    public static Xe oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Xe xe2 = new Xe();
        try {
            int max = Math.max(jSONObject.optInt("endcard_show_time", 0), 0);
            int optInt = jSONObject.optInt("is_allow_pause", 0);
            String optString = jSONObject.optString("endcard_next_ad_text", "Next Ad");
            xe2.ZYk(max);
            xe2.oJ(optInt);
            xe2.oJ(optString);
        } catch (Throwable unused) {
        }
        return xe2;
    }
}
