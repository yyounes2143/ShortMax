package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private cY BTZ;
    private cY Pfn;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private jr f13236ba;
    private String dLZ;
    private int jFA;
    private Id kkU;
    private String oJ;
    private String tB;
    private List<cY> ex = new ArrayList();
    private JSONObject cFZ = new JSONObject();

    /* renamed from: so  reason: collision with root package name */
    private volatile boolean f13237so = false;

    public jr BTZ() {
        return this.f13236ba;
    }

    public boolean Pfn() {
        List<cY> list = this.ex;
        if (list != null && list.size() > 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public JSONObject PiB() {
        try {
            JSONObject jSONObject = new JSONObject();
            Id cFZ = cFZ();
            if (cFZ != null) {
                jSONObject.put("loop_config", cFZ.dLZ());
            }
            jr BTZ = BTZ();
            if (BTZ != null) {
                jSONObject.put("multi_ad_config", BTZ.si());
            }
            List<cY> list = this.ex;
            if (list != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i10 = 0; i10 < this.ex.size(); i10++) {
                    jSONArray.put(this.ex.get(i10).mf());
                }
                jSONObject.put("creatives", jSONArray);
            }
            jSONObject.put("multi_ad_style", this.jFA);
            jSONObject.put("request_id", this.oJ);
            return jSONObject;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.oJ("AdInfo", "toJsonObj: ", th2);
            return null;
        }
    }

    public String WcQ() {
        return this.dLZ;
    }

    public String ZYk() {
        cY ba2 = ba();
        if (ba2 != null) {
            return ba2.iPr();
        }
        return "";
    }

    public cY awB() {
        return this.Pfn;
    }

    public cY ba() {
        if (this.ex.size() > 0) {
            return this.ex.get(0);
        }
        return null;
    }

    public Id cFZ() {
        return this.kkU;
    }

    public cY dLZ() {
        return this.BTZ;
    }

    public List<cY> ex() {
        return this.ex;
    }

    public void jFA() {
        this.f13237so = false;
    }

    public boolean kkU() {
        if (this.jFA == 1) {
            return true;
        }
        return false;
    }

    public JSONObject oJ() {
        return this.cFZ;
    }

    public boolean so() {
        return this.f13237so;
    }

    public int tB() {
        return this.ZYk;
    }

    public void oJ(JSONObject jSONObject) {
        this.cFZ = jSONObject;
    }

    public void tB(String str) {
        this.dLZ = str;
    }

    public void oJ(String str) {
        this.oJ = str;
    }

    public void ZYk(String str) {
        this.tB = str;
    }

    public void oJ(int i10) {
        this.ZYk = i10;
    }

    public void ZYk(int i10) {
        this.jFA = i10;
    }

    public void oJ(cY cYVar) {
        this.ex.add(cYVar);
        if (this.BTZ == null) {
            this.BTZ = cYVar;
        }
    }

    public static oJ ZYk(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            oJ oJVar = new oJ();
            oJVar.oJ(Id.oJ(jSONObject.optJSONObject("loop_config")));
            oJVar.ZYk(jSONObject.optInt("multi_ad_style", 0));
            JSONArray optJSONArray = jSONObject.optJSONArray("creatives");
            if (optJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    cY oJ = com.bytedance.sdk.openadsdk.core.ZYk.oJ(optJSONArray.optJSONObject(i10), null, null, oJVar, i10);
                    if (oJ != null) {
                        arrayList.add(oJ);
                    }
                }
                oJVar.oJ(arrayList);
            }
            oJVar.oJ(jSONObject.optString("request_id", ""));
            String optString = jSONObject.optString("multi_ad_config");
            if (!TextUtils.isEmpty(optString)) {
                oJVar.oJ(jr.oJ(optString));
            }
            return oJVar;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.oJ("AdInfo", "fromJson: ", th2);
            return null;
        }
    }

    public void oJ(List<cY> list) {
        this.ex = list;
        if (list.isEmpty()) {
            return;
        }
        this.BTZ = list.get(0);
    }

    public static Map<String, cY> oJ(oJ oJVar) {
        if (oJVar == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (cY cYVar : oJVar.ex()) {
            if (!TextUtils.isEmpty(cYVar.PQw())) {
                hashMap.put(cYVar.PQw(), cYVar);
            }
        }
        if (hashMap.size() != 0) {
            return hashMap;
        }
        return null;
    }

    public void oJ(Id id2) {
        this.kkU = id2;
    }

    public void oJ(jr jrVar) {
        this.f13236ba = jrVar;
    }

    public void ZYk(cY cYVar) {
        this.Pfn = cYVar;
    }
}
