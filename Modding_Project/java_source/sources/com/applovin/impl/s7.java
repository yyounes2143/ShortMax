package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class s7 implements n4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f9443a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9444b;

    private s7(String str, String str2) {
        this.f9443a = str;
        this.f9444b = str2;
    }

    public static s7 a(m8 m8Var, com.applovin.impl.sdk.k kVar) {
        if (m8Var != null) {
            if (kVar != null) {
                try {
                    return new s7((String) m8Var.a().get("apiFramework"), m8Var.d());
                } catch (Throwable th2) {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        kVar.O().a("VastJavaScriptResource", "Error occurred while initializing", th2);
                    }
                    kVar.E().a("VastJavaScriptResource", th2);
                    return null;
                }
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public String b() {
        return this.f9443a;
    }

    public String c() {
        return this.f9444b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        s7 s7Var = (s7) obj;
        String str = this.f9443a;
        if (str == null ? s7Var.f9443a != null : !str.equals(s7Var.f9443a)) {
            return false;
        }
        String str2 = this.f9444b;
        String str3 = s7Var.f9444b;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f9443a;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = this.f9444b;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }

    public String toString() {
        return "VastJavaScriptResource{apiFramework='" + this.f9443a + "', javascriptResourceUrl='" + this.f9444b + "'}";
    }

    public static s7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        return new s7(JsonUtils.getString(jSONObject, "api_framework", null), JsonUtils.getString(jSONObject, "javascript_resource_url", null));
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "api_framework", this.f9443a);
        JsonUtils.putString(jSONObject, "javascript_resource_url", this.f9444b);
        return jSONObject;
    }
}
