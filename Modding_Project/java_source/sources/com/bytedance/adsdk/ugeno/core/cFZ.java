package com.bytedance.adsdk.ugeno.core;

import android.text.TextUtils;
import com.adjust.sdk.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ {
    private String Pfn;
    private JSONObject ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private JSONObject f11661ba;
    private boolean cFZ;
    private JSONObject ex;
    private float jFA;
    private JSONObject oJ;

    /* renamed from: so  reason: collision with root package name */
    private float f11662so;
    private String tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        private LinkedList<oJ> Pfn;
        private String ZYk;

        /* renamed from: ba  reason: collision with root package name */
        private oJ f11663ba;
        private String cFZ;
        private JSONObject ex;
        private boolean jFA;
        private boolean kkU;
        private String oJ;

        /* renamed from: so  reason: collision with root package name */
        private String f11664so;
        private JSONObject tB;

        public List<oJ> Pfn() {
            return this.Pfn;
        }

        public JSONObject ba() {
            return this.ex;
        }

        public String toString() {
            return "UGNode{id='" + this.oJ + "', name='" + this.ZYk + "'}";
        }

        public JSONObject ex() {
            return this.tB;
        }

        public String ZYk() {
            return this.cFZ;
        }

        public String tB() {
            return this.ZYk;
        }

        public void ZYk(boolean z10) {
            this.kkU = z10;
        }

        public String oJ() {
            return this.oJ;
        }

        public void ZYk(oJ oJVar) {
            if (this.Pfn == null) {
                this.Pfn = new LinkedList<>();
            }
            this.Pfn.addLast(oJVar);
        }

        public void oJ(String str) {
            this.ZYk = str;
        }

        public void oJ(boolean z10) {
            this.jFA = z10;
        }

        public void oJ(oJ oJVar) {
            if (this.Pfn == null) {
                this.Pfn = new LinkedList<>();
            }
            this.Pfn.add(oJVar);
        }

        public void oJ(int i10, oJ oJVar) {
            if (this.Pfn == null) {
                this.Pfn = new LinkedList<>();
            }
            this.Pfn.add(i10, oJVar);
        }
    }

    public cFZ(JSONObject jSONObject, JSONObject jSONObject2) {
        this(jSONObject, jSONObject2, null);
    }

    private oJ Pfn() {
        if (!ex()) {
            return oJ(this.oJ, (oJ) null);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("flexDirection", "row");
            jSONObject.put("justifyContent", "flex_start");
            jSONObject.put("alignItems", "flex_start");
            jSONObject.put("clickable", false);
            jSONObject.put("width", "match_parent");
            jSONObject.put("height", "wrap_content");
            float f10 = this.f11662so;
            if (f10 > 0.0f) {
                jSONObject.put("width", f10);
            }
            float f11 = this.jFA;
            if (f11 > 0.0f) {
                jSONObject.put("height", f11);
            }
            String optString = this.ex.optString("xSize");
            if (!TextUtils.isEmpty(optString)) {
                JSONObject jSONObject2 = new JSONObject(optString);
                if (jSONObject2.optInt("width") > 0) {
                    jSONObject.put("width", jSONObject2.optInt("width"));
                }
                if (jSONObject2.optInt("height") > 0) {
                    jSONObject.put("height", jSONObject2.optInt("height"));
                }
            }
        } catch (JSONException unused) {
        }
        oJ oJVar = new oJ();
        oJVar.ZYk = "View";
        oJVar.oJ = "virtualNode";
        oJVar.tB = jSONObject;
        oJVar.f11663ba = null;
        oJVar.cFZ = this.tB;
        oJVar.f11664so = this.Pfn;
        oJVar.oJ(oJ(this.oJ, oJVar));
        return oJVar;
    }

    public String ZYk() {
        return this.tB;
    }

    public boolean ex() {
        return this.cFZ;
    }

    public oJ oJ() {
        return Pfn();
    }

    public List<oJ> tB() {
        if (this.ZYk == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = this.ZYk.keys();
        while (keys.hasNext()) {
            oJ oJ2 = oJ(this.ZYk.optJSONObject(keys.next()), (oJ) null);
            if (oJ2 != null) {
                arrayList.add(oJ2);
            }
        }
        return arrayList;
    }

    public cFZ(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        JSONObject optJSONObject;
        if (jSONObject != null) {
            if (jSONObject.has("body")) {
                this.oJ = jSONObject.optJSONObject("body");
            } else {
                this.oJ = jSONObject.optJSONObject("main_template");
            }
            this.ZYk = jSONObject.optJSONObject("sub_templates");
            if (jSONObject.has(Constants.REFERRER_API_META)) {
                optJSONObject = jSONObject.optJSONObject(Constants.REFERRER_API_META);
            } else {
                optJSONObject = jSONObject.optJSONObject("template_info");
            }
            if (optJSONObject != null) {
                if (jSONObject.has("body")) {
                    this.cFZ = true;
                    String optString = optJSONObject.optString("version");
                    this.tB = optString;
                    if (TextUtils.isEmpty(optString)) {
                        this.tB = "3.0";
                    }
                } else {
                    this.tB = optJSONObject.optString("sdk_version");
                }
                if (optJSONObject.has("adType")) {
                    this.Pfn = optJSONObject.optString("adType");
                }
            } else if (jSONObject.has("body")) {
                this.tB = "3.0";
                this.cFZ = true;
            }
            this.ex = jSONObject2;
            this.f11661ba = jSONObject3;
        }
    }

    public static boolean ex(oJ oJVar) {
        return (oJVar == null || oJVar.tB == null) ? false : true;
    }

    public boolean ZYk(oJ oJVar) {
        JSONObject ex;
        if (oJVar == null || (ex = oJVar.ex()) == null) {
            return false;
        }
        return TextUtils.equals(ex.optString("height"), "match_parent");
    }

    public void oJ(float f10, float f11) {
        this.f11662so = f10;
        this.jFA = f11;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.bytedance.adsdk.ugeno.core.cFZ.oJ oJ(org.json.JSONObject r12, com.bytedance.adsdk.ugeno.core.cFZ.oJ r13) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.core.cFZ.oJ(org.json.JSONObject, com.bytedance.adsdk.ugeno.core.cFZ$oJ):com.bytedance.adsdk.ugeno.core.cFZ$oJ");
    }

    public boolean tB(oJ oJVar) {
        JSONObject ex;
        if (oJVar == null || (ex = oJVar.ex()) == null) {
            return false;
        }
        return TextUtils.equals(ex.optString("position"), "absolute");
    }

    public boolean oJ(oJ oJVar) {
        JSONObject ex;
        if (oJVar == null || (ex = oJVar.ex()) == null) {
            return false;
        }
        return TextUtils.equals(ex.optString("width"), "match_parent");
    }

    private void oJ(JSONObject jSONObject, JSONObject jSONObject2) {
        if (this.f11661ba == null || jSONObject2 == null) {
            return;
        }
        try {
            String optString = this.f11661ba.optString(jSONObject2.optString("targetId"));
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject(optString);
            JSONObject optJSONObject = jSONObject2.optJSONObject("targetProps");
            if (optJSONObject != null) {
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Object opt = optJSONObject.opt(next);
                    if (TextUtils.equals(next, "events") && jSONObject3.has("events")) {
                        if (opt instanceof JSONArray) {
                            com.bytedance.adsdk.ugeno.cFZ.ZYk.oJ(jSONObject3.optJSONArray("events"), (JSONArray) opt);
                        }
                    } else {
                        jSONObject3.put(next, opt);
                    }
                }
                JSONArray optJSONArray = jSONObject.optJSONArray("children");
                if (optJSONArray == null) {
                    optJSONArray = new JSONArray();
                }
                optJSONArray.put(jSONObject3);
                if (jSONObject.has("children")) {
                    return;
                }
                jSONObject.put("children", optJSONArray);
            }
        } catch (JSONException unused) {
        }
    }
}
