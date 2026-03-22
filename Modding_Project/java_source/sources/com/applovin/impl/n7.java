package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class n7 implements n4 {

    /* renamed from: a  reason: collision with root package name */
    private final List f9029a;

    private n7(List list) {
        this.f9029a = list;
    }

    public static n7 a(m8 m8Var, n7 n7Var, p7 p7Var, com.applovin.impl.sdk.k kVar) {
        try {
            List b10 = n7Var != null ? n7Var.b() : new ArrayList();
            for (m8 m8Var2 : m8Var.a("Verification")) {
                m7 a10 = m7.a(m8Var2, p7Var, kVar);
                if (a10 != null) {
                    b10.add(a10);
                }
            }
            return new n7(b10);
        } catch (Throwable th2) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a("VastAdVerifications", "Error occurred while initializing", th2);
            }
            kVar.E().a("VastAdVerifications", th2);
            return null;
        }
    }

    public List b() {
        return this.f9029a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n7)) {
            return false;
        }
        return this.f9029a.equals(((n7) obj).f9029a);
    }

    public int hashCode() {
        return this.f9029a.hashCode();
    }

    public String toString() {
        return "VastAdVerification{verifications='" + this.f9029a + "'}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "verifications", new JSONArray());
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            m7 a10 = m7.a(JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null), kVar);
            if (a10 != null) {
                arrayList.add(a10);
            }
        }
        return new n7(arrayList);
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        if (this.f9029a != null) {
            JSONArray jSONArray = new JSONArray();
            for (m7 m7Var : this.f9029a) {
                jSONArray.put(m7Var.a());
            }
            JsonUtils.putJsonArray(jSONObject, "verifications", jSONArray);
        }
        return jSONObject;
    }
}
