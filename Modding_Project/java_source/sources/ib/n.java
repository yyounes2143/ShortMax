package ib;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AbstractCpClientInfo.java */
/* loaded from: classes5.dex */
public abstract class n {

    /* renamed from: a  reason: collision with root package name */
    protected String f53371a;

    /* renamed from: b  reason: collision with root package name */
    protected String f53372b;

    /* renamed from: c  reason: collision with root package name */
    protected long f53373c;

    /* renamed from: d  reason: collision with root package name */
    protected String f53374d;

    public String a() {
        return this.f53371a;
    }

    public void b(long j10) {
        this.f53373c = j10;
    }

    public long c() {
        return this.f53373c;
    }

    public void d(String str) {
        this.f53371a = str;
    }

    public String e() {
        return this.f53374d;
    }

    public void f(String str) {
        this.f53372b = str;
    }

    public String g() throws JSONException {
        return i().toString();
    }

    public void h(String str) {
        this.f53374d = str;
    }

    protected JSONObject i() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.putOpt("appId", this.f53371a);
        jSONObject.putOpt("packageName", this.f53372b);
        jSONObject.put("hmsSdkVersion", this.f53373c);
        jSONObject.putOpt("subAppId", this.f53374d);
        return jSONObject;
    }

    public String toString() {
        return "HuaweiIdCpClientInfo{appId='" + this.f53371a + "', packageName='" + this.f53372b + "', hmsSdkVersion=" + this.f53373c + "', subAppId=" + this.f53374d + '}';
    }
}
