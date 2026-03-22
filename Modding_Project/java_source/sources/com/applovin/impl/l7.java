package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import androidx.arch.core.util.Function;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class l7 extends com.applovin.impl.sdk.ad.b implements n4 {

    /* renamed from: n  reason: collision with root package name */
    private final String f8376n;

    /* renamed from: o  reason: collision with root package name */
    private final String f8377o;

    /* renamed from: p  reason: collision with root package name */
    private final u7 f8378p;

    /* renamed from: q  reason: collision with root package name */
    private final long f8379q;

    /* renamed from: r  reason: collision with root package name */
    private final y7 f8380r;

    /* renamed from: s  reason: collision with root package name */
    private final o7 f8381s;

    /* renamed from: t  reason: collision with root package name */
    private final String f8382t;

    /* renamed from: u  reason: collision with root package name */
    private final n7 f8383u;

    /* renamed from: v  reason: collision with root package name */
    private final i4 f8384v;

    /* renamed from: w  reason: collision with root package name */
    private final Set f8385w;

    /* renamed from: x  reason: collision with root package name */
    private final Set f8386x;

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private JSONObject f8387a;

        /* renamed from: b  reason: collision with root package name */
        private JSONObject f8388b;

        /* renamed from: c  reason: collision with root package name */
        private com.applovin.impl.sdk.k f8389c;

        /* renamed from: d  reason: collision with root package name */
        private long f8390d;

        /* renamed from: e  reason: collision with root package name */
        private String f8391e;

        /* renamed from: f  reason: collision with root package name */
        private String f8392f;

        /* renamed from: g  reason: collision with root package name */
        private u7 f8393g;

        /* renamed from: h  reason: collision with root package name */
        private y7 f8394h;

        /* renamed from: i  reason: collision with root package name */
        private o7 f8395i;

        /* renamed from: j  reason: collision with root package name */
        private n7 f8396j;

        /* renamed from: k  reason: collision with root package name */
        private Set f8397k;

        /* renamed from: l  reason: collision with root package name */
        private Set f8398l;

        public b b(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f8388b = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No full ad response specified.");
        }

        public b b(String str) {
            this.f8391e = str;
            return this;
        }

        public b b(Set set) {
            this.f8397k = set;
            return this;
        }

        public b a(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f8387a = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No ad object specified.");
        }

        public b a(com.applovin.impl.sdk.k kVar) {
            if (kVar != null) {
                this.f8389c = kVar;
                return this;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }

        public b a(String str) {
            this.f8392f = str;
            return this;
        }

        public b a(u7 u7Var) {
            this.f8393g = u7Var;
            return this;
        }

        public b a(y7 y7Var) {
            this.f8394h = y7Var;
            return this;
        }

        public b a(o7 o7Var) {
            this.f8395i = o7Var;
            return this;
        }

        public b a(n7 n7Var) {
            this.f8396j = n7Var;
            return this;
        }

        public b a(Set set) {
            this.f8398l = set;
            return this;
        }

        public b a(long j10) {
            this.f8390d = j10;
            return this;
        }

        public l7 a() {
            return new l7(this);
        }
    }

    /* loaded from: classes2.dex */
    public enum c {
        COMPANION_AD,
        VIDEO
    }

    /* loaded from: classes2.dex */
    public enum d {
        IMPRESSION,
        VIDEO_CLICK,
        COMPANION_CLICK,
        VIDEO,
        COMPANION,
        INDUSTRY_ICON_IMPRESSION,
        INDUSTRY_ICON_CLICK,
        ERROR
    }

    private Set A1() {
        y7 y7Var = this.f8380r;
        if (y7Var != null) {
            return y7Var.b();
        }
        return Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List t(f5 f5Var) {
        return k7.a(f5Var.a("vimp_urls", new JSONObject()), getClCode(), null, w1(), T(), a1(), this.sdk);
    }

    private Set t1() {
        o7 o7Var = this.f8381s;
        if (o7Var != null) {
            return o7Var.b();
        }
        return Collections.emptySet();
    }

    private String w1() {
        String stringFromAdObject = getStringFromAdObject("vimp_url", null);
        if (stringFromAdObject == null) {
            return null;
        }
        return stringFromAdObject.replace("{CLCODE}", getClCode());
    }

    public y7 B1() {
        return this.f8380r;
    }

    public z7 C1() {
        long j10;
        Long f10 = r0.f(this.sdk);
        y7 y7Var = this.f8380r;
        if (f10 != null) {
            j10 = f10.longValue();
        } else {
            j10 = 0;
        }
        return y7Var.a(j10);
    }

    public boolean D1() {
        if (x1() != null) {
            return true;
        }
        return false;
    }

    public boolean E1() {
        return getBooleanFromAdObject("vast_immediate_ad_load", Boolean.TRUE);
    }

    public void F1() {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            f5Var.c("vast_is_streaming");
            return;
        }
        synchronized (this.adObjectLock) {
            this.adObject.remove("vast_is_streaming");
        }
    }

    public boolean G1() {
        return getBooleanFromAdObject("cache_companion_ad", Boolean.TRUE);
    }

    public boolean H1() {
        return getBooleanFromAdObject("cache_video", Boolean.TRUE);
    }

    public boolean I1() {
        return getBooleanFromAdObject("vast_fire_click_trackers_on_html_clicks", Boolean.FALSE);
    }

    public boolean J1() {
        return getBooleanFromAdObject("iopms", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.ad.b
    public List K() {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.ac
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List t10;
                    t10 = l7.this.t((f5) obj);
                    return t10;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("vimp_urls", new JSONObject()), getClCode(), null, w1(), T(), a1(), this.sdk);
        }
        return a10;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean K0() {
        return getBooleanFromFullResponse("is_persisted_ad", false);
    }

    public boolean K1() {
        return getBooleanFromAdObject("iopmsfsr", Boolean.TRUE);
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean N0() {
        if (getBooleanFromAdObject("video_clickable", Boolean.FALSE) && m() != null) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean O0() {
        return getBooleanFromAdObject("vast_is_streaming", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.ad.b
    public String S() {
        return this.f8382t;
    }

    public Set a(d dVar, String str) {
        return a(dVar, new String[]{str});
    }

    public void d(String str) {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            f5Var.b("html_template", str);
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "html_template", str);
        }
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l7) || !super.equals(obj)) {
            return false;
        }
        l7 l7Var = (l7) obj;
        String str = this.f8376n;
        if (str == null ? l7Var.f8376n != null : !str.equals(l7Var.f8376n)) {
            return false;
        }
        String str2 = this.f8377o;
        if (str2 == null ? l7Var.f8377o != null : !str2.equals(l7Var.f8377o)) {
            return false;
        }
        u7 u7Var = this.f8378p;
        if (u7Var == null ? l7Var.f8378p != null : !u7Var.equals(l7Var.f8378p)) {
            return false;
        }
        y7 y7Var = this.f8380r;
        if (y7Var == null ? l7Var.f8380r != null : !y7Var.equals(l7Var.f8380r)) {
            return false;
        }
        o7 o7Var = this.f8381s;
        if (o7Var == null ? l7Var.f8381s != null : !o7Var.equals(l7Var.f8381s)) {
            return false;
        }
        n7 n7Var = this.f8383u;
        if (n7Var == null ? l7Var.f8383u != null : !n7Var.equals(l7Var.f8383u)) {
            return false;
        }
        Set set = this.f8385w;
        if (set == null ? l7Var.f8385w != null : !set.equals(l7Var.f8385w)) {
            return false;
        }
        Set set2 = this.f8386x;
        Set set3 = l7Var.f8386x;
        if (set2 != null) {
            return set2.equals(set3);
        }
        if (set3 == null) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getCreatedAtMillis() {
        return this.f8379q;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        return this.fullResponse;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean hasVideoUrl() {
        List g10;
        y7 y7Var = this.f8380r;
        if (y7Var == null || (g10 = y7Var.g()) == null || g10.size() <= 0) {
            return false;
        }
        return true;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int hashCode = super.hashCode() * 31;
        String str = this.f8376n;
        int i17 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i18 = (hashCode + i10) * 31;
        String str2 = this.f8377o;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i19 = (i18 + i11) * 31;
        u7 u7Var = this.f8378p;
        if (u7Var != null) {
            i12 = u7Var.hashCode();
        } else {
            i12 = 0;
        }
        int i20 = (i19 + i12) * 31;
        y7 y7Var = this.f8380r;
        if (y7Var != null) {
            i13 = y7Var.hashCode();
        } else {
            i13 = 0;
        }
        int i21 = (i20 + i13) * 31;
        o7 o7Var = this.f8381s;
        if (o7Var != null) {
            i14 = o7Var.hashCode();
        } else {
            i14 = 0;
        }
        int i22 = (i21 + i14) * 31;
        n7 n7Var = this.f8383u;
        if (n7Var != null) {
            i15 = n7Var.hashCode();
        } else {
            i15 = 0;
        }
        int i23 = (i22 + i15) * 31;
        Set set = this.f8385w;
        if (set != null) {
            i16 = set.hashCode();
        } else {
            i16 = 0;
        }
        int i24 = (i23 + i16) * 31;
        Set set2 = this.f8386x;
        if (set2 != null) {
            i17 = set2.hashCode();
        }
        return i24 + i17;
    }

    @Override // com.applovin.impl.sdk.ad.b, com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public boolean isOpenMeasurementEnabled() {
        if (getBooleanFromAdObject("omsdk_enabled", Boolean.TRUE) && this.f8383u != null) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri m() {
        y7 y7Var = this.f8380r;
        if (y7Var != null) {
            return y7Var.c();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri m0() {
        return m();
    }

    public o7 s1() {
        return this.f8381s;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public String toString() {
        return "VastAd{title='" + this.f8376n + "', adDescription='" + this.f8377o + "', systemInfo=" + this.f8378p + ", videoCreative=" + this.f8380r + ", companionAd=" + this.f8381s + ", adVerifications=" + this.f8383u + ", impressionTrackers=" + this.f8385w + ", errorTrackers=" + this.f8386x + '}';
    }

    public String u1() {
        return getStringFromAdObject("html_template", "");
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri v0() {
        z7 C1 = C1();
        if (C1 != null) {
            return C1.e();
        }
        return null;
    }

    public c v1() {
        if ("companion_ad".equalsIgnoreCase(getStringFromAdObject("vast_first_caching_operation", "companion_ad"))) {
            return c.COMPANION_AD;
        }
        return c.VIDEO;
    }

    public r7 x1() {
        y7 y7Var = this.f8380r;
        if (y7Var != null) {
            return y7Var.f();
        }
        return null;
    }

    public long y1() {
        return getLongFromAdObject("real_close_delay", 0L);
    }

    public u7 z1() {
        return this.f8378p;
    }

    private l7(b bVar) {
        super(bVar.f8387a, bVar.f8388b, bVar.f8389c);
        this.f8376n = bVar.f8391e;
        this.f8378p = bVar.f8393g;
        this.f8377o = bVar.f8392f;
        this.f8380r = bVar.f8394h;
        this.f8381s = bVar.f8395i;
        this.f8383u = bVar.f8396j;
        this.f8385w = bVar.f8397k;
        this.f8386x = bVar.f8398l;
        this.f8384v = new i4(this);
        Uri v02 = v0();
        if (v02 != null) {
            this.f8382t = v02.toString();
        } else {
            this.f8382t = "";
        }
        this.f8379q = bVar.f8390d;
    }

    public Set a(d dVar, String[] strArr) {
        this.sdk.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.sdk.O();
            O.a("VastAd", "Retrieving trackers of type '" + dVar + "' and events '" + Arrays.toString(strArr) + "'...");
        }
        if (dVar == d.IMPRESSION) {
            return this.f8385w;
        }
        if (dVar == d.VIDEO_CLICK) {
            return A1();
        }
        if (dVar == d.COMPANION_CLICK) {
            return t1();
        }
        if (dVar == d.VIDEO) {
            return a(c.VIDEO, strArr);
        }
        if (dVar == d.COMPANION) {
            return a(c.COMPANION_AD, strArr);
        }
        if (dVar == d.INDUSTRY_ICON_CLICK) {
            return x1().b();
        }
        if (dVar == d.INDUSTRY_ICON_IMPRESSION) {
            return x1().f();
        }
        if (dVar == d.ERROR) {
            return this.f8386x;
        }
        this.sdk.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O2 = this.sdk.O();
            O2.b("VastAd", "Failed to retrieve trackers of invalid type '" + dVar + "' and events '" + Arrays.toString(strArr) + "'");
        }
        return Collections.emptySet();
    }

    @Override // com.applovin.impl.sdk.ad.b, com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public i4 getAdEventTracker() {
        return this.f8384v;
    }

    public n7 r1() {
        return this.f8383u;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public void Q0() {
    }

    private Set a(c cVar, String[] strArr) {
        Map d10;
        o7 o7Var;
        y7 y7Var;
        if (strArr != null && strArr.length > 0) {
            if (cVar == c.VIDEO && (y7Var = this.f8380r) != null) {
                d10 = y7Var.e();
            } else {
                d10 = (cVar != c.COMPANION_AD || (o7Var = this.f8381s) == null) ? null : o7Var.d();
            }
            HashSet hashSet = new HashSet();
            if (d10 != null && !d10.isEmpty()) {
                for (String str : strArr) {
                    if (d10.containsKey(str)) {
                        hashSet.addAll((Collection) d10.get(str));
                    }
                }
            }
            return Collections.unmodifiableSet(hashSet);
        }
        return Collections.emptySet();
    }

    public static l7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        b bVar = new b();
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "full_response", (JSONObject) null);
        if (jSONObject2 == null) {
            return null;
        }
        bVar.f8388b = jSONObject2;
        JSONObject jSONObject3 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject2, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray()), 0, (JSONObject) null);
        if (jSONObject3 == null) {
            return null;
        }
        bVar.f8387a = jSONObject3;
        bVar.f8389c = kVar;
        bVar.f8390d = JsonUtils.getLong(jSONObject, "created_at_millis", 0L);
        bVar.f8391e = JsonUtils.getString(jSONObject, "title", "");
        bVar.f8392f = JsonUtils.getString(jSONObject, "ad_description", "");
        bVar.f8393g = u7.a(JsonUtils.getJSONObject(jSONObject, "system_info", (JSONObject) null), kVar);
        bVar.f8394h = y7.a(JsonUtils.getJSONObject(jSONObject, "video_creative", (JSONObject) null), kVar);
        bVar.f8395i = o7.a(JsonUtils.getJSONObject(jSONObject, "companion_ad", (JSONObject) null), kVar);
        bVar.f8396j = n7.a(JsonUtils.getJSONObject(jSONObject, "ad_verifications", (JSONObject) null), kVar);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "impression_trackers", new JSONArray());
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            v7 a10 = v7.a(JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null), kVar);
            if (a10 != null) {
                hashSet.add(a10);
            }
        }
        bVar.f8397k = hashSet;
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "error_trackers", new JSONArray());
        HashSet hashSet2 = new HashSet();
        for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
            v7 a11 = v7.a(JsonUtils.getJSONObject(jSONArray2, i11, (JSONObject) null), kVar);
            if (a11 != null) {
                hashSet2.add(a11);
            }
        }
        bVar.f8398l = hashSet2;
        l7 l7Var = new l7(bVar);
        JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject, "cached_ad_html_resources_urls", new JSONArray());
        for (int i12 = 0; i12 < jSONArray3.length(); i12++) {
            Object objectAtIndex = JsonUtils.getObjectAtIndex(jSONArray3, i12, null);
            if (objectAtIndex instanceof String) {
                String str = (String) objectAtIndex;
                if (!TextUtils.isEmpty(str)) {
                    l7Var.a(Uri.parse(str));
                }
            }
        }
        return l7Var;
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putLong(jSONObject, "created_at_millis", this.f8379q);
        JsonUtils.putString(jSONObject, "title", this.f8376n);
        JsonUtils.putString(jSONObject, "ad_description", this.f8377o);
        u7 u7Var = this.f8378p;
        if (u7Var != null) {
            JsonUtils.putJSONObject(jSONObject, "system_info", u7Var.a());
        }
        y7 y7Var = this.f8380r;
        if (y7Var != null) {
            JsonUtils.putJSONObject(jSONObject, "video_creative", y7Var.a());
        }
        o7 o7Var = this.f8381s;
        if (o7Var != null) {
            JsonUtils.putJSONObject(jSONObject, "companion_ad", o7Var.a());
        }
        n7 n7Var = this.f8383u;
        if (n7Var != null) {
            JsonUtils.putJSONObject(jSONObject, "ad_verifications", n7Var.a());
        }
        if (this.f8385w != null) {
            JSONArray jSONArray = new JSONArray();
            for (v7 v7Var : this.f8385w) {
                jSONArray.put(v7Var.a());
            }
            JsonUtils.putJsonArray(jSONObject, "impression_trackers", jSONArray);
        }
        if (this.f8386x != null) {
            JSONArray jSONArray2 = new JSONArray();
            for (v7 v7Var2 : this.f8386x) {
                jSONArray2.put(v7Var2.a());
            }
            JsonUtils.putJsonArray(jSONObject, "error_trackers", jSONArray2);
        }
        ArrayList arrayList = new ArrayList();
        for (Uri uri : l()) {
            arrayList.add(uri.toString());
        }
        JsonUtils.putJsonArray(jSONObject, "cached_ad_html_resources_urls", new JSONArray((Collection) arrayList));
        f5 f5Var = this.synchronizedFullResponse;
        if (f5Var != null) {
            JsonUtils.putJSONObject(jSONObject, "full_response", f5Var.a());
        } else {
            synchronized (this.fullResponseLock) {
                JsonUtils.putJSONObject(jSONObject, "full_response", this.fullResponse);
            }
        }
        return jSONObject;
    }
}
