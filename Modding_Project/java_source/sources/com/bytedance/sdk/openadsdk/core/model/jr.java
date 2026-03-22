package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class jr {
    private JSONObject BTZ;
    private int Pfn;
    private int PiB;
    private Jc Ry;
    private int WcQ;

    /* renamed from: ba  reason: collision with root package name */
    private int f13231ba;
    private JSONObject cFZ;
    private boolean dLZ;
    private int ex;
    private String jFA;
    private int oJ;
    private int tB;
    private int ZYk = 10;

    /* renamed from: so  reason: collision with root package name */
    private int f13233so = 1;
    private oJ kkU = new oJ();
    private int awB = 1;
    private String eZI = "Next Ad";

    /* renamed from: si  reason: collision with root package name */
    private String f13232si = "Next ad in %1$ds";

    public static jr oJ(String str) {
        jr jrVar = new jr();
        if (str == null) {
            return jrVar;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            jrVar.oJ = jSONObject.optInt("auto_switch");
            jrVar.ZYk = jSONObject.optInt("playable_preload_count");
            jrVar.tB = jSONObject.optInt("disable_on_interaction");
            jrVar.ex = jSONObject.optInt("ceiling_type");
            jrVar.Pfn = jSONObject.optInt("can_loop");
            jrVar.f13231ba = jSONObject.optInt("multi_skip_time", -1);
            jrVar.f13233so = jSONObject.optInt("load_more_strategy");
            jrVar.awB = jSONObject.optInt("report_show_by_percent", 1);
            JSONObject optJSONObject = jSONObject.optJSONObject("gesture_tpl_info");
            jrVar.cFZ = optJSONObject;
            if (optJSONObject != null) {
                Jc oJ2 = Jc.oJ(optJSONObject);
                jrVar.Ry = oJ2;
                if (oJ2 != null && !TextUtils.isEmpty(oJ2.tB())) {
                    com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ().oJ(new com.bytedance.sdk.openadsdk.core.kkU.so.oJ().oJ(jrVar.Ry.oJ()).ZYk(jrVar.Ry.ZYk()).tB(jrVar.Ry.tB()).ex(jrVar.Ry.ex()), "guide");
                }
                int optInt = jrVar.cFZ.optInt("delay_show_time", 5);
                jrVar.PiB = optInt;
                if (optInt < 0) {
                    jrVar.PiB = 5;
                }
                int optInt2 = jrVar.cFZ.optInt("dismiss_after_idle_time", 3);
                jrVar.WcQ = optInt2;
                if (optInt2 <= 0) {
                    jrVar.WcQ = 3;
                }
            }
            jrVar.jFA = jSONObject.optString("agg_endcard_url");
            jrVar.dLZ = jSONObject.optBoolean("has_more");
            jrVar.BTZ = jSONObject.optJSONObject("session_params");
            jrVar.kkU = oJ.oJ(jSONObject.optJSONObject("layout_config"));
        } catch (JSONException unused) {
        }
        return jrVar;
    }

    public JSONObject BTZ() {
        return this.BTZ;
    }

    public int Pfn() {
        return this.WcQ;
    }

    public boolean PiB() {
        return this.dLZ;
    }

    public boolean WcQ() {
        if (this.tB == 1) {
            return true;
        }
        return false;
    }

    public JSONObject ZYk() {
        Jc jc2 = this.Ry;
        if (jc2 == null) {
            return null;
        }
        try {
            String ex = jc2.ex();
            if (!TextUtils.isEmpty(ex)) {
                return new JSONObject(ex);
            }
            String oJ2 = com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ().oJ("guide", this.Ry.oJ(), this.Ry.ZYk());
            if (TextUtils.isEmpty(oJ2)) {
                return null;
            }
            return new JSONObject(oJ2);
        } catch (JSONException unused) {
            return null;
        }
    }

    public boolean awB() {
        if (this.oJ == 1) {
            return true;
        }
        return false;
    }

    public oJ ba() {
        return this.kkU;
    }

    public String cFZ() {
        return this.jFA;
    }

    public boolean dLZ() {
        if (this.ex == 1) {
            return true;
        }
        return false;
    }

    public int eZI() {
        return this.ZYk;
    }

    public int ex() {
        return this.PiB;
    }

    public int jFA() {
        return this.f13231ba;
    }

    public boolean kkU() {
        if (this.Pfn == 1) {
            return true;
        }
        return false;
    }

    public JSONObject si() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("auto_switch", this.oJ);
            jSONObject.put("playable_preload_count", this.ZYk);
            jSONObject.put("disable_on_interaction", this.tB);
            jSONObject.put("ceiling_type", this.ex);
            jSONObject.put("can_loop", this.Pfn);
            jSONObject.put("multi_skip_time", this.f13231ba);
            jSONObject.put("load_more_strategy", this.f13233so);
            jSONObject.put("report_show_by_percent", this.awB);
            jSONObject.put("gesture_tpl_info", this.cFZ);
            jSONObject.put("agg_endcard_url", this.jFA);
            jSONObject.put("layoutConfig", this.kkU.ba());
            jSONObject.put("has_more", this.dLZ);
            jSONObject.put("session_params", this.BTZ);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public int so() {
        return this.f13233so;
    }

    public JSONObject tB() {
        Jc jc2 = this.Ry;
        if (jc2 == null) {
            return null;
        }
        return jc2.Pfn();
    }

    /* loaded from: classes3.dex */
    public static class oJ {
        private int Pfn;
        private int ZYk;
        private int ex;
        private int oJ;
        private int tB;

        public static oJ oJ(JSONObject jSONObject) {
            oJ oJVar = new oJ();
            if (jSONObject == null) {
                return oJVar;
            }
            oJVar.oJ = Math.max(0, jSONObject.optInt("padding_left", 0));
            oJVar.ZYk = Math.max(0, jSONObject.optInt("padding_right", 0));
            oJVar.tB = Math.max(0, jSONObject.optInt("padding_top", 0));
            oJVar.ex = Math.max(0, jSONObject.optInt("padding_bottom", 0));
            oJVar.Pfn = Math.max(0, jSONObject.optInt("card_spacing", 0));
            return oJVar;
        }

        public int Pfn() {
            return this.Pfn;
        }

        public int ZYk() {
            return this.tB;
        }

        public JSONObject ba() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("padding_left", this.oJ);
                jSONObject.put("padding_right", this.ZYk);
                jSONObject.put("padding_top", this.tB);
                jSONObject.put("padding_bottom", this.ex);
                jSONObject.put("card_spacing", this.Pfn);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }

        public int ex() {
            return this.ZYk;
        }

        public int tB() {
            return this.oJ;
        }

        public int oJ() {
            return this.ex;
        }
    }

    public boolean oJ() {
        return this.awB == 1;
    }
}
