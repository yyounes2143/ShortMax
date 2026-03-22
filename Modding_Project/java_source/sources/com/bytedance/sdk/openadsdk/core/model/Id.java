package com.bytedance.sdk.openadsdk.core.model;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Id {
    private String oJ = "horizontal";
    private int ZYk = 1;
    private int tB = 1;
    private int ex = 0;
    private int Pfn = 0;

    /* renamed from: ba  reason: collision with root package name */
    private int f13185ba = 0;
    private int cFZ = 0;

    /* renamed from: so  reason: collision with root package name */
    private int f13186so = 5000;
    private int jFA = 500;
    private int kkU = 0;

    public int Pfn() {
        return this.Pfn;
    }

    public int ZYk() {
        return this.ZYk;
    }

    public int ba() {
        return this.f13185ba;
    }

    public int cFZ() {
        return this.cFZ;
    }

    public JSONObject dLZ() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, this.oJ);
            jSONObject.put("auto_loop", this.ZYk);
            jSONObject.put("allow_manual_loop", this.tB);
            jSONObject.put("unlimited_loop", this.ex);
            jSONObject.put("left_margin", this.Pfn);
            jSONObject.put("right_margin", this.f13185ba);
            jSONObject.put("ad_margin", this.cFZ);
            jSONObject.put("loop_interval_time", this.f13186so);
            jSONObject.put("flip_speed", this.jFA);
            jSONObject.put("stop_auto_loop", this.kkU);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public int ex() {
        return this.ex;
    }

    public int jFA() {
        return this.jFA;
    }

    public int kkU() {
        return this.kkU;
    }

    public String oJ() {
        return this.oJ;
    }

    public int so() {
        return this.f13186so;
    }

    public int tB() {
        return this.tB;
    }

    public static Id oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new Id();
        }
        Id id2 = new Id();
        id2.oJ = jSONObject.optString(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, "horizontal");
        id2.ZYk = jSONObject.optInt("auto_loop", 1);
        id2.tB = jSONObject.optInt("allow_manual_loop", 1);
        id2.ex = jSONObject.optInt("unlimited_loop", 0);
        id2.Pfn = jSONObject.optInt("left_margin", 0);
        id2.f13185ba = jSONObject.optInt("right_margin", 0);
        id2.cFZ = jSONObject.optInt("ad_margin", 0);
        id2.f13186so = jSONObject.optInt("loop_interval_time", 5000);
        id2.jFA = jSONObject.optInt("flip_speed", 500);
        id2.kkU = jSONObject.optInt("stop_auto_loop", 0);
        return id2;
    }
}
