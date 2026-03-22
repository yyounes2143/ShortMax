package com.bytedance.sdk.openadsdk.core.kkU;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.BTZ;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex {
    private static String oJ = "";

    public static boolean ZYk(cY cYVar) {
        if (cYVar == null || cYVar.uvK() != 10) {
            return false;
        }
        return true;
    }

    public static boolean oJ(int i10) {
        return i10 == 10 || i10 == 9;
    }

    private static JSONArray tB(cY cYVar) {
        try {
            cY.oJ PdF = cYVar.PdF();
            if (PdF != null) {
                JSONObject jSONObject = new JSONObject(PdF.jFA());
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("original_price", Double.valueOf(jSONObject.optDouble("original_price", 0.0d)));
                jSONObject2.putOpt("price_unit", jSONObject.optString("price_unit"));
                jSONObject2.putOpt("discount", Double.valueOf(jSONObject.optDouble("discount", 0.0d)));
                jSONObject2.putOpt("product_name", jSONObject.optString("dpa_product_name"));
                jSONObject2.putOpt(InMobiNetworkValues.DESCRIPTION, jSONObject.optString("dpa_description"));
                JSONArray optJSONArray = jSONObject.optJSONArray("dpa_images");
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    jSONObject2.putOpt("image", optJSONArray.get(0));
                }
                jSONObject2.putOpt("brand_name", jSONObject.optString("dpa_brand_name"));
                jSONObject2.putOpt("sale_price_i18n", Integer.valueOf(jSONObject.optInt("sale_price_i18n")));
                jSONObject2.putOpt("real_price", Double.valueOf(jSONObject.optDouble("real_price", 0.0d)));
                jSONObject2.put("button_text", cYVar.ypD());
                JSONArray jSONArray = new JSONArray();
                JSONArray optJSONArray2 = jSONObject.optJSONArray("dpa_related_products");
                if (optJSONArray2 != null) {
                    jSONArray.put(jSONObject2);
                    for (int i10 = 0; i10 < optJSONArray2.length(); i10++) {
                        try {
                            JSONObject jSONObject3 = optJSONArray2.getJSONObject(i10);
                            jSONObject3.put("button_text", cYVar.ypD());
                            jSONArray.put(jSONObject3);
                        } catch (Throwable unused) {
                        }
                    }
                }
                return jSONArray;
            }
            return null;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static JSONObject oJ(cY cYVar, String str) {
        JSONObject mf2 = cYVar.mf();
        try {
            mf2.put("show_dislike", cYVar.LTg());
            mf2.put(MediaFormat.KEY_LANGUAGE, BTZ.ZYk());
            if ("open_ad".equals(str)) {
                JSONObject jSONObject = new JSONObject();
                String so2 = jFA.ZYk().so();
                int jFA = jFA.ZYk().jFA();
                jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, so2);
                jSONObject.put("app_icon_id", "@".concat(String.valueOf(jFA)));
                mf2.put("open_app_info", jSONObject);
            }
            mf2.put("os", "Android");
            JSONArray tB = tB(cYVar);
            if (tB != null) {
                mf2.put("dpa_data", tB);
            }
        } catch (Throwable th2) {
            QSm.tB("UgenUtils", "parseUGenDataInfo exception", th2.getMessage());
        }
        return mf2;
    }

    public static boolean oJ(cY cYVar) {
        return cYVar != null && cYVar.uvK() == 7;
    }

    public static String oJ() {
        return oJ;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r4v2 */
    public static JSONObject oJ(cY cYVar, com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB tBVar) {
        cY.oJ PdF;
        JSONObject jSONObject;
        tBVar.oJ("ad");
        String str = "";
        oJ = "";
        ?? r42 = 0;
        try {
            PdF = cYVar.PdF();
            if (PdF != null) {
                str = PdF.awB();
                if (TextUtils.isEmpty(str) && !TextUtils.isEmpty(PdF.WcQ()) && !TextUtils.isEmpty(PdF.ex())) {
                    str = com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ().oJ("ad", PdF.ex(), PdF.WcQ());
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                try {
                    jSONObject = new JSONObject(str);
                } catch (JSONException unused) {
                }
                try {
                    oJ = "getTemplate success";
                    tBVar.ZYk("local");
                    return jSONObject;
                } catch (JSONException unused2) {
                    String concat = "parse json exception data is ".concat(String.valueOf(str));
                    oJ = concat;
                    tBVar.oJ(2, concat, "local");
                    return null;
                }
            }
            String str2 = "local data is null id is " + PdF.ex() + " md5 is " + PdF.WcQ();
            oJ = str2;
            tBVar.oJ(3, str2, "net");
            return null;
        } catch (Throwable th3) {
            r42 = PdF;
            th = th3;
            String str3 = "get template error " + th.getMessage();
            oJ = str3;
            tBVar.oJ(2, str3, "local");
            return r42;
        }
    }
}
