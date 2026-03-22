package ib;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ReadSmsInputBean.java */
/* loaded from: classes5.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private String f53368a;

    public g(String str) {
        this.f53368a = str;
    }

    public String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("packageName", this.f53368a);
            return jSONObject.toString();
        } catch (JSONException unused) {
            t.d("ReadSmsInputBean", "toJson failed", true);
            return null;
        }
    }
}
