package com.bytedance.vcloud.networkpredictor;

import com.ss.texturerender.TextureRenderKeys;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class SpeedPredictorResultItem {
    private float mbandwidth;
    private String mhost;
    private String mloadType;
    private int mtrackType;

    public SpeedPredictorResultItem(String str, String str2, float f10, int i10) {
        this.mloadType = str;
        this.mhost = str2;
        this.mbandwidth = f10;
        this.mtrackType = i10;
    }

    public float getBandwidth() {
        return this.mbandwidth;
    }

    public String getHost() {
        return this.mhost;
    }

    public String getLoadType() {
        return this.mloadType;
    }

    public int getTrackType() {
        return this.mtrackType;
    }

    public void setBandwidth(float f10) {
        this.mbandwidth = f10;
    }

    public void setHost(String str) {
        this.mhost = str;
    }

    public void setLoadType(String str) {
        this.mloadType = str;
    }

    public void setTrackType(int i10) {
        this.mtrackType = i10;
    }

    public JSONObject toJsonObject() {
        try {
            JSONObject jSONObject = new JSONObject();
            String str = this.mloadType;
            if (str != null) {
                jSONObject.put("loadType", str);
            }
            String str2 = this.mhost;
            if (str2 != null) {
                jSONObject.put(TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST, str2);
            }
            jSONObject.put("bandwidth", this.mbandwidth);
            jSONObject.put("trackType", this.mtrackType);
            return jSONObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
