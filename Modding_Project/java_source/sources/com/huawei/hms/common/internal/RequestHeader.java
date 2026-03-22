package com.huawei.hms.common.internal;

import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hms.core.aidl.e;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import org.json.JSONException;
import org.json.JSONObject;
import wa.a;
/* loaded from: classes5.dex */
public class RequestHeader implements e {
    @a

    /* renamed from: b  reason: collision with root package name */
    private String f22058b;
    @a

    /* renamed from: c  reason: collision with root package name */
    private String f22059c;
    @a

    /* renamed from: e  reason: collision with root package name */
    private String f22061e;
    @a

    /* renamed from: g  reason: collision with root package name */
    private String f22063g;
    @a

    /* renamed from: h  reason: collision with root package name */
    private String f22064h;
    @a

    /* renamed from: i  reason: collision with root package name */
    private int f22065i;
    @a

    /* renamed from: j  reason: collision with root package name */
    private int f22066j;

    /* renamed from: k  reason: collision with root package name */
    private Parcelable f22067k;
    @a

    /* renamed from: d  reason: collision with root package name */
    private String f22060d = "";
    @a

    /* renamed from: a  reason: collision with root package name */
    private String f22057a = "4.0";
    @a

    /* renamed from: f  reason: collision with root package name */
    private int f22062f = 61200300;

    public boolean fromJson(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f22057a = JsonUtil.getStringValue(jSONObject, "version");
            this.f22058b = JsonUtil.getStringValue(jSONObject, "srv_name");
            this.f22059c = JsonUtil.getStringValue(jSONObject, "api_name");
            this.f22060d = JsonUtil.getStringValue(jSONObject, "app_id");
            this.f22061e = JsonUtil.getStringValue(jSONObject, "pkg_name");
            this.f22062f = JsonUtil.getIntValue(jSONObject, "sdk_version");
            this.f22065i = JsonUtil.getIntValue(jSONObject, "kitSdkVersion");
            this.f22066j = JsonUtil.getIntValue(jSONObject, "apiLevel");
            this.f22063g = JsonUtil.getStringValue(jSONObject, "session_id");
            this.f22064h = JsonUtil.getStringValue(jSONObject, "transaction_id");
            return true;
        } catch (JSONException e10) {
            HMSLog.e("RequestHeader", "fromJson failed: " + e10.getMessage());
            return false;
        }
    }

    public String getActualAppID() {
        if (TextUtils.isEmpty(this.f22060d)) {
            return "";
        }
        String[] split = this.f22060d.split("\\|");
        if (split.length == 0) {
            return "";
        }
        if (split.length == 1) {
            return split[0];
        }
        return split[1];
    }

    public int getApiLevel() {
        return this.f22066j;
    }

    public String getApiName() {
        return this.f22059c;
    }

    public String getAppID() {
        return this.f22060d;
    }

    public int getKitSdkVersion() {
        return this.f22065i;
    }

    public Parcelable getParcelable() {
        return this.f22067k;
    }

    public String getPkgName() {
        return this.f22061e;
    }

    public int getSdkVersion() {
        return this.f22062f;
    }

    public String getSessionId() {
        return this.f22063g;
    }

    public String getSrvName() {
        return this.f22058b;
    }

    public String getTransactionId() {
        return this.f22064h;
    }

    public String getVersion() {
        return this.f22057a;
    }

    public void setApiLevel(int i10) {
        this.f22066j = i10;
    }

    public void setApiName(String str) {
        this.f22059c = str;
    }

    public void setAppID(String str) {
        this.f22060d = str;
    }

    public void setKitSdkVersion(int i10) {
        this.f22065i = i10;
    }

    public void setParcelable(Parcelable parcelable) {
        this.f22067k = parcelable;
    }

    public void setPkgName(String str) {
        this.f22061e = str;
    }

    public void setSdkVersion(int i10) {
        this.f22062f = i10;
    }

    public void setSessionId(String str) {
        this.f22063g = str;
    }

    public void setSrvName(String str) {
        this.f22058b = str;
    }

    public void setTransactionId(String str) {
        this.f22064h = str;
    }

    public void setVersion(String str) {
        this.f22057a = str;
    }

    public String toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", this.f22057a);
            jSONObject.put("srv_name", this.f22058b);
            jSONObject.put("api_name", this.f22059c);
            jSONObject.put("app_id", this.f22060d);
            jSONObject.put("pkg_name", this.f22061e);
            jSONObject.put("sdk_version", this.f22062f);
            jSONObject.put("kitSdkVersion", this.f22065i);
            jSONObject.put("apiLevel", this.f22066j);
            if (!TextUtils.isEmpty(this.f22063g)) {
                jSONObject.put("session_id", this.f22063g);
            }
            jSONObject.put("transaction_id", this.f22064h);
        } catch (JSONException e10) {
            HMSLog.e("RequestHeader", "toJson failed: " + e10.getMessage());
        }
        return jSONObject.toString();
    }

    public String toString() {
        return "api_name:" + this.f22059c + ", app_id:" + this.f22060d + ", pkg_name:" + this.f22061e + ", sdk_version:" + this.f22062f + ", session_id:*, transaction_id:" + this.f22064h + ", kitSdkVersion:" + this.f22065i + ", apiLevel:" + this.f22066j;
    }
}
