package com.bytedance.sdk.openadsdk.core.model;

import androidx.annotation.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PiB {
    private String ZYk;
    private String oJ;
    private int tB;

    public String ZYk() {
        return this.ZYk;
    }

    @Nullable
    public JSONObject ex() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("u", this.oJ);
            jSONObject.put("ft", this.tB);
            jSONObject.put("fu", this.ZYk);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public String oJ() {
        return this.oJ;
    }

    public int tB() {
        return this.tB;
    }

    public void ZYk(String str) {
        this.ZYk = str;
    }

    public void oJ(String str) {
        this.oJ = str;
    }

    public void oJ(int i10) {
        this.tB = i10;
    }
}
