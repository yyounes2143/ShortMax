package com.bytedance.sdk.openadsdk.core.kkU.so;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private String Pfn;
    private String ZYk;
    private String ex;
    private String oJ;
    private String tB;

    public String Pfn() {
        return this.Pfn;
    }

    public String ZYk() {
        return this.ZYk;
    }

    public String ex() {
        return this.ex;
    }

    public String oJ() {
        return this.oJ;
    }

    public String tB() {
        return this.tB;
    }

    public oJ Pfn(String str) {
        this.Pfn = str;
        return this;
    }

    public oJ ZYk(String str) {
        this.ZYk = str;
        return this;
    }

    public oJ ex(String str) {
        this.ex = str;
        return this;
    }

    public oJ oJ(String str) {
        this.oJ = str;
        return this;
    }

    public oJ tB(String str) {
        this.tB = str;
        return this;
    }

    public JSONObject oJ(oJ oJVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.oJ);
            jSONObject.put("md5", this.ZYk);
            jSONObject.put("url", this.tB);
            if (oJVar != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("id", oJVar.oJ());
                jSONObject2.put("md5", oJVar.ZYk());
                jSONObject2.put("url", oJVar.tB());
                jSONObject.put("overlay", jSONObject2);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }
}
