package com.applovin.impl;

import android.content.Context;
import android.text.TextUtils;
import com.applovin.impl.mediation.MaxMediatedNetworkInfoImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxMediatedNetworkInfo;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.bytedance.vodsetting.Module;
import com.google.ads.mediation.moloco.MolocoMediationAdapter;
import com.google.android.gms.ads.AdSize;
import com.ss.ttm.player.MediaPlayer;
import com.vungle.ads.BuildConfig;
import io.bidmachine.BidMachine;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class t3 {

    /* renamed from: a  reason: collision with root package name */
    private static final TreeMap f10039a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map f10040b;

    /* renamed from: c  reason: collision with root package name */
    private static final List f10041c;

    /* renamed from: d  reason: collision with root package name */
    private static JSONArray f10042d;

    /* renamed from: e  reason: collision with root package name */
    private static final Map f10043e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private static final Object f10044f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private static final Map f10045g = Collections.synchronizedMap(new HashMap(1));

    static {
        TreeMap treeMap = new TreeMap();
        f10039a = treeMap;
        treeMap.put("com.applovin.mediation.adapters.AdjoeAdsMediationAdapter", "adjoe Ads");
        treeMap.put("com.applovin.mediation.adapters.AmazonAdMarketplaceMediationAdapter", "Amazon Publisher Services");
        treeMap.put("com.applovin.mediation.adapters.AppLovinMediationAdapter", "AppLovin");
        treeMap.put("com.applovin.mediation.adapters.BidMachineMediationAdapter", BidMachine.NAME);
        treeMap.put("com.applovin.mediation.adapters.BigoAdsMediationAdapter", "Bigo Ads");
        treeMap.put("com.applovin.mediation.adapters.ByteDanceMediationAdapter", "Pangle");
        treeMap.put("com.applovin.mediation.adapters.ChartboostMediationAdapter", "Chartboost");
        treeMap.put("com.applovin.mediation.adapters.CSJMediationAdapter", "CSJ");
        treeMap.put("com.applovin.mediation.adapters.DataseatMediationAdapter", "Dataseat");
        treeMap.put("com.applovin.mediation.adapters.FacebookMediationAdapter", "Facebook");
        treeMap.put("com.applovin.mediation.adapters.GoogleMediationAdapter", MolocoMediationAdapter.MEDIATION_PLATFORM_NAME);
        treeMap.put("com.applovin.mediation.adapters.GoogleAdManagerMediationAdapter", "Google Ad Manager");
        treeMap.put("com.applovin.mediation.adapters.HyprMXMediationAdapter", "HyprMX");
        treeMap.put("com.applovin.mediation.adapters.InMobiMediationAdapter", "InMobi");
        treeMap.put("com.applovin.mediation.adapters.InneractiveMediationAdapter", "Fyber");
        treeMap.put("com.applovin.mediation.adapters.IronSourceMediationAdapter", "ironSource");
        treeMap.put("com.applovin.mediation.adapters.LineMediationAdapter", "LINE");
        treeMap.put("com.applovin.mediation.adapters.MaioMediationAdapter", "Maio");
        treeMap.put("com.applovin.mediation.adapters.MintegralMediationAdapter", "Mintegral");
        treeMap.put("com.applovin.mediation.adapters.MobileFuseMediationAdapter", "MobileFuse");
        treeMap.put("com.applovin.mediation.adapters.MolocoMediationAdapter", "Moloco");
        treeMap.put("com.applovin.mediation.adapters.MyTargetMediationAdapter", "myTarget");
        treeMap.put("com.applovin.mediation.adapters.OguryMediationAdapter", "Ogury");
        treeMap.put("com.applovin.mediation.adapters.OguryPresageMediationAdapter", "Ogury Presage");
        treeMap.put("com.applovin.mediation.adapters.PangleMediationAdapter", "Pangle");
        treeMap.put("com.applovin.mediation.adapters.PubMaticMediationAdapter", "PubMatic");
        treeMap.put("com.applovin.mediation.adapters.SayGamesMediationAdapter", "SayGames");
        treeMap.put("com.applovin.mediation.adapters.SmaatoMediationAdapter", "Smaato");
        treeMap.put("com.applovin.mediation.adapters.TencentMediationAdapter", "Tencent");
        treeMap.put("com.applovin.mediation.adapters.UnityAdsMediationAdapter", "Unity Ads");
        treeMap.put("com.applovin.mediation.adapters.VerveMediationAdapter", "Verve");
        treeMap.put("com.applovin.mediation.adapters.VungleMediationAdapter", BuildConfig.OMSDK_PARTNER_NAME);
        treeMap.put("com.applovin.mediation.adapters.YandexMediationAdapter", "Yandex");
        treeMap.put("com.applovin.mediation.adapters.LinkedInDSPAdapter", "LinkedIn");
        treeMap.put("com.applovin.mediation.adapters.AdColonyMediationAdapter", "AdColony");
        treeMap.put("com.applovin.mediation.adapters.AmazonMediationAdapter", "Amazon");
        treeMap.put("com.applovin.mediation.adapters.AmazonPublisherServicesMediationAdapter", "Amazon Publisher Services");
        treeMap.put("com.applovin.mediation.adapters.CriteoMediationAdapter", "Criteo");
        treeMap.put("com.applovin.mediation.adapters.NendMediationAdapter", "Nend");
        treeMap.put("com.applovin.mediation.adapters.SnapMediationAdapter", "Snap");
        treeMap.put("com.applovin.mediation.adapters.TapjoyMediationAdapter", "Tapjoy");
        treeMap.put("com.applovin.mediation.adapters.VerizonAdsMediationAdapter", "Verizon");
        treeMap.put("com.applovin.mediation.adapters.YahooMediationAdapter", "Yahoo");
        treeMap.put("com.applovin.mediation.ALYsoNetworkMediationAdapter", "YSO Network");
        treeMap.put("com.applovin.mediation.adapters.YsoNetworkMediationAdapter", "YSO Network");
        f10041c = new ArrayList(treeMap.keySet());
        HashMap hashMap = new HashMap();
        f10040b = hashMap;
        hashMap.put("com.applovin.mediation.adapters.BidMachineMediationAdapter", "3.0.1.1");
        hashMap.put("com.applovin.mediation.adapters.ByteDanceMediationAdapter", "6.5.0.8.1");
        hashMap.put("com.applovin.mediation.adapters.ChartboostMediationAdapter", "9.7.0.3");
        hashMap.put("com.applovin.mediation.adapters.FacebookMediationAdapter", "6.17.0.1");
        hashMap.put("com.applovin.mediation.adapters.GoogleMediationAdapter", "23.3.0.1");
        hashMap.put("com.applovin.mediation.adapters.GoogleAdManagerMediationAdapter", "23.3.0.1");
        hashMap.put("com.applovin.mediation.adapters.HyprMXMediationAdapter", "6.4.2.1");
        hashMap.put("com.applovin.mediation.adapters.InMobiMediationAdapter", "10.7.7.1");
        hashMap.put("com.applovin.mediation.adapters.InneractiveMediationAdapter", "8.3.6.1");
        hashMap.put("com.applovin.mediation.adapters.IronSourceMediationAdapter", "8.3.0.0.2");
        hashMap.put("com.applovin.mediation.adapters.LineMediationAdapter", "2024.8.27.1");
        hashMap.put("com.applovin.mediation.adapters.MintegralMediationAdapter", "16.8.51.1");
        hashMap.put("com.applovin.mediation.adapters.MobileFuseMediationAdapter", "1.7.6.1");
        hashMap.put("com.applovin.mediation.adapters.MolocoMediationAdapter", "3.1.0.1");
        hashMap.put("com.applovin.mediation.adapters.MyTargetMediationAdapter", "5.22.1.1");
        hashMap.put("com.applovin.mediation.adapters.PubMaticMediationAdapter", "3.9.0.2");
        hashMap.put("com.applovin.mediation.adapters.SmaatoMediationAdapter", "22.7.0.1");
        hashMap.put("com.applovin.mediation.adapters.UnityAdsMediationAdapter", "4.12.2.1");
        hashMap.put("com.applovin.mediation.adapters.VerveMediationAdapter", "3.0.4.1");
        hashMap.put("com.applovin.mediation.adapters.VungleMediationAdapter", "7.4.1.1");
        hashMap.put("com.applovin.mediation.adapters.YandexMediationAdapter", "7.4.0.1");
    }

    public static List a(com.applovin.impl.sdk.k kVar) {
        HashSet hashSet;
        ArrayList arrayList = new ArrayList(kVar.c(o3.f9111d7));
        if (((Boolean) kVar.a(o3.f9113e7)).booleanValue()) {
            synchronized (f10044f) {
                hashSet = new HashSet(f10043e.keySet());
            }
            arrayList.retainAll(hashSet);
            return arrayList;
        }
        return arrayList;
    }

    public static JSONArray b(com.applovin.impl.sdk.k kVar) {
        synchronized (f10044f) {
            try {
                if (f10042d != null) {
                    d(kVar);
                    return f10042d;
                }
                f10042d = new JSONArray();
                for (String str : f10041c) {
                    MaxAdapter a10 = a(str, kVar);
                    if (a10 != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("name", f10039a.get(str));
                            jSONObject.put("class", str);
                            jSONObject.put("sdk_version", a(a10));
                            jSONObject.put("version", a10.getAdapterVersion());
                            jSONObject.put("is_supported", a(a10, str));
                        } catch (Throwable unused) {
                        }
                        f10042d.put(jSONObject);
                        f10043e.put(str, new MaxMediatedNetworkInfoImpl(jSONObject));
                    }
                }
                return f10042d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void c(JSONObject jSONObject, String str, com.applovin.impl.sdk.k kVar) {
        synchronized (f10044f) {
            try {
                if (StringUtils.isValidString(JsonUtils.getString(jSONObject, "sdk_version", ""))) {
                    return;
                }
                MaxAdapter a10 = a(str, kVar);
                if (a10 == null) {
                    return;
                }
                String a11 = a(a10);
                if (TextUtils.isEmpty(a11)) {
                    return;
                }
                JsonUtils.putString(jSONObject, "sdk_version", a11);
                f10043e.put(str, new MaxMediatedNetworkInfoImpl(jSONObject));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void d(com.applovin.impl.sdk.k kVar) {
        synchronized (f10044f) {
            for (int i10 = 0; i10 < f10042d.length(); i10++) {
                try {
                    JSONObject jSONObject = JsonUtils.getJSONObject(f10042d, i10, (JSONObject) null);
                    String string = JsonUtils.getString(jSONObject, "class", "");
                    b(jSONObject, string, kVar);
                    c(jSONObject, string, kVar);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void e(com.applovin.impl.sdk.k kVar) {
        JSONArray b10 = b(kVar);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < b10.length(); i10++) {
            JSONObject jSONObject = JsonUtils.getJSONObject(b10, i10, (JSONObject) null);
            if (!JsonUtils.getBoolean(jSONObject, "is_supported", Boolean.TRUE).booleanValue()) {
                arrayList.add(JsonUtils.getString(jSONObject, "name", "unknown") + " (" + JsonUtils.getString(jSONObject, "version", "unknown") + ")");
            }
        }
        if (!arrayList.isEmpty()) {
            String join = StringUtils.join(", ", arrayList);
            String str = "Please update to the latest adapter versions. Incompatible adapter(s) found: " + join;
            if (!k7.c(kVar)) {
                com.applovin.impl.sdk.o.h("MediationUtils", str);
                HashMap hashMap = new HashMap();
                CollectionUtils.putStringIfValid("details", join, hashMap);
                kVar.E().d(c2.E0, hashMap);
                return;
            }
            throw new IllegalArgumentException(str);
        }
    }

    public static String a(MaxAdapter maxAdapter) {
        try {
            return StringUtils.emptyIfNull(maxAdapter.getSdkVersion());
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("MediationUtils", "Failed to retrieve SDK version for adapter: " + maxAdapter, th2);
            return "";
        }
    }

    public static MaxMediatedNetworkInfo a(String str) {
        MaxMediatedNetworkInfo maxMediatedNetworkInfo;
        synchronized (f10044f) {
            maxMediatedNetworkInfo = (MaxMediatedNetworkInfo) f10043e.get(str);
        }
        if (maxMediatedNetworkInfo != null) {
            return maxMediatedNetworkInfo;
        }
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "class", str);
        return new MaxMediatedNetworkInfoImpl(jSONObject);
    }

    public static Map c(com.applovin.impl.sdk.k kVar) {
        HashMap hashMap = new HashMap(4);
        String emptyIfNull = StringUtils.emptyIfNull(kVar.x0().e());
        if (!((Boolean) kVar.a(v4.E3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        hashMap.put("{PLACEMENT}", "");
        hashMap.put("{CUSTOM_DATA}", "");
        hashMap.put("{CREATIVE_ID}", "");
        return hashMap;
    }

    public static boolean a(MaxAdapter maxAdapter, String str) {
        String str2 = (String) f10040b.get(str);
        return TextUtils.isEmpty(str2) || k7.a(maxAdapter.getAdapterVersion(), str2) >= 0;
    }

    private static void b(JSONObject jSONObject, String str, com.applovin.impl.sdk.k kVar) {
        synchronized (f10044f) {
            try {
                Integer a10 = kVar.S().a(str);
                if (a10 == null) {
                    return;
                }
                JsonUtils.putInt(jSONObject, "initialization_status", a10.intValue());
                f10043e.put(str, new MaxMediatedNetworkInfoImpl(jSONObject));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static MaxAdapter a(String str, com.applovin.impl.sdk.k kVar) {
        Class<?> cls;
        if (TextUtils.isEmpty(str)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("AppLovinSdk", "Failed to create adapter instance. No class name provided");
            }
            return null;
        }
        try {
            cls = Class.forName(str);
        } catch (ClassNotFoundException unused) {
        } catch (Throwable th2) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.a("AppLovinSdk", "Failed to load: " + str, th2);
            }
        }
        if (MaxAdapter.class.isAssignableFrom(cls)) {
            return (MaxAdapter) cls.getConstructor(AppLovinSdk.class).newInstance(kVar.z0());
        }
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O2 = kVar.O();
            O2.b("AppLovinSdk", str + " error: not an instance of '" + MaxAdapter.class.getName() + "'.");
        }
        return null;
    }

    public static boolean b(Object obj) {
        return (obj instanceof v2) && "APPLOVIN".equals(((v2) obj).k());
    }

    public static AppLovinSdkUtils.Size b(int i10, MaxAdFormat maxAdFormat, Context context) {
        try {
            int i11 = AdSize.FULL_WIDTH;
            Method method = AdSize.class.getMethod("getCurrentOrientationAnchoredAdaptiveBannerAdSize", Context.class, Integer.TYPE);
            Method method2 = AdSize.class.getMethod("getWidth", null);
            Method method3 = AdSize.class.getMethod("getHeight", null);
            Object invoke = method.invoke(null, context, Integer.valueOf(i10));
            AppLovinSdkUtils.Size size = new AppLovinSdkUtils.Size(((Integer) method2.invoke(invoke, null)).intValue(), ((Integer) method3.invoke(invoke, null)).intValue());
            f10045g.put(Integer.valueOf(i10), size);
            return size;
        } catch (Throwable unused) {
            return maxAdFormat.getSize();
        }
    }

    public static boolean a(Object obj) {
        return (obj instanceof com.applovin.impl.sdk.ad.b) && StringUtils.isValidString(((com.applovin.impl.sdk.ad.b) obj).getMediationServeId());
    }

    public static AppLovinSdkUtils.Size a(int i10, MaxAdFormat maxAdFormat, Context context) {
        if (i10 < 0) {
            i10 = AppLovinSdkUtils.pxToDp(context, o0.a(context).x);
        }
        Map map = f10045g;
        if (map.containsKey(Integer.valueOf(i10))) {
            return (AppLovinSdkUtils.Size) map.get(Integer.valueOf(i10));
        }
        if (Boolean.TRUE.equals((Boolean) y4.a(x4.I, Boolean.FALSE, context))) {
            return a(i10, context);
        }
        return b(i10, maxAdFormat, context);
    }

    public static AppLovinSdkUtils.Size a(int i10, Context context) {
        int round;
        if (i10 >= 600) {
            round = Math.round(i10 / 8.088889f);
        } else if (i10 > 450) {
            round = Math.round(i10 / 7.8f);
        } else {
            round = Math.round(i10 / 6.4f);
        }
        AppLovinSdkUtils.Size size = new AppLovinSdkUtils.Size(i10, Math.max(50, Math.min(round, Math.min(90, Math.round(AppLovinSdkUtils.pxToDp(context, o0.b(context).y) * 0.15f)))));
        f10045g.put(Integer.valueOf(i10), size);
        return size;
    }

    public static boolean a(JSONObject jSONObject, String str, com.applovin.impl.sdk.k kVar) {
        if (JsonUtils.containsJSONObjectContainingInt(jSONObject.optJSONArray("no_fill_reason"), MediaPlayer.MEDIA_PLAYER_OPTION_FORBID_BUFFERING_VDEC_NOT_FINISHED, Module.ResponseKey.Code)) {
            kVar.E().a(c2.E0, "invalid_or_disabled_ad_unit_id", CollectionUtils.hashMap("ad_unit_id", str), "invalid_or_disabled_ad_unit_id" + str);
            return true;
        }
        return false;
    }

    public static Map a(v2 v2Var, com.applovin.impl.sdk.k kVar) {
        HashMap hashMap = new HashMap(4);
        String emptyIfNull = StringUtils.emptyIfNull(kVar.x0().e());
        if (!((Boolean) kVar.a(v4.E3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        hashMap.put("{PLACEMENT}", StringUtils.emptyIfNull(v2Var.getPlacement()));
        hashMap.put("{CUSTOM_DATA}", StringUtils.emptyIfNull(v2Var.e()));
        hashMap.put("{CREATIVE_ID}", StringUtils.emptyIfNull(v2Var.getCreativeId()));
        return hashMap;
    }
}
