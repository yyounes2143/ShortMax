package hb;

import org.json.JSONObject;
/* loaded from: classes5.dex */
public class j0 extends b1 {

    /* renamed from: b  reason: collision with root package name */
    private String f52702b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f52703c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f52704d = "";

    /* renamed from: e  reason: collision with root package name */
    private String f52705e = "";

    /* renamed from: f  reason: collision with root package name */
    protected String f52706f = "";

    /* renamed from: g  reason: collision with root package name */
    private String f52707g;

    @Override // hb.r0
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("androidid", this.f52645a);
        jSONObject.put("oaid", this.f52707g);
        jSONObject.put("uuid", this.f52706f);
        jSONObject.put("upid", this.f52705e);
        jSONObject.put("imei", this.f52702b);
        jSONObject.put("sn", this.f52703c);
        jSONObject.put("udid", this.f52704d);
        return jSONObject;
    }

    public void b(String str) {
        this.f52702b = str;
    }

    public void c(String str) {
        this.f52707g = str;
    }

    public void d(String str) {
        this.f52703c = str;
    }

    public void e(String str) {
        this.f52704d = str;
    }

    public void f(String str) {
        this.f52705e = str;
    }

    public void g(String str) {
        this.f52706f = str;
    }
}
