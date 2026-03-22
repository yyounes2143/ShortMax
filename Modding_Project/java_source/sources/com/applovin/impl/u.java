package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: e  reason: collision with root package name */
    private static final Map f10080e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private static final Object f10081f = new Object();

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f10082a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10083b;

    /* renamed from: c  reason: collision with root package name */
    private AppLovinAdSize f10084c;

    /* renamed from: d  reason: collision with root package name */
    private AppLovinAdType f10085d;

    private u(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str, boolean z10, boolean z11) {
        String lowerCase;
        if (TextUtils.isEmpty(str) && (appLovinAdType == null || appLovinAdSize == null)) {
            throw new IllegalArgumentException("No zone identifier or type or size specified");
        }
        this.f10084c = appLovinAdSize;
        this.f10085d = appLovinAdType;
        if (StringUtils.isValidString(str)) {
            lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
        } else {
            lowerCase = (appLovinAdSize.getLabel() + "_" + appLovinAdType.getLabel()).toLowerCase(Locale.ENGLISH);
        }
        if (z10) {
            lowerCase = lowerCase + "_bidding";
        }
        if (z11) {
            lowerCase = lowerCase + "_direct_sold";
        }
        this.f10083b = lowerCase;
    }

    public static u a(String str) {
        return a(null, null, str);
    }

    public static u b(String str) {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED, str);
    }

    public static u c() {
        return a(AppLovinAdSize.BANNER, AppLovinAdType.REGULAR);
    }

    public static u h() {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED);
    }

    public static u j() {
        return a(AppLovinAdSize.LEADER, AppLovinAdType.REGULAR);
    }

    public static u k() {
        return a(AppLovinAdSize.MREC, AppLovinAdType.REGULAR);
    }

    public static u l() {
        return a(AppLovinAdSize.NATIVE, AppLovinAdType.NATIVE);
    }

    public static u m() {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.REGULAR);
    }

    public MaxAdFormat d() {
        AppLovinAdSize f10 = f();
        if (f10 == AppLovinAdSize.BANNER) {
            return MaxAdFormat.BANNER;
        }
        if (f10 == AppLovinAdSize.LEADER) {
            return MaxAdFormat.LEADER;
        }
        if (f10 == AppLovinAdSize.MREC) {
            return MaxAdFormat.MREC;
        }
        if (f10 == AppLovinAdSize.INTERSTITIAL) {
            if (g() == AppLovinAdType.REGULAR) {
                return MaxAdFormat.INTERSTITIAL;
            }
            if (g() == AppLovinAdType.APP_OPEN) {
                return MaxAdFormat.APP_OPEN;
            }
            if (g() == AppLovinAdType.INCENTIVIZED) {
                return MaxAdFormat.REWARDED;
            }
            return null;
        } else if (f10 == AppLovinAdSize.NATIVE) {
            return MaxAdFormat.NATIVE;
        } else {
            return null;
        }
    }

    public String e() {
        return this.f10083b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && u.class == obj.getClass()) {
            return this.f10083b.equalsIgnoreCase(((u) obj).f10083b);
        }
        return false;
    }

    public AppLovinAdSize f() {
        if (this.f10084c == null && JsonUtils.valueExists(this.f10082a, "ad_size")) {
            this.f10084c = AppLovinAdSize.fromString(JsonUtils.getString(this.f10082a, "ad_size", null));
        }
        return this.f10084c;
    }

    public AppLovinAdType g() {
        if (this.f10085d == null && JsonUtils.valueExists(this.f10082a, "ad_type")) {
            this.f10085d = AppLovinAdType.fromString(JsonUtils.getString(this.f10082a, "ad_type", null));
        }
        return this.f10085d;
    }

    public int hashCode() {
        return this.f10083b.hashCode();
    }

    public boolean i() {
        return a().contains(this);
    }

    public String toString() {
        return "AdZone{id=" + this.f10083b + ", zoneObject=" + this.f10082a + '}';
    }

    public static u a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType) {
        return a(appLovinAdSize, appLovinAdType, null);
    }

    public static u b() {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.APP_OPEN);
    }

    public static u a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str) {
        return a(appLovinAdSize, appLovinAdType, str, false, false);
    }

    public static u a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str, boolean z10, boolean z11) {
        u uVar = new u(appLovinAdSize, appLovinAdType, str, z10, z11);
        synchronized (f10081f) {
            try {
                String str2 = uVar.f10083b;
                Map map = f10080e;
                if (map.containsKey(str2)) {
                    uVar = (u) map.get(str2);
                } else {
                    map.put(str2, uVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return uVar;
    }

    public static void a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.has("ad_size") && jSONObject.has("ad_type")) {
            synchronized (f10081f) {
                try {
                    u uVar = (u) f10080e.get(JsonUtils.getString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, ""));
                    if (uVar != null) {
                        uVar.f10084c = AppLovinAdSize.fromString(JsonUtils.getString(jSONObject, "ad_size", ""));
                        uVar.f10085d = AppLovinAdType.fromString(JsonUtils.getString(jSONObject, "ad_type", ""));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static Collection a() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(7);
        Collections.addAll(linkedHashSet, c(), k(), j(), m(), b(), h(), l());
        return Collections.unmodifiableSet(linkedHashSet);
    }
}
