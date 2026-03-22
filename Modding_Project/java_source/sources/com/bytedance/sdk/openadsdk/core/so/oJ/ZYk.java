package com.bytedance.sdk.openadsdk.core.so.oJ;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.BTZ;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB;
import com.bytedance.sdk.openadsdk.core.model.Jc;
import com.bytedance.sdk.openadsdk.core.model.RZ;
import com.bytedance.sdk.openadsdk.core.model.Ry;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private static String ZYk = "";
    public static String oJ = "https://pag_open_icon_id/appicon.png";

    public static JSONObject ZYk() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(MediaFormat.KEY_LANGUAGE, BTZ.ZYk());
            jSONObject.put("xSetting", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            UN.ZYk(jSONObject3);
            jSONObject3.put("platform", "android");
            jSONObject.put("xAppInfo", jSONObject3);
        } catch (Exception e10) {
            QSm.tB("TemplateUtils", e10.getMessage());
        }
        return jSONObject;
    }

    public static String oJ() {
        return ZYk;
    }

    public static boolean tB() {
        return true;
    }

    public static JSONObject oJ(float f10, float f11, boolean z10, @NonNull cY cYVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", "android");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", f10);
            jSONObject2.put("height", f11);
            if (z10) {
                jSONObject2.put("isLandscape", true);
            }
            jSONObject.put("AdSize", jSONObject2);
            jSONObject.put("creative", oJ(false, cYVar));
            jSONObject.put("template_Plugin", ZYk(cYVar.PdF()));
            jSONObject.put("diff_template_Plugin", oJ(cYVar.PdF()));
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    private static JSONObject tB(cY cYVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            UN.oJ(jSONObject, cYVar);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static String ZYk(cY.oJ oJVar) {
        com.bytedance.sdk.component.adexpress.oJ.tB.ZYk tB;
        if (oJVar != null) {
            String cFZ = oJVar.cFZ();
            return (!TextUtils.isEmpty(cFZ) || (tB = com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.tB(oJVar.ex())) == null) ? cFZ : tB.Pfn();
        }
        return "";
    }

    public static JSONObject oJ(cY cYVar) {
        JSONObject jSONObject = null;
        if (cYVar == null) {
            return null;
        }
        try {
            jSONObject = oJ(cYVar, false);
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            JSONObject jSONObject2 = new JSONObject();
            UN.ZYk(jSONObject2);
            jSONObject2.put("platform", "android");
            jSONObject.put("xAppInfo", jSONObject2);
            JSONObject ZYk2 = UN.ZYk(cYVar);
            ZYk2.put(MediaFormat.KEY_LANGUAGE, BTZ.ZYk());
            jSONObject.put("xSetting", ZYk2);
        } catch (Throwable th2) {
            th2.getMessage();
        }
        return jSONObject;
    }

    public static Map<String, String> ZYk(cY cYVar) {
        HashMap hashMap = null;
        if (cYVar == null) {
            return null;
        }
        List<Ry> yB = cYVar.yB();
        if (yB != null && yB.size() > 0) {
            hashMap = new HashMap();
            for (Ry ry : yB) {
                if (ry != null) {
                    hashMap.put(ry.oJ(), ry.cFZ());
                }
            }
            Ry Zjw = cYVar.Zjw();
            if (Zjw != null) {
                hashMap.put(Zjw.oJ(), Zjw.cFZ());
            }
        }
        return hashMap;
    }

    private static JSONObject oJ(cY cYVar, boolean z10) {
        JSONObject optJSONObject;
        JSONObject jSONObject = null;
        if (cYVar == null) {
            return null;
        }
        try {
            String FjF = cYVar.FjF();
            if (FjF != null) {
                JSONObject jSONObject2 = new JSONObject(FjF);
                JSONArray optJSONArray = jSONObject2.optJSONArray("creatives");
                if (z10) {
                    JSONObject jSONObject3 = (optJSONArray == null || optJSONArray.length() <= cYVar.ZYk() || (optJSONObject = optJSONArray.optJSONObject(cYVar.ZYk())) == null) ? null : new JSONObject(optJSONObject.toString());
                    if (jSONObject3 == null) {
                        return null;
                    }
                    jSONObject = jSONObject3;
                } else {
                    jSONObject = new JSONObject();
                }
                int LS = cYVar.LS();
                if (LS != 43 && LS != 44 && LS != 41) {
                    if (z10 && optJSONArray.length() > 0) {
                        optJSONArray.remove(0);
                    }
                    jSONObject.put("xRestCreatives", optJSONArray);
                }
                jSONObject2.remove("creatives");
                jSONObject.put("xRestResponse", jSONObject2);
            }
        } catch (Throwable th2) {
            QSm.oJ("TemplateUtils", "filterTemplateInfo", th2);
        }
        return jSONObject;
    }

    public static JSONObject oJ(float f10, float f11, boolean z10, cY cYVar, String str, tB tBVar) {
        ZYk = "";
        JSONObject jSONObject = null;
        if (cYVar == null) {
            return null;
        }
        try {
            JSONObject oJ2 = oJ(cYVar, true);
            if (oJ2 == null) {
                return null;
            }
            try {
                oJ(oJ2, cYVar, str);
                JSONObject ZYk2 = UN.ZYk(cYVar);
                ZYk2.put(MediaFormat.KEY_LANGUAGE, BTZ.ZYk());
                oJ2.put("xSetting", ZYk2);
                oJ2.put("xAdInfo", oJ(str, tB(cYVar), cYVar));
                JSONObject jSONObject2 = new JSONObject();
                UN.ZYk(jSONObject2);
                jSONObject2.put("platform", "android");
                oJ2.put("xAppInfo", jSONObject2);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("width", f10);
                jSONObject3.put("height", f11);
                if (z10) {
                    jSONObject3.put("isLandscape", true);
                }
                oJ2.put("xSize", jSONObject3);
                if (tBVar != null) {
                    tBVar.oJ("adv3");
                }
                Jc BWx = cYVar.BWx();
                if (BWx != null) {
                    String ex = BWx.ex();
                    if (!TextUtils.isEmpty(ex)) {
                        oJ2.put("xTemplate", new JSONObject(ex));
                        ZYk = "getTemplate success by local data";
                        if (tBVar != null) {
                            tBVar.ZYk("local");
                            return oJ2;
                        }
                        return oJ2;
                    }
                    String oJ3 = com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ().oJ("adv3", BWx.oJ(), BWx.ZYk());
                    if (!TextUtils.isEmpty(oJ3)) {
                        oJ2.put("xTemplate", new JSONObject(oJ3));
                        ZYk = "getTemplate success by db data";
                        if (tBVar != null) {
                            tBVar.ZYk("local");
                            return oJ2;
                        }
                        return oJ2;
                    }
                    String str2 = "local db data is null id is " + BWx.oJ() + " md5 is " + BWx.ZYk();
                    ZYk = str2;
                    if (tBVar != null) {
                        tBVar.oJ(3, str2, "net");
                        return oJ2;
                    }
                    return oJ2;
                }
                return oJ2;
            } catch (Exception e10) {
                e = e10;
                jSONObject = oJ2;
                String str3 = "load template exception " + e.getMessage();
                ZYk = str3;
                if (tBVar != null) {
                    tBVar.oJ(3, str3, "net");
                }
                return jSONObject;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    private static void oJ(JSONObject jSONObject, cY cYVar, String str) {
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2;
        if (cYVar == null || jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.has("h265_video")) {
                jSONObject.remove("h265_video");
            }
            if (!jSONObject.has("video") || (ib2 = cYVar.ib()) == null) {
                return;
            }
            JSONObject Ry = ib2.Ry();
            if (Ry != null) {
                if ("open_ad".equals(str)) {
                    Ry.put("video_duration", si.ex().Id(String.valueOf(cYVar.uv())));
                } else {
                    Ry.put("video_duration", ib2.ba() * ib2.Id());
                }
            }
            jSONObject.put("video", Ry);
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    private static JSONObject oJ(String str, JSONObject jSONObject, cY cYVar) {
        if (cYVar == null) {
            return jSONObject;
        }
        try {
            if ("open_ad".equals(str)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, jFA.ZYk().so());
                int jFA = jFA.ZYk().jFA();
                if (jFA != 0) {
                    int uvK = cYVar.uvK();
                    if (9 == uvK) {
                        jSONObject2.put("app_icon", oJ);
                    } else if (10 == uvK) {
                        jSONObject2.put("app_icon", "@".concat(String.valueOf(jFA)));
                    }
                }
                jSONObject.put("open_app_info", jSONObject2);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject oJ(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 == null) {
            return jSONObject;
        }
        JSONObject jSONObject3 = new JSONObject();
        if (jSONObject == null) {
            return jSONObject3;
        }
        try {
            JSONArray optJSONArray = jSONObject2.optJSONArray("keys");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    String optString = optJSONArray.optString(i10);
                    if (jSONObject.has(optString)) {
                        jSONObject3.put(optString, jSONObject.opt(optString));
                    }
                }
                jSONObject3.put("xSetting", jSONObject.opt("xSetting"));
                jSONObject3.put("xAdInfo", jSONObject.opt("xAdInfo"));
                jSONObject3.put("xAppInfo", jSONObject.opt("xAppInfo"));
                jSONObject3.put("xSize", jSONObject.opt("xSize"));
                jSONObject3.put("dynamic_configs", jSONObject.opt("dynamic_configs"));
                jSONObject3.put("xTemplate", jSONObject.opt("xTemplate"));
                jSONObject3.put("xRestCreatives", jSONObject.opt("xRestCreatives"));
                jSONObject3.put("xRestResponse", jSONObject.opt("xRestResponse"));
                return jSONObject3;
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static String oJ(cY.oJ oJVar) {
        if (oJVar != null) {
            return oJVar.so();
        }
        return "";
    }

    public static JSONObject oJ(boolean z10, @NonNull cY cYVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("button_text", cYVar.ypD());
            if (cYVar.Zjw() != null) {
                if (cYVar.Zjw() != null && !TextUtils.isEmpty(cYVar.Zjw().oJ())) {
                    jSONObject.put("icon", cYVar.Zjw().oJ());
                } else {
                    jSONObject.put("icon", "");
                }
            }
            JSONArray jSONArray = new JSONArray();
            if (cYVar.yB() != null) {
                for (int i10 = 0; i10 < cYVar.yB().size(); i10++) {
                    Ry ry = cYVar.yB().get(i10);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("height", ry.tB());
                    jSONObject2.put("width", ry.ZYk());
                    jSONObject2.put("url", ry.oJ());
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("image", jSONArray);
            jSONObject.put("image_mode", cYVar.Dc());
            jSONObject.put("interaction_type", cYVar.sQ());
            jSONObject.put("interaction_method", cYVar.NO());
            jSONObject.put("is_compliance_template", tB());
            jSONObject.put("title", cYVar.UUI());
            jSONObject.put(InMobiNetworkValues.DESCRIPTION, cYVar.Amz());
            jSONObject.put("source", cYVar.Qzd());
            JSONObject jSONObject3 = new JSONObject();
            RZ oq2 = cYVar.oq();
            if (oq2 == null) {
                oq2 = new RZ();
            }
            jSONObject3.put("ceiling_time", oq2.ex());
            jSONObject3.put("ceiling_ratio", oq2.Pfn());
            jSONObject3.put("expand_ratio", oq2.ba());
            jSONObject.put("interaction_params", jSONObject3);
            if (cYVar.Wd() != null) {
                jSONObject.put("comment_num", cYVar.Wd().Pfn());
                jSONObject.put("score", cYVar.Wd().ex());
                jSONObject.put(CampaignEx.JSON_KEY_APP_SIZE, cYVar.Wd().ba());
                jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_WX_APP, cYVar.Wd().so());
            }
            com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = cYVar.ib();
            if (ib2 != null) {
                JSONObject Ry = ib2.Ry();
                Ry.put("video_duration", ib2.ba() * ib2.Id());
                jSONObject.put("video", Ry);
            }
            if (cYVar.PdF() != null) {
                jSONObject.put("dynamic_creative", cYVar.PdF().jFA());
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String oJ(cY cYVar, String str) {
        List<Ry> yB;
        if (cYVar != null && (yB = cYVar.yB()) != null && yB.size() > 0) {
            for (Ry ry : yB) {
                if (ry != null && TextUtils.equals(str, ry.oJ())) {
                    return ry.cFZ();
                }
            }
        }
        return null;
    }
}
