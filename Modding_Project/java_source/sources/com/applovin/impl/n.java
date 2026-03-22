package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class n implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    private final String f8994a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8995b;

    /* renamed from: c  reason: collision with root package name */
    private final MaxAdFormat f8996c;

    /* renamed from: d  reason: collision with root package name */
    private final o f8997d;

    /* renamed from: e  reason: collision with root package name */
    private final List f8998e;

    public n(JSONObject jSONObject, Map map, com.applovin.impl.sdk.k kVar) {
        this.f8994a = JsonUtils.getString(jSONObject, "name", "");
        this.f8995b = JsonUtils.getString(jSONObject, "display_name", "");
        this.f8996c = MaxAdFormat.formatFromString(JsonUtils.getString(jSONObject, "format", null));
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "waterfalls", new JSONArray());
        this.f8998e = new ArrayList(jSONArray.length());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null);
            if (jSONObject2 != null) {
                this.f8998e.add(new o(jSONObject2, map, this.f8996c, kVar));
            }
        }
        this.f8997d = this.f8998e.isEmpty() ? null : (o) this.f8998e.get(0);
    }

    public MaxAdFormat a() {
        return this.f8996c;
    }

    public String b() {
        MaxAdFormat maxAdFormat = this.f8996c;
        if (maxAdFormat != null) {
            return maxAdFormat.getLabel();
        }
        return "Unknown";
    }

    public String c() {
        return this.f8994a;
    }

    public String d() {
        return this.f8995b;
    }

    public String e() {
        return "\n---------- " + this.f8995b + " ----------\nIdentifier - " + this.f8994a + "\nFormat     - " + b();
    }

    public o f() {
        return this.f8997d;
    }

    public List g() {
        return this.f8998e;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(n nVar) {
        return this.f8995b.compareToIgnoreCase(nVar.f8995b);
    }
}
