package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Ln {
    private int BTZ;
    private String Pfn;
    private int PiB;
    private int WcQ;
    private int ZYk;
    private String awB;

    /* renamed from: ba  reason: collision with root package name */
    private String f13188ba;
    private int cFZ;
    private int dLZ;
    private String eZI;
    private int ex;
    private int jFA;
    private boolean kkU;
    private int oJ;

    /* renamed from: si  reason: collision with root package name */
    private String f13189si;

    /* renamed from: so  reason: collision with root package name */
    private int f13190so;
    private boolean tB;

    public Ln(JSONObject jSONObject) {
        this.dLZ = 5;
        this.BTZ = 5;
        this.PiB = 10;
        this.WcQ = 20;
        this.awB = "Next Ad";
        this.eZI = "Next ad in %1$ds";
        this.f13189si = "Play Now";
        if (jSONObject == null) {
            return;
        }
        this.tB = jSONObject.optBoolean("is_playable");
        this.ex = jSONObject.optInt("playable_type", 0);
        this.Pfn = jSONObject.optString("playable_style");
        JSONObject optJSONObject = jSONObject.optJSONObject("playable");
        if (optJSONObject != null) {
            this.f13188ba = optJSONObject.optString("playable_url", "");
            this.cFZ = optJSONObject.optInt("playable_orientation", 0);
            this.ZYk = optJSONObject.optInt("new_style", 0);
            this.oJ = optJSONObject.optInt("close_2_app", 0);
            int ZYk = ZYk(this.ex);
            this.f13190so = optJSONObject.optInt("playable_webview_timeout", ZYk);
            this.jFA = optJSONObject.optInt("playable_js_timeout", ZYk);
            this.kkU = optJSONObject.optInt("playable_backup_enable", 0) == 1;
            this.dLZ = optJSONObject.optInt("wait_tips_time", 5);
            this.BTZ = optJSONObject.optInt("auto_to_next_time", 5);
            this.PiB = optJSONObject.optInt("next_ad_tips_show_time", 10);
            this.WcQ = optJSONObject.optInt("max_show_time", 20);
            this.eZI = optJSONObject.optString("next_ad_in_xs");
            this.awB = optJSONObject.optString("next_ad_text");
            this.f13189si = optJSONObject.optString("play_now_text");
        }
    }

    public static String BTZ(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return null;
        }
        return LpP.f13188ba;
    }

    public static int HL(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return 0;
        }
        return LpP.ZYk();
    }

    public static int IUZ(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return 0;
        }
        return LpP.tB();
    }

    public static boolean Id(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP != null && LpP.kkU()) {
            return true;
        }
        return false;
    }

    public static int Ln(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return 0;
        }
        return LpP.ex();
    }

    private static Ln LpP(cY cYVar) {
        if (cYVar == null) {
            return null;
        }
        return cYVar.oTd();
    }

    public static String PiB(cY cYVar) {
        if (cYVar == null) {
            return null;
        }
        Ln oTd = cYVar.oTd();
        if (oTd != null && oTd.tB) {
            String str = oTd.f13188ba;
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        if (cYVar.LS() == 20) {
            return cYVar.Oof();
        }
        if (cYVar.ib() == null) {
            return null;
        }
        return cYVar.ib().BTZ();
    }

    public static long QSm(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return 5L;
        }
        return LpP.so();
    }

    public static long RZ(cY cYVar) {
        return Math.max(QSm(cYVar), oq(cYVar));
    }

    public static boolean Ry(cY cYVar) {
        if (cFZ(cYVar) && nke(cYVar) == 0) {
            return true;
        }
        return false;
    }

    public static boolean WcQ(cY cYVar) {
        return true;
    }

    public static String Xe(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return null;
        }
        return LpP.cFZ();
    }

    private static int ZYk(int i10) {
        return i10 == 1 ? 10 : 5;
    }

    public static boolean awB(cY cYVar) {
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = cYVar.ib();
        if (ib2 == null || ib2.QSm() != 1) {
            return false;
        }
        return true;
    }

    public static int cY(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return 0;
        }
        return LpP.oJ();
    }

    public static String dLZ(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return null;
        }
        return LpP.Pfn;
    }

    public static int eZI(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return 0;
        }
        return LpP.cFZ;
    }

    public static boolean jFA(cY cYVar) {
        Ln oTd = cYVar.oTd();
        return oTd != null && oTd.tB && oTd.ZYk == 1;
    }

    public static String jr(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return null;
        }
        return LpP.Pfn();
    }

    public static boolean kkU(cY cYVar) {
        Ln oTd = cYVar.oTd();
        return oTd != null && cYVar.wHC() && oTd.tB && oTd.ZYk == 1;
    }

    private static int nke(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return 0;
        }
        return LpP.ex;
    }

    public static int oJ(int i10) {
        return i10 + 10;
    }

    public static long oq(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return 5L;
        }
        return LpP.jFA();
    }

    public static boolean si(cY cYVar) {
        if (cFZ(cYVar) && nke(cYVar) == 1) {
            return true;
        }
        return false;
    }

    public static boolean so(cY cYVar) {
        Ln oTd = cYVar.oTd();
        return oTd != null && !cYVar.wHC() && oTd.tB && oTd.ZYk == 1;
    }

    public static String tb(cY cYVar) {
        Ln LpP = LpP(cYVar);
        if (LpP == null) {
            return null;
        }
        return LpP.ba();
    }

    public String Pfn() {
        return this.awB;
    }

    public String ba() {
        return this.eZI;
    }

    public String cFZ() {
        return this.f13189si;
    }

    public int ex() {
        return this.WcQ;
    }

    public int tB() {
        return this.PiB;
    }

    public static boolean Pfn(cY cYVar) {
        Ln LpP = LpP(cYVar);
        return LpP != null && cYVar.wHC() && LpP.tB && !TextUtils.isEmpty(PiB(cYVar));
    }

    public static boolean ba(cY cYVar) {
        return Pfn(cYVar) && nke(cYVar) == 1;
    }

    public static boolean cFZ(cY cYVar) {
        Ln LpP = LpP(cYVar);
        return (LpP == null || cYVar.wHC() || !LpP.tB || TextUtils.isEmpty(PiB(cYVar))) ? false : true;
    }

    public static boolean ex(cY cYVar) {
        return tB(cYVar) && !jFA(cYVar);
    }

    public static boolean tB(cY cYVar) {
        return ZYk(cYVar) && nke(cYVar) == 1;
    }

    public int ZYk() {
        return this.BTZ;
    }

    public int oJ() {
        return this.dLZ;
    }

    public static boolean ZYk(cY cYVar) {
        Ln LpP = LpP(cYVar);
        return (LpP == null || !LpP.tB || TextUtils.isEmpty(PiB(cYVar))) ? false : true;
    }

    public static int oJ(cY cYVar) {
        int i10;
        Ln oTd = cYVar.oTd();
        if (oTd != null && (i10 = oTd.oJ) >= 0 && i10 <= 100) {
            return i10;
        }
        return 0;
    }

    public int jFA() {
        return this.jFA;
    }

    public boolean kkU() {
        return this.kkU;
    }

    public int so() {
        return this.f13190so;
    }

    public void oJ(JSONObject jSONObject) {
        try {
            jSONObject.put("is_playable", this.tB);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.QSm.tB("PlayableModel", e10.getMessage());
        }
        if (!TextUtils.isEmpty(this.f13188ba)) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("playable_url", this.f13188ba);
                jSONObject2.put("playable_orientation", this.cFZ);
                jSONObject2.put("new_style", this.ZYk);
                jSONObject2.put("close_2_app", this.oJ);
                jSONObject2.put("playable_webview_timeout", this.f13190so);
                jSONObject2.put("playable_js_timeout", this.jFA);
                jSONObject2.put("playable_backup_enable", this.kkU ? 1 : 0);
                jSONObject2.put("wait_tips_time", this.dLZ);
                jSONObject2.put("auto_to_next_time", this.BTZ);
                jSONObject2.put("next_ad_tips_show_time", this.PiB);
                jSONObject2.put("max_show_time", this.WcQ);
                jSONObject2.put("next_ad_in_xs", this.eZI);
                jSONObject2.put("play_now_text", this.f13189si);
                jSONObject2.put("next_ad_text", this.awB);
                jSONObject.put("playable", jSONObject2);
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.QSm.tB("PlayableModel", e11.getMessage());
            }
        }
        try {
            jSONObject.put("playable_type", this.ex);
        } catch (JSONException e12) {
            com.bytedance.sdk.component.utils.QSm.tB("PlayableModel", e12.getMessage());
        }
        try {
            jSONObject.put("playable_style", this.Pfn);
        } catch (JSONException e13) {
            com.bytedance.sdk.component.utils.QSm.tB("PlayableModel", e13.getMessage());
        }
    }
}
