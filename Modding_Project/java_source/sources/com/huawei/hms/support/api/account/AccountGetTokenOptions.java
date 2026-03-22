package com.huawei.hms.support.api.account;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class AccountGetTokenOptions {

    /* renamed from: a  reason: collision with root package name */
    private String f22238a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22239b;

    public AccountGetTokenOptions(String str, boolean z10) {
        this.f22238a = str;
        this.f22239b = z10;
    }

    public static AccountGetTokenOptions fromJsonObject(JSONObject jSONObject) throws JSONException {
        return new AccountGetTokenOptions(jSONObject.optString("accountName"), jSONObject.optBoolean("fromGetToken", false));
    }

    public String getAccountName() {
        return this.f22238a;
    }

    public boolean isFromGetToken() {
        return this.f22239b;
    }

    public void setAccountName(String str) {
        this.f22238a = str;
    }

    public void setFromGetToken(boolean z10) {
        this.f22239b = z10;
    }

    public JSONObject toJsonObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (!TextUtils.isEmpty(this.f22238a)) {
            jSONObject.put("accountName", this.f22238a);
        }
        jSONObject.put("fromGetToken", this.f22239b);
        return jSONObject;
    }
}
