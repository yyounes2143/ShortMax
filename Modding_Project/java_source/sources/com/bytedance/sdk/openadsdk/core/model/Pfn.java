package com.bytedance.sdk.openadsdk.core.model;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn {
    private ex ZYk;
    private ArrayList<oJ> oJ;

    /* loaded from: classes3.dex */
    public static class oJ {
        private final String ZYk;
        private Set<com.bytedance.sdk.openadsdk.core.dLZ.kkU> ex;
        private final String oJ;
        private com.bytedance.sdk.openadsdk.core.dLZ.ex tB;

        public oJ(JSONObject jSONObject) {
            this.oJ = jSONObject.optString("vast_url");
            this.ZYk = jSONObject.optString("vast_content");
            JSONObject optJSONObject = jSONObject.optJSONObject("videoTrackers");
            if (optJSONObject != null) {
                com.bytedance.sdk.openadsdk.core.dLZ.ex exVar = new com.bytedance.sdk.openadsdk.core.dLZ.ex();
                this.tB = exVar;
                exVar.oJ(optJSONObject);
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("viewabilityVendor");
            if (optJSONArray != null) {
                this.ex = com.bytedance.sdk.openadsdk.core.dLZ.kkU.oJ(optJSONArray);
            }
        }

        public JSONObject Pfn() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("vast_url", this.oJ);
            jSONObject.put("vast_content", this.ZYk);
            com.bytedance.sdk.openadsdk.core.dLZ.ex exVar = this.tB;
            if (exVar != null) {
                jSONObject.put("videoTrackers", exVar.oJ());
            }
            if (this.ex != null) {
                JSONArray jSONArray = new JSONArray();
                for (com.bytedance.sdk.openadsdk.core.dLZ.kkU kku : this.ex) {
                    if (kku != null) {
                        jSONArray.put(kku.ex());
                    }
                }
                jSONObject.put("viewabilityVendor", jSONArray);
            }
            return jSONObject;
        }

        public Set<com.bytedance.sdk.openadsdk.core.dLZ.kkU> ZYk() {
            return this.ex;
        }

        public String ex() {
            return this.ZYk;
        }

        public com.bytedance.sdk.openadsdk.core.dLZ.ex oJ() {
            return this.tB;
        }

        public String tB() {
            return this.oJ;
        }

        public void oJ(com.bytedance.sdk.openadsdk.core.dLZ.ex exVar) {
            this.tB = exVar;
        }

        public void oJ(Set<com.bytedance.sdk.openadsdk.core.dLZ.kkU> set) {
            this.ex = set;
        }
    }

    public Pfn(JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            oJ oJVar = new oJ(jSONArray.optJSONObject(i10));
            if (this.oJ == null) {
                this.oJ = new ArrayList<>();
            }
            this.oJ.add(oJVar);
        }
    }

    public static boolean oJ(cY cYVar) {
        if (cYVar == null || cYVar.Xe()) {
            return false;
        }
        int qnr = cYVar.qnr();
        int Dc = cYVar.Dc();
        return (qnr == 3 || qnr == 7 || qnr == 8) && (Dc == 5 || Dc == 15 || Dc == 50);
    }

    public JSONArray ZYk() {
        JSONArray jSONArray = new JSONArray();
        ArrayList<oJ> arrayList = this.oJ;
        if (arrayList != null) {
            try {
                Iterator<oJ> it = arrayList.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().Pfn());
                }
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    public boolean ex() {
        ArrayList<oJ> arrayList = this.oJ;
        if (arrayList != null && !arrayList.isEmpty()) {
            return true;
        }
        return false;
    }

    @Nullable
    public ex tB() {
        if (this.ZYk == null) {
            this.ZYk = new ex();
            ArrayList<oJ> arrayList = this.oJ;
            if (arrayList != null) {
                Iterator<oJ> it = arrayList.iterator();
                while (it.hasNext()) {
                    oJ next = it.next();
                    com.bytedance.sdk.openadsdk.core.dLZ.ex oJ2 = next.oJ();
                    Set<com.bytedance.sdk.openadsdk.core.dLZ.kkU> ZYk = next.ZYk();
                    if (oJ2 != null) {
                        this.ZYk.oJ().oJ(oJ2);
                    }
                    if (ZYk != null) {
                        this.ZYk.ZYk().addAll(ZYk);
                    }
                }
            }
        }
        return this.ZYk;
    }

    public ArrayList<oJ> oJ() {
        return this.oJ;
    }
}
