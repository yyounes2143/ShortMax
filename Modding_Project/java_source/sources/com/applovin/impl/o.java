package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private final String f9050a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9051b;

    /* renamed from: c  reason: collision with root package name */
    private final h8 f9052c;

    /* renamed from: d  reason: collision with root package name */
    private final List f9053d;

    /* renamed from: e  reason: collision with root package name */
    private final List f9054e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f9055f = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(JSONObject jSONObject, Map map, MaxAdFormat maxAdFormat, com.applovin.impl.sdk.k kVar) {
        this.f9050a = JsonUtils.getString(jSONObject, "name", "");
        this.f9051b = JsonUtils.getString(jSONObject, "experiment", null);
        this.f9052c = a(jSONObject);
        this.f9053d = a("bidders", jSONObject, map, maxAdFormat, kVar);
        this.f9054e = a("waterfall", jSONObject, map, maxAdFormat, kVar);
    }

    public List a() {
        return this.f9053d;
    }

    public String b() {
        return this.f9051b;
    }

    public String c() {
        return this.f9050a;
    }

    public h8 d() {
        return this.f9052c;
    }

    public List e() {
        return this.f9054e;
    }

    public boolean f() {
        return this.f9055f;
    }

    private h8 a(JSONObject jSONObject) {
        return new h8(JsonUtils.getJSONObject(jSONObject, "targeting"));
    }

    private List a(String str, JSONObject jSONObject, Map map, MaxAdFormat maxAdFormat, com.applovin.impl.sdk.k kVar) {
        b3 b3Var;
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, str, new JSONArray());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null);
            if (jSONObject2 != null && (b3Var = (b3) map.get(JsonUtils.getString(jSONObject2, "adapter_class", ""))) != null) {
                if (b3Var.D()) {
                    this.f9055f = true;
                }
                arrayList.add(new f8(jSONObject2, maxAdFormat, b3Var, kVar));
            }
        }
        return arrayList;
    }
}
