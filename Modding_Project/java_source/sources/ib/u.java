package ib;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AccountCpClientInfo.java */
/* loaded from: classes5.dex */
public class u extends n {
    public static u j(String str) throws JSONException {
        return new u().k(new JSONObject(str));
    }

    protected u k(JSONObject jSONObject) {
        this.f53371a = jSONObject.optString("appId", null);
        this.f53372b = jSONObject.optString("packageName", null);
        this.f53373c = jSONObject.optLong("hmsSdkVersion");
        this.f53374d = jSONObject.optString("subAppId", null);
        return this;
    }
}
