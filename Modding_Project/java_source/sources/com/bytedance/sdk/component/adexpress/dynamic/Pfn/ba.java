package com.bytedance.sdk.component.adexpress.dynamic.Pfn;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.ZYk.PiB;
import com.bytedance.sdk.component.adexpress.dynamic.Pfn.Pfn;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba {
    private static HashMap<String, String> cFZ;
    private tB Pfn;
    private JSONObject ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.dynamic.ex.ex f12671ba;
    private oJ ex;
    private JSONObject oJ;
    private com.bytedance.sdk.component.adexpress.dynamic.ex.tB tB;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class oJ {
        float ZYk;
        float oJ;
        boolean tB;

        public static oJ oJ(JSONObject jSONObject) {
            oJ oJVar = new oJ();
            if (jSONObject != null) {
                oJVar.oJ = (float) jSONObject.optDouble("width");
                oJVar.ZYk = (float) jSONObject.optDouble("height");
                oJVar.tB = jSONObject.optBoolean("isLandscape");
            }
            return oJVar;
        }
    }

    static {
        HashMap<String, String> hashMap = new HashMap<>();
        cFZ = hashMap;
        hashMap.put(MediaFormat.KEY_SUBTITLE, InMobiNetworkValues.DESCRIPTION);
        cFZ.put("source", "source|app.app_name");
        cFZ.put("screenshot", "dynamic_creative.screenshot");
    }

    public ba(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4) {
        this.oJ = jSONObject;
        this.ZYk = jSONObject2;
        this.tB = new com.bytedance.sdk.component.adexpress.dynamic.ex.tB(jSONObject2);
        this.ex = oJ.oJ(jSONObject3);
        this.f12671ba = com.bytedance.sdk.component.adexpress.dynamic.ex.ex.oJ(jSONObject4);
    }

    private void ZYk(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        com.bytedance.sdk.component.adexpress.dynamic.ex.tB tBVar;
        Object oJ2;
        Object oJ3;
        Object oJ4;
        Object oJ5;
        if (soVar == null || (tBVar = this.tB) == null || (oJ2 = tBVar.oJ("image.0.url")) == null) {
            return;
        }
        String valueOf = String.valueOf(oJ2);
        if (TextUtils.isEmpty(valueOf) || (oJ3 = this.tB.oJ("title")) == null) {
            return;
        }
        String valueOf2 = String.valueOf(oJ3);
        if (TextUtils.isEmpty(valueOf2) || (oJ4 = this.tB.oJ(InMobiNetworkValues.DESCRIPTION)) == null) {
            return;
        }
        String valueOf3 = String.valueOf(oJ4);
        if (TextUtils.isEmpty(valueOf3) || (oJ5 = this.tB.oJ("icon")) == null) {
            return;
        }
        String valueOf4 = String.valueOf(oJ5);
        if (TextUtils.isEmpty(valueOf4)) {
            return;
        }
        Object oJ6 = this.tB.oJ("app.app_name");
        Object oJ7 = this.tB.oJ("source");
        if (oJ6 == null && oJ7 == null) {
            return;
        }
        if (oJ6 == null) {
            oJ6 = oJ7;
        }
        String valueOf5 = String.valueOf(oJ6);
        if (TextUtils.isEmpty(valueOf5)) {
            return;
        }
        soVar.oJ("imageUrl", valueOf);
        soVar.oJ("title", valueOf2);
        soVar.oJ(InMobiNetworkValues.DESCRIPTION, valueOf3);
        soVar.oJ("icon", valueOf4);
        soVar.oJ(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, valueOf5);
        soVar.oJ(true);
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ex.so oJ(double d10, int i10, double d11, String str, PiB piB) {
        JSONObject jSONObject;
        this.tB.oJ();
        try {
            jSONObject = new JSONObject(this.f12671ba.ZYk);
        } catch (JSONException unused) {
            jSONObject = null;
        }
        com.bytedance.sdk.component.adexpress.dynamic.ex.so oJ2 = oJ(ex.oJ(this.oJ, jSONObject), (com.bytedance.sdk.component.adexpress.dynamic.ex.so) null);
        oJ(oJ2);
        Pfn pfn = new Pfn(d10, i10, d11, str, piB);
        Pfn.oJ oJVar = new Pfn.oJ();
        oJ oJVar2 = this.ex;
        oJVar.oJ = oJVar2.oJ;
        oJVar.ZYk = oJVar2.ZYk;
        oJVar.tB = 0.0f;
        pfn.oJ(oJVar);
        pfn.oJ(oJ2, 0.0f, 0.0f);
        pfn.oJ();
        com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk zYk = pfn.oJ;
        if (zYk.ex == 65536.0f) {
            return null;
        }
        return zYk.f12686ba;
    }

    private void oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        int oJ2;
        if (soVar == null) {
            return;
        }
        if (com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB() != null) {
            oJ2 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().awB();
        } else {
            oJ2 = com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ());
        }
        int ZYk = com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ(), oJ2);
        oJ oJVar = this.ex;
        float min = oJVar.tB ? oJVar.oJ : Math.min(oJVar.oJ, ZYk);
        if (this.ex.ZYk == 0.0f) {
            soVar.Pfn(min);
            soVar.kkU().Pfn().kkU("auto");
            soVar.ba(0.0f);
            return;
        }
        soVar.Pfn(min);
        int ZYk2 = com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ(), com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ()));
        oJ oJVar2 = this.ex;
        soVar.ba(oJVar2.tB ? oJVar2.ZYk : Math.min(oJVar2.ZYk, ZYk2));
        soVar.kkU().Pfn().kkU("fixed");
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ex.so oJ(JSONObject jSONObject, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        int length;
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("type");
        if (TextUtils.equals(optString, "custom-component-vessel")) {
            int optInt = jSONObject.optInt("componentId");
            if (this.f12671ba != null) {
                tB tBVar = new tB();
                this.Pfn = tBVar;
                JSONObject oJ2 = tBVar.oJ(this.f12671ba.oJ, optInt, jSONObject);
                if (oJ2 != null) {
                    jSONObject = oJ2;
                }
            }
        }
        com.bytedance.sdk.component.adexpress.dynamic.ex.so oJ3 = oJ(jSONObject);
        oJ3.oJ(soVar);
        JSONArray optJSONArray = jSONObject.optJSONArray("children");
        if (optJSONArray == null) {
            oJ3.oJ((List<com.bytedance.sdk.component.adexpress.dynamic.ex.so>) null);
            return oJ3;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
            JSONArray optJSONArray2 = optJSONArray.optJSONArray(i10);
            if (optJSONArray2 != null) {
                ArrayList arrayList3 = new ArrayList();
                if (TextUtils.equals(optString, "tag-group")) {
                    length = oJ3.kkU().Pfn().jXJ();
                } else {
                    length = optJSONArray2.length();
                }
                for (int i11 = 0; i11 < length; i11++) {
                    com.bytedance.sdk.component.adexpress.dynamic.ex.so oJ4 = oJ(optJSONArray2.optJSONObject(i11), oJ3);
                    if (com.bytedance.sdk.component.adexpress.ex.ZYk() && "skip-with-time".equals(oJ3.kkU().ZYk()) && !"transparent".equals(oJ3.cY()) && !TextUtils.isEmpty(oJ3.cY())) {
                        oJ4.tB(oJ3.cY());
                    }
                    arrayList.add(oJ4);
                    arrayList3.add(oJ4);
                }
                arrayList2.add(arrayList3);
            }
        }
        if (arrayList.size() > 0) {
            oJ3.oJ(arrayList);
        }
        if (arrayList2.size() > 0) {
            oJ3.ZYk(arrayList2);
        }
        return oJ3;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ex.so oJ(JSONObject jSONObject) {
        String oJ2;
        JSONObject jSONObject2;
        String optString = jSONObject.optString("type");
        String optString2 = jSONObject.optString("id");
        JSONObject optJSONObject = jSONObject.optJSONObject("values");
        jFA.oJ(optString, optJSONObject);
        JSONObject oJ3 = jFA.oJ(optString, jFA.oJ(jSONObject.optJSONArray("sceneValues")), optJSONObject);
        com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar = new com.bytedance.sdk.component.adexpress.dynamic.ex.so();
        if (TextUtils.isEmpty(optString2)) {
            soVar.ZYk(String.valueOf(soVar.hashCode()));
        } else {
            soVar.ZYk(optString2);
        }
        if (optJSONObject != null) {
            ZYk(soVar);
            soVar.tB((float) optJSONObject.optDouble(TextureRenderKeys.KEY_IS_X));
            soVar.ex((float) optJSONObject.optDouble(TextureRenderKeys.KEY_IS_Y));
            soVar.Pfn((float) optJSONObject.optDouble("width"));
            soVar.ba((float) optJSONObject.optDouble("height"));
            soVar.cFZ(optJSONObject.optInt("remainWidth"));
            com.bytedance.sdk.component.adexpress.dynamic.ex.Pfn pfn = new com.bytedance.sdk.component.adexpress.dynamic.ex.Pfn();
            pfn.oJ(optString);
            pfn.ZYk(optJSONObject.optString("data"));
            pfn.tB(optJSONObject.optString("dataExtraInfo"));
            com.bytedance.sdk.component.adexpress.dynamic.ex.ba oJ4 = com.bytedance.sdk.component.adexpress.dynamic.ex.ba.oJ(optJSONObject);
            pfn.oJ(oJ4);
            com.bytedance.sdk.component.adexpress.dynamic.ex.ba oJ5 = com.bytedance.sdk.component.adexpress.dynamic.ex.ba.oJ(oJ3);
            if (oJ5 == null) {
                pfn.ZYk(oJ4);
            } else {
                pfn.ZYk(oJ5);
            }
            oJ(oJ4);
            oJ(oJ5);
            if (TextUtils.equals(optString, "video-image-budget") && (jSONObject2 = this.ZYk) != null) {
                oJ(pfn, jSONObject2.optInt("image_mode"));
            }
            String ZYk = pfn.ZYk();
            com.bytedance.sdk.component.adexpress.dynamic.ex.ba Pfn = pfn.Pfn();
            if (cFZ.containsKey(ZYk) && !Pfn.LS()) {
                Pfn.QSm(cFZ.get(ZYk));
            }
            if (Pfn.LS()) {
                oJ2 = pfn.tB();
            } else {
                oJ2 = oJ(pfn.tB());
            }
            if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                if (TextUtils.equals(ZYk, "star") || TextUtils.equals(ZYk, "text_star")) {
                    oJ2 = oJ("dynamic_creative.score_exact_i18n|");
                }
                if (TextUtils.equals(ZYk, "score-count") || TextUtils.equals(ZYk, "score-count-type-1") || TextUtils.equals(ZYk, "score-count-type-2")) {
                    oJ2 = oJ("dynamic_creative.comment_num_i18n|");
                }
                if ("root".equals(ZYk) && oJ4.Zzm()) {
                    oJ2 = oJ("image.0.url");
                }
            }
            if (!TextUtils.isEmpty(oJ()) && (TextUtils.equals("logo-union", optString) || TextUtils.equals("logo", optString))) {
                pfn.ZYk(oJ2 + "adx:" + oJ());
            } else {
                pfn.ZYk(oJ2);
            }
            soVar.oJ(pfn);
        }
        return soVar;
    }

    private void oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.Pfn pfn, int i10) {
        int lastIndexOf;
        if (i10 != 5 && i10 != 15 && i10 != 50 && i10 != 154) {
            pfn.oJ("image");
            String oJ2 = jFA.oJ("image");
            com.bytedance.sdk.component.adexpress.dynamic.ex.ba Pfn = pfn.Pfn();
            Pfn.QSm(oJ2);
            pfn.cFZ().QSm(oJ2);
            String oJ3 = jFA.oJ("image", "clickArea");
            if (!TextUtils.isEmpty(oJ3)) {
                Pfn.awB(oJ3);
                pfn.cFZ().awB(oJ3);
            }
            JSONObject Oof = Pfn.Oof();
            if (Oof != null) {
                Pfn.cY(Oof.optString("imageLottieTosPath"));
                Pfn.BTZ(Oof.optBoolean("animationsLoop"));
                Pfn.tb(Oof.optInt("lottieAppNameMaxLength"));
                Pfn.IUZ(Oof.optInt("lottieAdDescMaxLength"));
                Pfn.HL(Oof.optInt("lottieAdTitleMaxLength"));
            }
            pfn.ZYk(oJ2);
            if (oJ2 != null && (lastIndexOf = oJ2.lastIndexOf(".")) > 0) {
                String substring = oJ2.substring(0, lastIndexOf);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("width", oJ(substring + ".width"));
                    jSONObject.put("height", oJ(substring + ".height"));
                } catch (JSONException unused) {
                }
                pfn.tB(jSONObject.toString());
            }
            Pfn.uaj();
            return;
        }
        pfn.oJ("video");
        String oJ4 = jFA.oJ("video");
        pfn.Pfn().QSm(oJ4);
        String oJ5 = jFA.oJ("video", "clickArea");
        if (!TextUtils.isEmpty(oJ5)) {
            pfn.Pfn().awB(oJ5);
            pfn.cFZ().awB(oJ5);
        }
        pfn.cFZ().QSm(oJ4);
        pfn.ZYk(oJ4);
        pfn.Pfn().uq();
    }

    private String oJ(String str) {
        String[] split;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (String str2 : str.split("\\|")) {
            if (this.tB.ZYk(str2)) {
                String valueOf = String.valueOf(this.tB.oJ(str2));
                if (!TextUtils.isEmpty(valueOf)) {
                    return valueOf;
                }
            }
        }
        return "";
    }

    private String oJ() {
        Object oJ2;
        com.bytedance.sdk.component.adexpress.dynamic.ex.tB tBVar = this.tB;
        return (tBVar == null || (oJ2 = tBVar.oJ("adx_name")) == null) ? "" : String.valueOf(oJ2);
    }

    private void oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.ba baVar) {
        if (baVar == null) {
            return;
        }
        String Ln = baVar.Ln();
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            String tB = com.bytedance.sdk.component.adexpress.ex.cFZ.tB(com.bytedance.sdk.component.adexpress.ex.oJ());
            if ("zh".equals(tB)) {
                tB = "cn";
            }
            if (!TextUtils.isEmpty(tB) && baVar.ba() != null) {
                String optString = baVar.ba().optString(tB);
                if (!TextUtils.isEmpty(optString)) {
                    Ln = optString;
                }
            }
        }
        if (TextUtils.isEmpty(Ln)) {
            return;
        }
        int indexOf = Ln.indexOf("{{");
        int indexOf2 = Ln.indexOf("}}");
        if (indexOf >= 0 && indexOf2 >= 0 && indexOf2 >= indexOf) {
            String oJ2 = oJ(Ln.substring(indexOf + 2, indexOf2));
            StringBuilder sb2 = new StringBuilder(Ln.substring(0, indexOf));
            if (!TextUtils.isEmpty(oJ2)) {
                sb2.append(oJ2);
            }
            sb2.append(Ln.substring(indexOf2 + 2));
            baVar.BTZ(sb2.toString());
            return;
        }
        baVar.BTZ(Ln);
    }
}
