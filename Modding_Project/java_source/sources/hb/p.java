package hb;

import org.json.JSONObject;
/* loaded from: classes5.dex */
public class p extends f0 {

    /* renamed from: g  reason: collision with root package name */
    private String f52735g = "";

    @Override // hb.r0
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("protocol_version", "3");
        jSONObject.put("compress_mode", "1");
        jSONObject.put("serviceid", this.f52684d);
        jSONObject.put("appid", this.f52681a);
        jSONObject.put("hmac", this.f52735g);
        jSONObject.put("chifer", this.f52686f);
        jSONObject.put("timestamp", this.f52682b);
        jSONObject.put("servicetag", this.f52683c);
        jSONObject.put("requestid", this.f52685e);
        return jSONObject;
    }

    public void g(String str) {
        this.f52735g = str;
    }
}
