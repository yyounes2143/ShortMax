package com.huawei.hms.common.internal;

import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hms.core.aidl.e;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import org.json.JSONException;
import org.json.JSONObject;
import wa.a;
/* loaded from: classes5.dex */
public class ResponseHeader implements e, ResponseErrorCode {
    @a

    /* renamed from: a  reason: collision with root package name */
    private int f22079a;
    @a

    /* renamed from: b  reason: collision with root package name */
    private int f22080b;
    @a

    /* renamed from: c  reason: collision with root package name */
    private String f22081c;
    @a

    /* renamed from: d  reason: collision with root package name */
    private String f22082d;
    @a

    /* renamed from: e  reason: collision with root package name */
    private String f22083e;
    @a

    /* renamed from: f  reason: collision with root package name */
    private String f22084f = "";
    @a

    /* renamed from: g  reason: collision with root package name */
    private String f22085g;
    @a

    /* renamed from: h  reason: collision with root package name */
    private String f22086h;
    @a

    /* renamed from: i  reason: collision with root package name */
    private String f22087i;
    @a

    /* renamed from: j  reason: collision with root package name */
    private String f22088j;

    /* renamed from: k  reason: collision with root package name */
    private Parcelable f22089k;

    public ResponseHeader() {
    }

    public boolean fromJson(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f22079a = JsonUtil.getIntValue(jSONObject, "status_code");
            this.f22080b = JsonUtil.getIntValue(jSONObject, GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE);
            this.f22081c = JsonUtil.getStringValue(jSONObject, "error_reason");
            this.f22082d = JsonUtil.getStringValue(jSONObject, "srv_name");
            this.f22083e = JsonUtil.getStringValue(jSONObject, "api_name");
            this.f22084f = JsonUtil.getStringValue(jSONObject, "app_id");
            this.f22085g = JsonUtil.getStringValue(jSONObject, "pkg_name");
            this.f22086h = JsonUtil.getStringValue(jSONObject, "session_id");
            this.f22087i = JsonUtil.getStringValue(jSONObject, "transaction_id");
            this.f22088j = JsonUtil.getStringValue(jSONObject, "resolution");
            return true;
        } catch (JSONException e10) {
            HMSLog.e("ResponseHeader", "fromJson failed: " + e10.getMessage());
            return false;
        }
    }

    public String getActualAppID() {
        if (TextUtils.isEmpty(this.f22084f)) {
            return "";
        }
        String[] split = this.f22084f.split("\\|");
        if (split.length == 0) {
            return "";
        }
        if (split.length == 1) {
            return split[0];
        }
        return split[1];
    }

    public String getApiName() {
        return this.f22083e;
    }

    public String getAppID() {
        return this.f22084f;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public int getErrorCode() {
        return this.f22080b;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public String getErrorReason() {
        return this.f22081c;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public Parcelable getParcelable() {
        return this.f22089k;
    }

    public String getPkgName() {
        return this.f22085g;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public String getResolution() {
        return this.f22088j;
    }

    public String getSessionId() {
        return this.f22086h;
    }

    public String getSrvName() {
        return this.f22082d;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public int getStatusCode() {
        return this.f22079a;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public String getTransactionId() {
        return this.f22087i;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public boolean hasResolution() {
        if (this.f22089k != null) {
            return true;
        }
        return false;
    }

    public boolean isSuccess() {
        if (this.f22079a == 0) {
            return true;
        }
        return false;
    }

    public void setApiName(String str) {
        this.f22083e = str;
    }

    public void setAppID(String str) {
        this.f22084f = str;
    }

    public void setErrorCode(int i10) {
        this.f22080b = i10;
    }

    public void setErrorReason(String str) {
        this.f22081c = str;
    }

    public void setParcelable(Parcelable parcelable) {
        this.f22089k = parcelable;
    }

    public void setPkgName(String str) {
        this.f22085g = str;
    }

    public void setResolution(String str) {
        this.f22088j = str;
    }

    public void setSessionId(String str) {
        this.f22086h = str;
    }

    public void setSrvName(String str) {
        this.f22082d = str;
    }

    public void setStatusCode(int i10) {
        this.f22079a = i10;
    }

    public void setTransactionId(String str) {
        this.f22087i = str;
    }

    public String toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status_code", this.f22079a);
            jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, this.f22080b);
            jSONObject.put("error_reason", this.f22081c);
            jSONObject.put("srv_name", this.f22082d);
            jSONObject.put("api_name", this.f22083e);
            jSONObject.put("app_id", this.f22084f);
            jSONObject.put("pkg_name", this.f22085g);
            if (!TextUtils.isEmpty(this.f22086h)) {
                jSONObject.put("session_id", this.f22086h);
            }
            jSONObject.put("transaction_id", this.f22087i);
            jSONObject.put("resolution", this.f22088j);
        } catch (JSONException e10) {
            HMSLog.e("ResponseHeader", "toJson failed: " + e10.getMessage());
        }
        return jSONObject.toString();
    }

    public String toString() {
        return "status_code:" + this.f22079a + ", error_code:" + this.f22080b + ", api_name:" + this.f22083e + ", app_id:" + this.f22084f + ", pkg_name:" + this.f22085g + ", session_id:*, transaction_id:" + this.f22087i + ", resolution:" + this.f22088j;
    }

    public ResponseHeader(int i10, int i11, String str) {
        this.f22079a = i10;
        this.f22080b = i11;
        this.f22081c = str;
    }
}
