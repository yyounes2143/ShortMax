package com.bytedance.sdk.openadsdk.core.so;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.cY;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class dLZ {
    public static void oJ(String str, int i10, String str2, String str3, String str4, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (TextUtils.isEmpty(str2)) {
            str2 = com.bytedance.sdk.openadsdk.core.so.oJ(i10);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("render_source", str);
            cY.oJ PdF = cYVar.PdF();
            if (PdF != null) {
                jSONObject.put("tpl_id", PdF.ex());
                if ("Web".equals(str)) {
                    if (PdF.BTZ()) {
                        jSONObject.put("engine_version", "v3");
                    } else {
                        jSONObject.put("engine_version", "v1");
                    }
                }
            } else if (cYVar.BWx() != null) {
                jSONObject.put("tpl_id", cYVar.BWx().oJ());
                if ("Web".equals(str)) {
                    jSONObject.put("engine_version", "v3");
                }
            }
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.awB.tB.oJ().oJ(com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ(oJ(str3)).tB(str4).Pfn(cYVar != null ? cYVar.iPr() : "").ZYk(i10).ZYk(jSONObject.toString()).ba(str2));
    }

    private static int oJ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1364000502:
                if (str.equals("rewarded_video")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1263194568:
                if (str.equals("open_ad")) {
                    c10 = 2;
                    break;
                }
                break;
            case -764631662:
                if (str.equals("fullscreen_interstitial_ad")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 7;
            case 2:
                return 3;
            case 3:
                return 8;
            case 4:
                return 2;
            default:
                return 5;
        }
    }
}
