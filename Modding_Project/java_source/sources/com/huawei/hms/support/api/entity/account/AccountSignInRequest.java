package com.huawei.hms.support.api.entity.account;

import com.huawei.hms.support.account.request.AccountAuthParams;
import com.huawei.hms.support.api.account.AccountGetTokenOptions;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class AccountSignInRequest {

    /* renamed from: a  reason: collision with root package name */
    AccountAuthParams f22242a;

    /* renamed from: b  reason: collision with root package name */
    AccountGetTokenOptions f22243b;

    public static AccountSignInRequest fromJson(String str) throws JSONException {
        if (str == null) {
            return null;
        }
        return new AccountSignInRequest().objectFromJson(new JSONObject(str));
    }

    public AccountAuthParams getAccountAuthParams() {
        return this.f22242a;
    }

    public AccountGetTokenOptions getAccountGetTokenOptions() {
        return this.f22243b;
    }

    protected AccountSignInRequest objectFromJson(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2;
        JSONObject jSONObject3 = jSONObject.getJSONObject("huaweiIdSignInOptions");
        if (jSONObject3 != null) {
            this.f22242a = AccountAuthParams.fromJsonObject(jSONObject3);
        }
        if (jSONObject.has("huaweiIdGetTokenOptions") && (jSONObject2 = jSONObject.getJSONObject("accountGetTokenOptions")) != null && jSONObject2.length() > 0) {
            this.f22243b = AccountGetTokenOptions.fromJsonObject(jSONObject2);
        }
        return this;
    }

    public void setAccountAuthParams(AccountAuthParams accountAuthParams) {
        this.f22242a = accountAuthParams;
    }

    public void setAccountGetTokenOptions(AccountGetTokenOptions accountGetTokenOptions) {
        this.f22243b = accountGetTokenOptions;
    }

    public String toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        AccountAuthParams accountAuthParams = this.f22242a;
        if (accountAuthParams != null) {
            jSONObject.put("huaweiIdSignInOptions", accountAuthParams.toJsonObject());
        }
        AccountGetTokenOptions accountGetTokenOptions = this.f22243b;
        if (accountGetTokenOptions != null) {
            jSONObject.put("accountGetTokenOptions", accountGetTokenOptions.toJsonObject());
        }
        return jSONObject.toString();
    }
}
