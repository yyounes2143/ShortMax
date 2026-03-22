package com.bytedance.sdk.openadsdk.core.model;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private boolean Pfn;
    private String ZYk;
    private String ex;
    private String oJ;
    private String tB;

    public boolean Pfn() {
        return this.Pfn;
    }

    public String ZYk() {
        return this.ZYk;
    }

    public JSONObject ba() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(CampaignEx.JSON_KEY_PRIVACY_URL, this.tB);
            jSONObject.put("privacy_title", this.ex);
            jSONObject.put(MimeTypes.BASE_TYPE_TEXT, this.ZYk);
            jSONObject.put("icon", this.oJ);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public String ex() {
        return this.ex;
    }

    public void oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.oJ = jSONObject.optString("icon");
        this.ZYk = jSONObject.optString(MimeTypes.BASE_TYPE_TEXT);
        this.tB = jSONObject.optString(CampaignEx.JSON_KEY_PRIVACY_URL);
        this.ex = jSONObject.optString("privacy_title");
    }

    public String tB() {
        return this.tB;
    }

    public String oJ() {
        return this.oJ;
    }

    public void oJ(boolean z10) {
        this.Pfn = z10;
    }
}
