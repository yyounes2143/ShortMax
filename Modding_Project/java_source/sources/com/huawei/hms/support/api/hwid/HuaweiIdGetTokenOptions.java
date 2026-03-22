package com.huawei.hms.support.api.hwid;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class HuaweiIdGetTokenOptions {

    /* renamed from: a  reason: collision with root package name */
    private String f22257a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22258b;

    public HuaweiIdGetTokenOptions(String str, boolean z10) {
        this.f22257a = str;
        this.f22258b = z10;
    }

    public static HuaweiIdGetTokenOptions fromJsonObject(JSONObject jSONObject) throws JSONException {
        return new HuaweiIdGetTokenOptions(jSONObject.optString("accountName"), jSONObject.optBoolean("fromGetToken", false));
    }

    public String getAccountName() {
        return this.f22257a;
    }

    public boolean isFromGetToken() {
        return this.f22258b;
    }

    public void setAccountName(String str) {
        this.f22257a = str;
    }

    public void setFromGetToken(boolean z10) {
        this.f22258b = z10;
    }

    public JSONObject toJsonObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (!TextUtils.isEmpty(this.f22257a)) {
            jSONObject.put("accountName", this.f22257a);
        }
        jSONObject.put("fromGetToken", this.f22258b);
        return jSONObject;
    }
}
