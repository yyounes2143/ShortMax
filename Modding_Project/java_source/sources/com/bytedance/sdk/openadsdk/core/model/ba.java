package com.bytedance.sdk.openadsdk.core.model;

import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba {
    private int cFZ;
    private String oJ = "";
    private String ZYk = "";
    private String tB = "";
    private String ex = "";
    private double Pfn = -1.0d;

    /* renamed from: ba  reason: collision with root package name */
    private int f13204ba = -1;

    public int Pfn() {
        return this.f13204ba;
    }

    public String ZYk() {
        return this.ZYk;
    }

    public int ba() {
        return this.cFZ;
    }

    public String cFZ() {
        return this.ex;
    }

    public double ex() {
        return this.Pfn;
    }

    public String oJ() {
        return this.oJ;
    }

    public JSONObject so() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, ZYk());
            jSONObject.put(CampaignEx.JSON_KEY_APP_SIZE, ba());
            jSONObject.put("comment_num", Pfn());
            jSONObject.put(DownloadModel.DOWNLOAD_URL, oJ());
            jSONObject.put("package_name", tB());
            jSONObject.put("score", ex());
            jSONObject.put("app_category", cFZ());
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.tB(e10.toString(), new Object[0]);
        }
        return jSONObject;
    }

    public String tB() {
        return this.tB;
    }

    public void ZYk(String str) {
        this.ZYk = str;
    }

    public void ex(String str) {
        this.ex = str;
    }

    public void oJ(String str) {
        this.oJ = str;
    }

    public void tB(String str) {
        this.tB = str;
    }

    public void ZYk(int i10) {
        this.cFZ = i10;
    }

    public void oJ(double d10) {
        if (d10 >= 1.0d && d10 <= 5.0d) {
            this.Pfn = d10;
        } else {
            this.Pfn = -1.0d;
        }
    }

    public void oJ(int i10) {
        if (i10 <= 0) {
            this.f13204ba = -1;
        } else {
            this.f13204ba = i10;
        }
    }
}
