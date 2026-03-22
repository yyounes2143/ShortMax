package com.bytedance.sdk.openadsdk.core.model;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Jc {
    private JSONObject Pfn;
    private String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private oJ f13187ba;
    private String ex;
    private String oJ;
    private String tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        private JSONArray ZYk;
        private JSONArray oJ;
        private JSONArray tB;

        public JSONArray ZYk() {
            return this.ZYk;
        }

        public JSONObject ex() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("image", this.oJ);
                jSONObject.put("fetch", this.ZYk);
                jSONObject.put("script", this.tB);
            } catch (JSONException e10) {
                e10.getMessage();
            }
            return jSONObject;
        }

        public JSONArray oJ() {
            return this.oJ;
        }

        public JSONArray tB() {
            return this.tB;
        }

        public void ZYk(JSONArray jSONArray) {
            this.ZYk = jSONArray;
        }

        public void oJ(JSONArray jSONArray) {
            this.oJ = jSONArray;
        }

        public void tB(JSONArray jSONArray) {
            this.tB = jSONArray;
        }

        public static oJ oJ(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("image");
            oJ oJVar = new oJ();
            oJVar.oJ(optJSONArray);
            oJVar.ZYk(jSONObject.optJSONArray("fetch"));
            oJVar.tB(jSONObject.optJSONArray("script"));
            return oJVar;
        }
    }

    public JSONObject Pfn() {
        return this.Pfn;
    }

    public String ZYk() {
        return this.ZYk;
    }

    public oJ ba() {
        return this.f13187ba;
    }

    public JSONObject cFZ() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.oJ);
            jSONObject.put("md5", this.ZYk);
            jSONObject.put("url", this.tB);
            jSONObject.put("data", this.ex);
            jSONObject.put("custom_components", this.Pfn);
            oJ oJVar = this.f13187ba;
            if (oJVar != null) {
                jSONObject.put("preload", oJVar.ex());
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
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

    public static Jc oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Jc jc2 = new Jc();
        jc2.oJ = jSONObject.optString("id");
        jc2.ex = jSONObject.optString("data");
        jc2.tB = jSONObject.optString("url");
        jc2.ZYk = jSONObject.optString("md5");
        jc2.Pfn = jSONObject.optJSONObject("custom_components");
        JSONObject optJSONObject = jSONObject.optJSONObject("preload");
        if (optJSONObject != null) {
            jc2.f13187ba = oJ.oJ(optJSONObject);
        }
        return jc2;
    }
}
