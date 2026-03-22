package com.huawei.hms.common.internal;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class ResponseWrap {

    /* renamed from: a  reason: collision with root package name */
    private String f22090a;

    /* renamed from: b  reason: collision with root package name */
    private ResponseHeader f22091b;

    public ResponseWrap(ResponseHeader responseHeader) {
        this.f22091b = responseHeader;
    }

    public boolean fromJson(String str) {
        if (this.f22091b == null) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f22091b.setStatusCode(JsonUtil.getIntValue(jSONObject, "status_code"));
            this.f22091b.setErrorCode(JsonUtil.getIntValue(jSONObject, GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE));
            this.f22091b.setErrorReason(JsonUtil.getStringValue(jSONObject, "error_reason"));
            this.f22091b.setSrvName(JsonUtil.getStringValue(jSONObject, "srv_name"));
            this.f22091b.setApiName(JsonUtil.getStringValue(jSONObject, "api_name"));
            this.f22091b.setAppID(JsonUtil.getStringValue(jSONObject, "app_id"));
            this.f22091b.setPkgName(JsonUtil.getStringValue(jSONObject, "pkg_name"));
            this.f22091b.setSessionId(JsonUtil.getStringValue(jSONObject, "session_id"));
            this.f22091b.setTransactionId(JsonUtil.getStringValue(jSONObject, "transaction_id"));
            this.f22091b.setResolution(JsonUtil.getStringValue(jSONObject, "resolution"));
            this.f22090a = JsonUtil.getStringValue(jSONObject, "body");
            return true;
        } catch (JSONException e10) {
            HMSLog.e("ResponseWrap", "fromJson failed: " + e10.getMessage());
            return false;
        }
    }

    public String getBody() {
        if (TextUtils.isEmpty(this.f22090a)) {
            this.f22090a = new JSONObject().toString();
        }
        return this.f22090a;
    }

    public ResponseHeader getResponseHeader() {
        return this.f22091b;
    }

    public void setBody(String str) {
        this.f22090a = str;
    }

    public void setResponseHeader(ResponseHeader responseHeader) {
        this.f22091b = responseHeader;
    }

    public String toJson() {
        if (this.f22091b == null) {
            return JsonUtils.EMPTY_JSON;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status_code", this.f22091b.getStatusCode());
            jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, this.f22091b.getErrorCode());
            jSONObject.put("error_reason", this.f22091b.getErrorReason());
            jSONObject.put("srv_name", this.f22091b.getSrvName());
            jSONObject.put("api_name", this.f22091b.getApiName());
            jSONObject.put("app_id", this.f22091b.getAppID());
            jSONObject.put("pkg_name", this.f22091b.getPkgName());
            jSONObject.put("transaction_id", this.f22091b.getTransactionId());
            jSONObject.put("resolution", this.f22091b.getResolution());
            String sessionId = this.f22091b.getSessionId();
            if (!TextUtils.isEmpty(sessionId)) {
                jSONObject.put("session_id", sessionId);
            }
            if (!TextUtils.isEmpty(this.f22090a)) {
                jSONObject.put("body", this.f22090a);
            }
        } catch (JSONException e10) {
            HMSLog.e("ResponseWrap", "toJson failed: " + e10.getMessage());
        }
        return jSONObject.toString();
    }

    public String toString() {
        return "ResponseWrap{body='" + this.f22090a + "', responseHeader=" + this.f22091b + '}';
    }
}
