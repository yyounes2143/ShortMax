package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class m7 implements n4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f8477a;

    /* renamed from: b  reason: collision with root package name */
    private final List f8478b;

    /* renamed from: c  reason: collision with root package name */
    private final String f8479c;

    /* renamed from: d  reason: collision with root package name */
    private final Set f8480d;

    private m7(String str, List list, String str2, Set set) {
        this.f8477a = str;
        this.f8478b = list;
        this.f8479c = str2;
        this.f8480d = set;
    }

    public static m7 a(m8 m8Var, p7 p7Var, com.applovin.impl.sdk.k kVar) {
        try {
            String str = (String) m8Var.a().get("vendor");
            m8 b10 = m8Var.b("VerificationParameters");
            String d10 = b10 != null ? b10.d() : null;
            List<m8> a10 = m8Var.a("JavaScriptResource");
            ArrayList arrayList = new ArrayList(a10.size());
            for (m8 m8Var2 : a10) {
                s7 a11 = s7.a(m8Var2, kVar);
                if (a11 != null) {
                    arrayList.add(a11);
                }
            }
            HashMap hashMap = new HashMap();
            x7.a(m8Var, hashMap, p7Var, kVar);
            return new m7(str, arrayList, d10, (Set) hashMap.get("verificationNotExecuted"));
        } catch (Throwable th2) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a("VastAdVerification", "Error occurred while initializing", th2);
            }
            kVar.E().a("VastAdVerification", th2);
            return null;
        }
    }

    public Set b() {
        return this.f8480d;
    }

    public List c() {
        return this.f8478b;
    }

    public String d() {
        return this.f8477a;
    }

    public String e() {
        return this.f8479c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        m7 m7Var = (m7) obj;
        String str = this.f8477a;
        if (str == null ? m7Var.f8477a != null : !str.equals(m7Var.f8477a)) {
            return false;
        }
        List list = this.f8478b;
        if (list == null ? m7Var.f8478b != null : !list.equals(m7Var.f8478b)) {
            return false;
        }
        String str2 = this.f8479c;
        if (str2 == null ? m7Var.f8479c != null : !str2.equals(m7Var.f8479c)) {
            return false;
        }
        Set set = this.f8480d;
        Set set2 = m7Var.f8480d;
        if (set != null) {
            return set.equals(set2);
        }
        if (set2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        String str = this.f8477a;
        int i13 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i14 = i10 * 31;
        List list = this.f8478b;
        if (list != null) {
            i11 = list.hashCode();
        } else {
            i11 = 0;
        }
        int i15 = (i14 + i11) * 31;
        String str2 = this.f8479c;
        if (str2 != null) {
            i12 = str2.hashCode();
        } else {
            i12 = 0;
        }
        int i16 = (i15 + i12) * 31;
        Set set = this.f8480d;
        if (set != null) {
            i13 = set.hashCode();
        }
        return i16 + i13;
    }

    public String toString() {
        return "VastAdVerification{vendorId='" + this.f8477a + "'javascriptResources='" + this.f8478b + "'verificationParameters='" + this.f8479c + "'errorEventTrackers='" + this.f8480d + "'}";
    }

    public static m7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        String string = JsonUtils.getString(jSONObject, "vendor_id", null);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "javascript_resources", new JSONArray());
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            s7 a10 = s7.a(JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null), kVar);
            if (a10 != null) {
                arrayList.add(a10);
            }
        }
        String string2 = JsonUtils.getString(jSONObject, "verification_parameters", null);
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "error_event_trackers", new JSONArray());
        HashSet hashSet = new HashSet();
        for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
            v7 a11 = v7.a(JsonUtils.getJSONObject(jSONArray2, i11, (JSONObject) null), kVar);
            if (a11 != null) {
                hashSet.add(a11);
            }
        }
        return new m7(string, arrayList, string2, hashSet);
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "vendor_id", this.f8477a);
        if (this.f8478b != null) {
            JSONArray jSONArray = new JSONArray();
            for (s7 s7Var : this.f8478b) {
                jSONArray.put(s7Var.a());
            }
            JsonUtils.putJsonArray(jSONObject, "javascript_resources", jSONArray);
        }
        JsonUtils.putString(jSONObject, "verification_parameters", this.f8479c);
        if (this.f8480d != null) {
            JSONArray jSONArray2 = new JSONArray();
            for (v7 v7Var : this.f8480d) {
                jSONArray2.put(v7Var.a());
            }
            JsonUtils.putJsonArray(jSONObject, "error_event_trackers", jSONArray2);
        }
        return jSONObject;
    }
}
