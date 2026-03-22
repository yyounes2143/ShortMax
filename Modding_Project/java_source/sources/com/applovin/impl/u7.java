package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class u7 implements n4 {

    /* renamed from: a  reason: collision with root package name */
    private String f10125a;

    /* renamed from: b  reason: collision with root package name */
    private String f10126b;

    private u7() {
    }

    public static u7 a(m8 m8Var, u7 u7Var, com.applovin.impl.sdk.k kVar) {
        if (m8Var != null) {
            if (kVar != null) {
                if (u7Var == null) {
                    try {
                        u7Var = new u7();
                    } catch (Throwable th2) {
                        kVar.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            kVar.O().a("VastSystemInfo", "Error occurred while initializing", th2);
                        }
                        kVar.E().a("VastSystemInfo", th2);
                        return null;
                    }
                }
                if (!StringUtils.isValidString(u7Var.f10125a)) {
                    String d10 = m8Var.d();
                    if (StringUtils.isValidString(d10)) {
                        u7Var.f10125a = d10;
                    }
                }
                if (!StringUtils.isValidString(u7Var.f10126b)) {
                    String str = (String) m8Var.a().get("version");
                    if (StringUtils.isValidString(str)) {
                        u7Var.f10126b = str;
                    }
                }
                return u7Var;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u7)) {
            return false;
        }
        u7 u7Var = (u7) obj;
        String str = this.f10125a;
        if (str == null ? u7Var.f10125a != null : !str.equals(u7Var.f10125a)) {
            return false;
        }
        String str2 = this.f10126b;
        String str3 = u7Var.f10126b;
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
        String str = this.f10125a;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = this.f10126b;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }

    public String toString() {
        return "VastSystemInfo{name='" + this.f10125a + "', version='" + this.f10126b + "'}";
    }

    public static u7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        u7 u7Var = new u7();
        u7Var.f10125a = JsonUtils.getString(jSONObject, "name", null);
        u7Var.f10126b = JsonUtils.getString(jSONObject, "version", null);
        return u7Var;
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "name", this.f10125a);
        JsonUtils.putString(jSONObject, "version", this.f10126b);
        return jSONObject;
    }
}
