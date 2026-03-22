package com.bytedance.sdk.openadsdk.dLZ.oJ;

import com.bytedance.sdk.component.oJ.si;
import com.bytedance.sdk.openadsdk.core.UN;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class so extends com.bytedance.sdk.component.oJ.Pfn<JSONObject, JSONObject> {
    private final String ZYk;
    private final UN oJ;

    public so(UN un2, String str) {
        this.oJ = un2;
        this.ZYk = str;
    }

    public static void oJ(si siVar, UN un2) {
        siVar.oJ("endcardDynamicCreatives", new so(un2, "endcardDynamicCreatives"));
        siVar.oJ("multiOpenCovert", new so(un2, "multiOpenCovert"));
        siVar.oJ("skipToNextAd", new so(un2, "skipToNextAd"));
        siVar.oJ("speedVideoOrTimer", new so(un2, "speedVideoOrTimer"));
        siVar.oJ("openPlayable", new so(un2, "openPlayable"));
    }

    @Override // com.bytedance.sdk.component.oJ.Pfn
    public JSONObject oJ(JSONObject jSONObject, com.bytedance.sdk.component.oJ.ba baVar) throws Exception {
        if ("endcardDynamicCreatives".equals(this.ZYk)) {
            return this.oJ.jFA(jSONObject);
        }
        if ("multiOpenCovert".equals(this.ZYk)) {
            this.oJ.kkU(jSONObject);
            return null;
        } else if ("skipToNextAd".equals(this.ZYk)) {
            this.oJ.oJ(jSONObject, this.ZYk);
            return null;
        } else if ("speedVideoOrTimer".equals(this.ZYk)) {
            return this.oJ.so(jSONObject);
        } else {
            if ("openPlayable".equals(this.ZYk)) {
                return this.oJ.cFZ(jSONObject);
            }
            return null;
        }
    }
}
