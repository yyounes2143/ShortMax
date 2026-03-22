package com.applovin.impl;

import android.net.Uri;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class o7 implements n4 {

    /* renamed from: a  reason: collision with root package name */
    private int f9158a;

    /* renamed from: b  reason: collision with root package name */
    private int f9159b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f9160c;

    /* renamed from: d  reason: collision with root package name */
    private t7 f9161d;

    /* renamed from: e  reason: collision with root package name */
    private final Set f9162e = new HashSet();

    /* renamed from: f  reason: collision with root package name */
    private final Map f9163f = new HashMap();

    private o7() {
    }

    public static o7 a(m8 m8Var, o7 o7Var, p7 p7Var, com.applovin.impl.sdk.k kVar) {
        m8 c10;
        if (m8Var != null) {
            if (kVar != null) {
                if (o7Var == null) {
                    try {
                        o7Var = new o7();
                    } catch (Throwable th2) {
                        kVar.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            kVar.O().a("VastCompanionAd", "Error occurred while initializing", th2);
                        }
                        kVar.E().a("VastCompanionAd", th2);
                        return null;
                    }
                }
                if (o7Var.f9158a == 0 && o7Var.f9159b == 0) {
                    int parseInt = StringUtils.parseInt((String) m8Var.a().get("width"));
                    int parseInt2 = StringUtils.parseInt((String) m8Var.a().get("height"));
                    if (parseInt > 0 && parseInt2 > 0) {
                        o7Var.f9158a = parseInt;
                        o7Var.f9159b = parseInt2;
                    }
                }
                o7Var.f9161d = t7.a(m8Var, o7Var.f9161d, kVar);
                if (o7Var.f9160c == null && (c10 = m8Var.c("CompanionClickThrough")) != null) {
                    String d10 = c10.d();
                    if (StringUtils.isValidString(d10)) {
                        o7Var.f9160c = Uri.parse(d10);
                    }
                }
                x7.a(m8Var.a("CompanionClickTracking"), o7Var.f9162e, p7Var, kVar);
                x7.a(m8Var, o7Var.f9163f, p7Var, kVar);
                return o7Var;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public Set b() {
        return this.f9162e;
    }

    public Uri c() {
        return this.f9160c;
    }

    public Map d() {
        return this.f9163f;
    }

    public t7 e() {
        return this.f9161d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o7)) {
            return false;
        }
        o7 o7Var = (o7) obj;
        if (this.f9158a != o7Var.f9158a || this.f9159b != o7Var.f9159b) {
            return false;
        }
        Uri uri = this.f9160c;
        if (uri == null ? o7Var.f9160c != null : !uri.equals(o7Var.f9160c)) {
            return false;
        }
        t7 t7Var = this.f9161d;
        if (t7Var == null ? o7Var.f9161d != null : !t7Var.equals(o7Var.f9161d)) {
            return false;
        }
        Set set = this.f9162e;
        if (set == null ? o7Var.f9162e != null : !set.equals(o7Var.f9162e)) {
            return false;
        }
        Map map = this.f9163f;
        Map map2 = o7Var.f9163f;
        if (map != null) {
            return map.equals(map2);
        }
        if (map2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13 = ((this.f9158a * 31) + this.f9159b) * 31;
        Uri uri = this.f9160c;
        int i14 = 0;
        if (uri != null) {
            i10 = uri.hashCode();
        } else {
            i10 = 0;
        }
        int i15 = (i13 + i10) * 31;
        t7 t7Var = this.f9161d;
        if (t7Var != null) {
            i11 = t7Var.hashCode();
        } else {
            i11 = 0;
        }
        int i16 = (i15 + i11) * 31;
        Set set = this.f9162e;
        if (set != null) {
            i12 = set.hashCode();
        } else {
            i12 = 0;
        }
        int i17 = (i16 + i12) * 31;
        Map map = this.f9163f;
        if (map != null) {
            i14 = map.hashCode();
        }
        return i17 + i14;
    }

    public String toString() {
        return "VastCompanionAd{width=" + this.f9158a + ", height=" + this.f9159b + ", destinationUri=" + this.f9160c + ", nonVideoResource=" + this.f9161d + ", clickTrackers=" + this.f9162e + ", eventTrackers=" + this.f9163f + '}';
    }

    public static o7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        int i10 = JsonUtils.getInt(jSONObject, "width", 0);
        int i11 = JsonUtils.getInt(jSONObject, "height", 0);
        String string = JsonUtils.getString(jSONObject, "destination_uri", null);
        Uri parse = StringUtils.isValidString(string) ? Uri.parse(string) : null;
        t7 a10 = t7.a(JsonUtils.getJSONObject(jSONObject, "non_video_resource", (JSONObject) null), kVar);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        HashSet hashSet = new HashSet();
        for (int i12 = 0; i12 < jSONArray.length(); i12++) {
            v7 a11 = v7.a(JsonUtils.getJSONObject(jSONArray, i12, (JSONObject) null), kVar);
            if (a11 != null) {
                hashSet.add(a11);
            }
        }
        o7 o7Var = new o7();
        o7Var.f9158a = i10;
        o7Var.f9159b = i11;
        o7Var.f9160c = parse;
        o7Var.f9161d = a10;
        o7Var.f9162e.addAll(hashSet);
        return o7Var;
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putInt(jSONObject, "width", this.f9158a);
        JsonUtils.putInt(jSONObject, "height", this.f9159b);
        Uri uri = this.f9160c;
        JsonUtils.putString(jSONObject, "destination_uri", uri == null ? null : uri.toString());
        t7 t7Var = this.f9161d;
        JsonUtils.putJSONObject(jSONObject, "non_video_resource", t7Var != null ? t7Var.a() : null);
        JSONArray jSONArray = new JSONArray();
        for (v7 v7Var : this.f9162e) {
            jSONArray.put(v7Var.a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray);
        return jSONObject;
    }
}
