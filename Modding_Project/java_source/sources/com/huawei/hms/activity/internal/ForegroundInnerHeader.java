package com.huawei.hms.activity.internal;

import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import com.ss.texturerender.TextureRenderKeys;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class ForegroundInnerHeader {

    /* renamed from: a  reason: collision with root package name */
    private int f21789a;

    /* renamed from: b  reason: collision with root package name */
    private String f21790b;

    /* renamed from: c  reason: collision with root package name */
    private String f21791c;

    public void fromJson(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f21789a = JsonUtil.getIntValue(jSONObject, "apkVersion");
            this.f21790b = JsonUtil.getStringValue(jSONObject, TextureRenderKeys.KEY_IS_ACTION);
            this.f21791c = JsonUtil.getStringValue(jSONObject, "responseCallbackKey");
        } catch (JSONException e10) {
            HMSLog.e("ForegroundInnerHeader", "fromJson failed: " + e10.getMessage());
        }
    }

    public String getAction() {
        return this.f21790b;
    }

    public int getApkVersion() {
        return this.f21789a;
    }

    public String getResponseCallbackKey() {
        return this.f21791c;
    }

    public void setAction(String str) {
        this.f21790b = str;
    }

    public void setApkVersion(int i10) {
        this.f21789a = i10;
    }

    public void setResponseCallbackKey(String str) {
        this.f21791c = str;
    }

    public String toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("apkVersion", this.f21789a);
            jSONObject.put(TextureRenderKeys.KEY_IS_ACTION, this.f21790b);
            jSONObject.put("responseCallbackKey", this.f21791c);
        } catch (JSONException e10) {
            HMSLog.e("ForegroundInnerHeader", "ForegroundInnerHeader toJson failed: " + e10.getMessage());
        }
        return jSONObject.toString();
    }

    public String toString() {
        return "apkVersion:" + this.f21789a + ", action:" + this.f21790b + ", responseCallbackKey:" + this.f21791c;
    }
}
