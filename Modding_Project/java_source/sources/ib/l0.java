package ib;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: HuaweiIdCpClientInfo.java */
/* loaded from: classes5.dex */
public class l0 extends n {
    public static l0 j(String str) throws JSONException {
        return new l0().k(new JSONObject(str));
    }

    protected l0 k(JSONObject jSONObject) {
        this.f53371a = jSONObject.optString("appId", null);
        this.f53372b = jSONObject.optString("packageName", null);
        this.f53373c = jSONObject.optLong("hmsSdkVersion");
        this.f53374d = jSONObject.optString("subAppId", null);
        return this;
    }
}
