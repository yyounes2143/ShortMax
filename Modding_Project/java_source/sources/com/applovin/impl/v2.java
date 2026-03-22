package com.applovin.impl;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import androidx.arch.core.util.Function;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdWaterfallInfo;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class v2 extends h3 implements MaxAd {

    /* renamed from: k  reason: collision with root package name */
    private final AtomicBoolean f10189k;

    /* renamed from: l  reason: collision with root package name */
    private final AtomicBoolean f10190l;

    /* renamed from: m  reason: collision with root package name */
    private final x2 f10191m;

    /* renamed from: n  reason: collision with root package name */
    protected com.applovin.impl.mediation.h f10192n;

    /* renamed from: o  reason: collision with root package name */
    private final String f10193o;

    /* renamed from: p  reason: collision with root package name */
    private MaxAdWaterfallInfo f10194p;

    /* renamed from: q  reason: collision with root package name */
    private long f10195q;

    /* renamed from: r  reason: collision with root package name */
    private String f10196r;

    /* renamed from: s  reason: collision with root package name */
    private String f10197s;

    /* renamed from: t  reason: collision with root package name */
    private Bundle f10198t;

    /* JADX INFO: Access modifiers changed from: protected */
    public v2(x2 x2Var, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.mediation.h hVar, com.applovin.impl.sdk.k kVar) {
        super(x2Var.e(), jSONObject, jSONObject2, kVar);
        String str;
        this.f10189k = new AtomicBoolean();
        this.f10190l = new AtomicBoolean();
        this.f10191m = x2Var;
        this.f10192n = hVar;
        if (hVar != null) {
            str = hVar.b();
        } else {
            str = null;
        }
        this.f10193o = str;
    }

    private long I() {
        return a("load_started_time_ms", 0L);
    }

    public static v2 a(x2 x2Var, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        String string = JsonUtils.getString(jSONObject2, "ad_format", null);
        MaxAdFormat formatFromString = MaxAdFormat.formatFromString(string);
        Objects.requireNonNull(formatFromString, "Invalid ad format for string: " + string);
        if (formatFromString.isAdViewAd()) {
            return new y2(x2Var, jSONObject, jSONObject2, kVar);
        }
        if (formatFromString == MaxAdFormat.NATIVE) {
            return new a3(x2Var, jSONObject, jSONObject2, kVar);
        }
        if (formatFromString.isFullscreenAd()) {
            return new z2(x2Var, jSONObject, jSONObject2, kVar);
        }
        throw new IllegalArgumentException("Unsupported ad format: " + string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JSONObject b(f5 f5Var) {
        return JsonUtils.deepCopy(f5Var.a("ad_values", new JSONObject()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bundle c(f5 f5Var) {
        JSONObject a10;
        if (f5Var.a("credentials")) {
            a10 = f5Var.a("credentials", new JSONObject());
        } else {
            a10 = f5Var.a("server_parameters", new JSONObject());
            JsonUtils.putString(a10, "placement_id", Q());
        }
        return JsonUtils.toBundle(a10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JSONObject d(f5 f5Var) {
        return JsonUtils.deepCopy(f5Var.a("publisher_extra_info", new JSONObject()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double e(f5 f5Var) {
        return Double.valueOf(JsonUtils.getDouble(f5Var.a("revenue_parameters", (JSONObject) null), "revenue", -1.0d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JSONObject f(f5 f5Var) {
        return JsonUtils.deepCopy(f5Var.a("revenue_parameters", new JSONObject()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String g(f5 f5Var) {
        return JsonUtils.getString(f5Var.a("revenue_parameters", (JSONObject) null), "precision", "");
    }

    public com.applovin.impl.mediation.h A() {
        return this.f10192n;
    }

    public Bundle B() {
        return this.f10198t;
    }

    public String C() {
        return a("bcode", "");
    }

    public long D() {
        return a("bid_expiration_ms", BundleUtils.getLong("bid_expiration_ms", -1L, l()));
    }

    public String E() {
        return a("bid_response", (String) null);
    }

    public Bundle F() {
        JSONObject a10;
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return (Bundle) f5Var.a(new Function() { // from class: com.applovin.impl.tf
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Bundle c10;
                    c10 = v2.this.c((f5) obj);
                    return c10;
                }
            });
        }
        if (c("credentials")) {
            a10 = a("credentials", new JSONObject());
        } else {
            a10 = a("server_parameters", new JSONObject());
            JsonUtils.putString(a10, "placement_id", Q());
        }
        return JsonUtils.toBundle(a10);
    }

    public long G() {
        if (I() > 0) {
            return H() - I();
        }
        return -1L;
    }

    public long H() {
        return a("load_completed_time_ms", 0L);
    }

    public String J() {
        return this.f10196r;
    }

    public int K() {
        return a("mspc", ((Integer) this.f8036a.a(o3.W7)).intValue());
    }

    public JSONObject L() {
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return (JSONObject) f5Var.a(new Function() { // from class: com.applovin.impl.vf
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    JSONObject d10;
                    d10 = v2.d((f5) obj);
                    return d10;
                }
            });
        }
        return a("publisher_extra_info", new JSONObject());
    }

    public x2 M() {
        return this.f10191m;
    }

    public String N() {
        return JsonUtils.getString(O(), "revenue_event", "");
    }

    public JSONObject O() {
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return (JSONObject) f5Var.a(new Function() { // from class: com.applovin.impl.qf
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    JSONObject f10;
                    f10 = v2.f((f5) obj);
                    return f10;
                }
            });
        }
        return a("revenue_parameters", new JSONObject());
    }

    public String P() {
        return b("event_id", "");
    }

    public String Q() {
        return a("third_party_ad_placement_id", (String) null);
    }

    public List R() {
        return b("mwf_info_urls");
    }

    public String S() {
        return b("waterfall_name", "");
    }

    public String T() {
        return b("waterfall_test_name", "");
    }

    public boolean U() {
        return StringUtils.isValidString(E());
    }

    public boolean V() {
        com.applovin.impl.mediation.h hVar = this.f10192n;
        if (hVar == null || !hVar.k() || !this.f10192n.j()) {
            return false;
        }
        return true;
    }

    public boolean W() {
        return a("only_load_when_initialized", Boolean.FALSE).booleanValue();
    }

    public boolean X() {
        return a("prefer_load_when_initialized", Boolean.TRUE).booleanValue();
    }

    public void Y() {
        c("load_completed_time_ms", SystemClock.elapsedRealtime());
    }

    public void Z() {
        c("load_started_time_ms", SystemClock.elapsedRealtime());
    }

    public abstract v2 a(com.applovin.impl.mediation.h hVar);

    public Boolean a0() {
        return a("destroy_on_ui_thread", (Boolean) null);
    }

    public Boolean b0() {
        return a("load_on_ui_thread", (Boolean) null);
    }

    public Boolean c0() {
        return a("show_on_ui_thread", (Boolean) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdReviewCreativeId() {
        return this.f10197s;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str) {
        return getAdValue(str, null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getCreativeId() {
        return a(CampaignEx.JSON_KEY_CREATIVE_ID, (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getDspId() {
        return a("dsp_id", (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getDspName() {
        return a("dsp_name", (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdFormat getFormat() {
        return MaxAdFormat.formatFromString(a("ad_format", b("ad_format", (String) null)));
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxNativeAd getNativeAd() {
        com.applovin.impl.mediation.h hVar = this.f10192n;
        if (hVar != null) {
            return hVar.e();
        }
        return null;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkName() {
        return a("network_name", "");
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkPlacement() {
        return StringUtils.emptyIfNull(Q());
    }

    @Override // com.applovin.mediation.MaxAd
    public long getRequestLatencyMillis() {
        return this.f10195q;
    }

    @Override // com.applovin.mediation.MaxAd
    public double getRevenue() {
        if (((Boolean) this.f8036a.a(o3.f9109b8)).booleanValue() && getFormat().isFullscreenAd() && !u().get()) {
            this.f8036a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f8036a.O().b("MediatedAd", "Attempting to retrieve revenue when not available yet");
                return 0.0d;
            }
            return 0.0d;
        }
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return ((Double) f5Var.a(new Function() { // from class: com.applovin.impl.rf
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Double e10;
                    e10 = v2.e((f5) obj);
                    return e10;
                }
            })).doubleValue();
        }
        return JsonUtils.getDouble(a("revenue_parameters", (JSONObject) null), "revenue", -1.0d);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getRevenuePrecision() {
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return (String) f5Var.a(new Function() { // from class: com.applovin.impl.uf
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    String g10;
                    g10 = v2.g((f5) obj);
                    return g10;
                }
            });
        }
        return JsonUtils.getString(a("revenue_parameters", (JSONObject) null), "precision", "");
    }

    @Override // com.applovin.mediation.MaxAd
    public AppLovinSdkUtils.Size getSize() {
        int a10 = a("ad_width", -3);
        int a11 = a("ad_height", -3);
        if (a10 != -3 && a11 != -3) {
            return new AppLovinSdkUtils.Size(a10, a11);
        }
        return getFormat().getSize();
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdWaterfallInfo getWaterfall() {
        return this.f10194p;
    }

    public void h(String str) {
        this.f10197s = str;
    }

    public void i(String str) {
        this.f10196r = str;
    }

    @Override // com.applovin.impl.h3
    public String toString() {
        return "MediatedAd{thirdPartyAdPlacementId=" + Q() + ", adUnitId=" + getAdUnitId() + ", format=" + getFormat().getLabel() + ", networkName='" + getNetworkName() + "'}";
    }

    public String z() {
        return this.f10193o;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str, String str2) {
        JSONObject x10 = x();
        if (x10.has(str)) {
            return JsonUtils.getString(x10, str, str2);
        }
        Bundle l10 = l();
        if (l10.containsKey(str)) {
            return l10.getString(str);
        }
        JSONObject L = L();
        if (L.has(str)) {
            return JsonUtils.getString(L, str, str2);
        }
        return a(str, str2);
    }

    public void t() {
        this.f10192n = null;
        this.f10194p = null;
    }

    public AtomicBoolean u() {
        return this.f10189k;
    }

    public String v() {
        return a("adomain", (String) null);
    }

    public AtomicBoolean w() {
        return this.f10190l;
    }

    public JSONObject x() {
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return (JSONObject) f5Var.a(new Function() { // from class: com.applovin.impl.sf
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    JSONObject b10;
                    b10 = v2.b((f5) obj);
                    return b10;
                }
            });
        }
        return a("ad_values", new JSONObject());
    }

    public View y() {
        com.applovin.impl.mediation.h hVar;
        if (!V() || (hVar = this.f10192n) == null) {
            return null;
        }
        return hVar.d();
    }

    public void a(MaxAdWaterfallInfo maxAdWaterfallInfo) {
        this.f10194p = maxAdWaterfallInfo;
    }

    public void a(long j10) {
        this.f10195q = j10;
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        JSONObject L = L();
        JsonUtils.putAll(L, jSONObject);
        a("publisher_extra_info", (Object) L);
    }

    public void a(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (bundle.containsKey(CampaignEx.JSON_KEY_CREATIVE_ID) && !c(CampaignEx.JSON_KEY_CREATIVE_ID)) {
            c(CampaignEx.JSON_KEY_CREATIVE_ID, BundleUtils.getString(CampaignEx.JSON_KEY_CREATIVE_ID, bundle));
        }
        if (bundle.containsKey("ad_width") && !c("ad_width") && bundle.containsKey("ad_height") && !c("ad_height")) {
            int i10 = BundleUtils.getInt("ad_width", bundle);
            int i11 = BundleUtils.getInt("ad_height", bundle);
            c("ad_width", i10);
            c("ad_height", i11);
        }
        if (bundle.containsKey("publisher_extra_info")) {
            a(BundleUtils.toJSONObject(bundle.getBundle("publisher_extra_info")));
        }
        if (bundle.containsKey("array_parameters")) {
            this.f10198t = bundle.getBundle("array_parameters");
        }
    }
}
