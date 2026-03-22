package com.huawei.hms.support.api.entity.account;

import android.text.TextUtils;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class GetAssistTokenRequest {

    /* renamed from: a  reason: collision with root package name */
    private String f22245a;

    /* renamed from: b  reason: collision with root package name */
    private String f22246b;

    /* renamed from: c  reason: collision with root package name */
    private String f22247c;

    public GetAssistTokenRequest(String str) {
        this.f22245a = str;
    }

    public String getSessionId() {
        return this.f22247c;
    }

    public String getUserIdentify() {
        return this.f22246b;
    }

    public void setSessionId(String str) {
        this.f22247c = str;
    }

    public void setUserIdentify(String str) {
        this.f22246b = str;
    }

    public String toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (!TextUtils.isEmpty(this.f22245a)) {
            jSONObject.putOpt(CommonConstant.KEY_ACCESS_TOKEN, this.f22245a);
        }
        if (!TextUtils.isEmpty(this.f22246b)) {
            jSONObject.putOpt(CommonConstant.KEY_USER_IDENTIFY, this.f22246b);
        }
        if (!TextUtils.isEmpty(this.f22247c)) {
            jSONObject.putOpt("sessionId", this.f22247c);
        }
        return jSONObject.toString();
    }
}
