package com.bytedance.sdk.openadsdk.core.dLZ;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private String BTZ;
    private String Pfn;
    ZYk ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f13135ba;
    private String cFZ;
    private String ex;
    private int jFA;
    private int kkU;

    /* renamed from: so  reason: collision with root package name */
    private double f13136so;
    tB tB;
    final com.bytedance.sdk.openadsdk.core.model.ex oJ = new com.bytedance.sdk.openadsdk.core.model.ex();
    private String dLZ = "VAST_ACTION_BUTTON";

    private JSONArray awB() {
        Set<kkU> ZYk = this.oJ.ZYk();
        if (ZYk == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (kkU kku : ZYk) {
            if (kku != null) {
                jSONArray.put(kku.ex());
            }
        }
        return jSONArray;
    }

    public int BTZ() {
        return this.kkU;
    }

    public String Pfn() {
        return this.Pfn;
    }

    public Set<kkU> PiB() {
        return this.oJ.ZYk();
    }

    public com.bytedance.sdk.openadsdk.core.model.ex WcQ() {
        return this.oJ;
    }

    public ZYk ZYk() {
        return this.ZYk;
    }

    public String ba() {
        return this.f13135ba;
    }

    public String cFZ() {
        return this.cFZ;
    }

    public int dLZ() {
        return this.jFA;
    }

    public String ex() {
        return this.ex;
    }

    public String jFA() {
        tB tBVar;
        String str = this.f13135ba;
        if (!TextUtils.isEmpty(this.BTZ)) {
            String str2 = this.BTZ;
            this.BTZ = null;
            return str2;
        }
        String str3 = this.dLZ;
        str3.hashCode();
        if (!str3.equals("VAST_ICON")) {
            if (str3.equals("VAST_END_CARD") && (tBVar = this.tB) != null && !TextUtils.isEmpty(tBVar.f13142so)) {
                str = this.tB.f13142so;
            }
        } else {
            ZYk zYk = this.ZYk;
            if (zYk != null && !TextUtils.isEmpty(zYk.f13142so)) {
                str = this.ZYk.f13142so;
            }
        }
        this.dLZ = "VAST_ACTION_BUTTON";
        return str;
    }

    public JSONObject kkU() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        ex oJ = this.oJ.oJ();
        if (oJ != null) {
            jSONObject.put("videoTrackers", oJ.oJ());
        }
        ZYk zYk = this.ZYk;
        if (zYk != null) {
            jSONObject.put("vastIcon", zYk.oJ());
        }
        tB tBVar = this.tB;
        if (tBVar != null) {
            jSONObject.put("endCard", tBVar.oJ());
        }
        jSONObject.put("title", this.ex);
        jSONObject.put(InMobiNetworkValues.DESCRIPTION, this.Pfn);
        jSONObject.put("clickThroughUrl", this.f13135ba);
        jSONObject.put("videoUrl", this.cFZ);
        jSONObject.put("videDuration", this.f13136so);
        jSONObject.put("videoWidth", this.jFA);
        jSONObject.put("videoHeight", this.kkU);
        jSONObject.put("viewabilityVendor", awB());
        return jSONObject;
    }

    public ex oJ() {
        return this.oJ.oJ();
    }

    public double so() {
        return this.f13136so;
    }

    public tB tB() {
        return this.tB;
    }

    public void Pfn(String str) {
        this.dLZ = str;
    }

    public void ZYk(String str) {
        this.Pfn = str;
    }

    public void ba(String str) {
        this.BTZ = str;
    }

    public void ex(String str) {
        this.cFZ = str;
    }

    public void oJ(ZYk zYk) {
        if (zYk != null) {
            zYk.oJ(this.cFZ);
        }
        this.ZYk = zYk;
    }

    public void tB(String str) {
        this.f13135ba = str;
    }

    public void ZYk(int i10) {
        this.kkU = i10;
    }

    public void oJ(tB tBVar) {
        if (tBVar != null) {
            tBVar.oJ(this.cFZ);
        }
        this.tB = tBVar;
    }

    public void oJ(String str) {
        this.ex = str;
    }

    public void oJ(double d10) {
        this.f13136so = d10;
    }

    public static oJ oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        oJ oJVar = new oJ();
        ex oJ = oJVar.oJ.oJ();
        if (oJ == null) {
            oJ = new ex();
            oJVar.oJ.oJ(oJ);
        }
        oJ.oJ(jSONObject.optJSONObject("videoTrackers"));
        oJVar.ZYk = ZYk.oJ(jSONObject.optJSONObject("vastIcon"));
        oJVar.tB = tB.ZYk(jSONObject.optJSONObject("endCard"));
        oJVar.ex = jSONObject.optString("title");
        oJVar.Pfn = jSONObject.optString(InMobiNetworkValues.DESCRIPTION);
        oJVar.f13135ba = jSONObject.optString("clickThroughUrl");
        oJVar.cFZ = jSONObject.optString("videoUrl");
        oJVar.f13136so = jSONObject.optDouble("videDuration");
        oJVar.jFA = jSONObject.optInt("videoWidth");
        oJVar.jFA = jSONObject.optInt("videoHeight");
        Set<kkU> ZYk = oJVar.oJ.ZYk();
        if (ZYk == null) {
            ZYk = new HashSet<>();
            oJVar.oJ.oJ(ZYk);
        }
        ZYk.addAll(kkU.oJ(jSONObject.optJSONArray("viewabilityVendor")));
        return oJVar;
    }

    public void oJ(cY cYVar) {
        this.oJ.oJ(cYVar);
        ZYk zYk = this.ZYk;
        if (zYk != null) {
            zYk.oJ(cYVar);
        }
        tB tBVar = this.tB;
        if (tBVar != null) {
            tBVar.oJ(cYVar);
        }
    }

    public void oJ(int i10) {
        this.jFA = i10;
    }

    public void oJ(Set<kkU> set) {
        this.oJ.ZYk(set);
    }
}
