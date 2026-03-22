package com.bytedance.adsdk.ugeno.ex;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba {
    private List<oJ> ZYk;
    private oJ oJ;

    /* loaded from: classes3.dex */
    public static class oJ {
        private Map<String, String> Pfn;
        private String ZYk;

        /* renamed from: ba  reason: collision with root package name */
        private Map<String, Object> f11671ba;
        private String ex;
        private String oJ;
        private String tB = "global";

        public String Pfn() {
            return this.ZYk;
        }

        public String ZYk() {
            return this.ex;
        }

        public String ex() {
            return this.oJ;
        }

        public String oJ() {
            return this.tB;
        }

        public Map<String, String> tB() {
            return this.Pfn;
        }

        public String toString() {
            return "Action{scheme='" + this.tB + "', name='" + this.ex + "', params=" + this.Pfn + ", host='" + this.ZYk + "', origin='" + this.oJ + "', extra=" + this.f11671ba + '}';
        }

        public void ZYk(String str) {
            this.ex = str;
        }

        public void ex(String str) {
            this.ZYk = str;
        }

        public void oJ(String str) {
            this.tB = str;
        }

        public void tB(String str) {
            this.oJ = str;
        }

        public void ZYk(Map<String, Object> map) {
            this.f11671ba = map;
        }

        public void oJ(Map<String, String> map) {
            this.Pfn = map;
        }
    }

    public List<oJ> ZYk() {
        return this.ZYk;
    }

    public oJ oJ() {
        return this.oJ;
    }

    public static ba oJ(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            return null;
        }
        ba baVar = new ba();
        String optString = jSONObject.optString("on");
        JSONArray optJSONArray = jSONObject.optJSONArray("handlers");
        baVar.oJ = BTZ.oJ(optString, jSONObject2);
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
            oJ oJ2 = BTZ.oJ(optJSONArray.optString(i10), jSONObject2);
            if (oJ2 != null) {
                arrayList.add(oJ2);
            }
        }
        baVar.ZYk = arrayList;
        return baVar;
    }
}
