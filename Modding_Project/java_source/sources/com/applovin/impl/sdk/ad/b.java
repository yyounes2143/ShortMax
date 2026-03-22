package com.applovin.impl.sdk.ad;

import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import androidx.arch.core.util.Function;
import androidx.core.app.NotificationCompat;
import androidx.core.util.Consumer;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.impl.a8;
import com.applovin.impl.adview.e;
import com.applovin.impl.c4;
import com.applovin.impl.f1;
import com.applovin.impl.f5;
import com.applovin.impl.k7;
import com.applovin.impl.k8;
import com.applovin.impl.l4;
import com.applovin.impl.n4;
import com.applovin.impl.o0;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class b extends AppLovinAdImpl implements n4 {

    /* renamed from: d  reason: collision with root package name */
    private final List f9551d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f9552e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f9553f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicReference f9554g;

    /* renamed from: h  reason: collision with root package name */
    private final Bundle f9555h;

    /* renamed from: i  reason: collision with root package name */
    private String f9556i;

    /* renamed from: j  reason: collision with root package name */
    private long f9557j;

    /* renamed from: k  reason: collision with root package name */
    private int f9558k;

    /* renamed from: l  reason: collision with root package name */
    private String f9559l;

    /* renamed from: m  reason: collision with root package name */
    private d f9560m;

    /* renamed from: com.applovin.impl.sdk.ad.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public enum EnumC0118b {
        UNSPECIFIED,
        DISMISS,
        DO_NOT_DISMISS
    }

    /* loaded from: classes2.dex */
    public enum c {
        DEFAULT,
        ACTIVITY_PORTRAIT,
        ACTIVITY_LANDSCAPE
    }

    /* loaded from: classes2.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f9569a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9570b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9571c;

        /* renamed from: d  reason: collision with root package name */
        public final int f9572d;

        /* renamed from: e  reason: collision with root package name */
        public final int f9573e;

        private d() {
            this.f9569a = AppLovinSdkUtils.dpToPx(com.applovin.impl.sdk.k.o(), b.this.p());
            this.f9570b = AppLovinSdkUtils.dpToPx(com.applovin.impl.sdk.k.o(), b.this.r());
            this.f9571c = AppLovinSdkUtils.dpToPx(com.applovin.impl.sdk.k.o(), b.this.n());
            this.f9572d = AppLovinSdkUtils.dpToPx(com.applovin.impl.sdk.k.o(), ((Integer) ((AppLovinAdBase) b.this).sdk.a(v4.f10259h1)).intValue());
            this.f9573e = AppLovinSdkUtils.dpToPx(com.applovin.impl.sdk.k.o(), ((Integer) ((AppLovinAdBase) b.this).sdk.a(v4.f10251g1)).intValue());
        }
    }

    /* loaded from: classes2.dex */
    public enum e {
        RESIZE_ASPECT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public b(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        super(jSONObject, jSONObject2, kVar);
        this.f9551d = CollectionUtils.synchronizedList();
        this.f9552e = new AtomicBoolean();
        this.f9553f = new AtomicBoolean();
        this.f9554g = new AtomicReference();
        this.f9555h = new Bundle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List i(f5 f5Var) {
        return k7.a(f5Var.a("custom_tabs_tab_hidden_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Bundle k(f5 f5Var) {
        return JsonUtils.toBundle(f5Var.a("ah_parameters", (JSONObject) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Map m(f5 f5Var) {
        try {
            return JsonUtils.toStringMap(f5Var.a("http_headers_for_postbacks", new JSONObject()));
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String o(f5 f5Var) {
        return JsonUtils.getString(f5Var.a("video_button_properties", (JSONObject) null), "video_button_html", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ a8 p(f5 f5Var) {
        return new a8(f5Var.a("video_button_properties", (JSONObject) null), this.sdk);
    }

    private String r0() {
        String stringFromAdObject = getStringFromAdObject("video_end_url", null);
        if (stringFromAdObject == null) {
            return null;
        }
        return stringFromAdObject.replace("{CLCODE}", getClCode());
    }

    public void A0() {
        this.f9558k++;
    }

    public boolean B0() {
        return getBooleanFromAdObject("aocve", (Boolean) this.sdk.a(v4.f10272i6));
    }

    public boolean C0() {
        if (this.f9558k > 0) {
            return true;
        }
        return false;
    }

    public boolean D0() {
        return getBooleanFromAdObject("bvde", (Boolean) this.sdk.a(v4.V5));
    }

    public boolean E0() {
        return getBooleanFromAdObject("lhs_close_button", (Boolean) this.sdk.a(v4.J1));
    }

    public boolean F0() {
        return getBooleanFromAdObject("custom_tabs_client_warmup_enabled", Boolean.FALSE);
    }

    public boolean G0() {
        return getBooleanFromAdObject("custom_tabs_enabled", Boolean.FALSE);
    }

    public boolean H0() {
        return getBooleanFromAdObject("forward_lifecycle_events_to_webview", Boolean.FALSE);
    }

    public boolean I0() {
        return getBooleanFromAdObject("gase", Boolean.FALSE);
    }

    public boolean J0() {
        return getBooleanFromAdObject("lock_current_orientation", Boolean.FALSE);
    }

    public abstract boolean K0();

    public AtomicBoolean L0() {
        return this.f9552e;
    }

    public boolean M0() {
        return getBooleanFromAdObject("lhs_skip_button", (Boolean) this.sdk.a(v4.W1));
    }

    public boolean N0() {
        return getBooleanFromAdObject("video_clickable", Boolean.FALSE);
    }

    public abstract boolean O0();

    public boolean P0() {
        boolean z10;
        if (!k7.j(com.applovin.impl.sdk.k.o()) && !k7.h(com.applovin.impl.sdk.k.o()) && !((Boolean) this.sdk.a(v4.f10312n6)).booleanValue()) {
            z10 = false;
        } else {
            z10 = true;
        }
        return getBooleanFromAdObject("web_contents_debugging_enabled", Boolean.valueOf(z10));
    }

    public Uri Q() {
        String stringFromAdObject = getStringFromAdObject("mute_image", "https://assets.applovin.com/sound_off.png");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public abstract void Q0();

    public List R() {
        String stringFromAdObject = getStringFromAdObject("optional_html_resources", null);
        if (stringFromAdObject != null) {
            return CollectionUtils.explode(stringFromAdObject);
        }
        return Collections.emptyList();
    }

    public boolean R0() {
        return getBooleanFromAdObject("aarwdc", (Boolean) this.sdk.a(v4.f10364u2));
    }

    public abstract String S();

    public boolean S0() {
        return getBooleanFromAdObject("always_reward_user", (Boolean) this.sdk.a(v4.f10243f1));
    }

    public Map T() {
        Map<String, String> stringMap;
        HashMap hashMap = new HashMap();
        try {
            f5 f5Var = this.synchronizedAdObject;
            if (f5Var != null) {
                stringMap = (Map) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.r
                    @Override // androidx.arch.core.util.Function
                    public final Object apply(Object obj) {
                        Map m10;
                        m10 = b.m((f5) obj);
                        return m10;
                    }
                });
            } else {
                stringMap = JsonUtils.toStringMap(getJsonObjectFromAdObject("http_headers_for_postbacks", new JSONObject()));
            }
            hashMap.putAll(stringMap);
        } catch (JSONException e10) {
            this.sdk.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.sdk.O().a("DirectAd", "Failed to retrieve http headers for postbacks", e10);
            }
        }
        if (getBooleanFromAdObject("use_webview_ua_for_postbacks", Boolean.FALSE)) {
            hashMap.put(Command.HTTP_HEADER_USER_AGENT, k8.a());
        }
        return hashMap;
    }

    public boolean T0() {
        return getBooleanFromAdObject("should_apply_mute_setting_to_poststitial", Boolean.FALSE);
    }

    public EnumC0118b U() {
        String stringFromAdObject = getStringFromAdObject("poststitial_dismiss_type", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            if ("dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return EnumC0118b.DISMISS;
            }
            if ("no_dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return EnumC0118b.DO_NOT_DISMISS;
            }
        }
        return EnumC0118b.UNSPECIFIED;
    }

    public boolean U0() {
        return getBooleanFromAdObject("should_apply_web_view_settings_to_web_view_button", (Boolean) this.sdk.a(v4.f10344r6));
    }

    public int V() {
        return getColorFromAdObject("postitial_progress_bar_color", -922746881);
    }

    public boolean V0() {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return ((Boolean) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.g
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Boolean s10;
                    s10 = b.s((f5) obj);
                    return s10;
                }
            })).booleanValue();
        }
        return JsonUtils.getBoolean(getJsonObjectFromAdObject("video_button_properties", null), "should_cache_video_button_html_assets", Boolean.FALSE).booleanValue();
    }

    public long W() {
        return getLongFromAdObject("postitial_progress_bar_total_ms", -1L);
    }

    public boolean W0() {
        return this.f9553f.get();
    }

    public List X() {
        return getStringListFromAdObject("pbpn", this.sdk.c(v4.C6));
    }

    public boolean X0() {
        if (!h1() && !f1() && !g1()) {
            return false;
        }
        return true;
    }

    public long Y() {
        long longFromAdObject = getLongFromAdObject("report_reward_duration", -1L);
        if (longFromAdObject < 0) {
            return -1L;
        }
        return TimeUnit.SECONDS.toMillis(longFromAdObject);
    }

    public boolean Y0() {
        return getBooleanFromAdObject("custom_tabs_should_track_events", Boolean.FALSE);
    }

    public int Z() {
        return getIntFromAdObject("report_reward_percent", -1);
    }

    public boolean Z0() {
        return getBooleanFromAdObject("serfaad", (Boolean) this.sdk.a(v4.R0));
    }

    public List a0() {
        String stringFromAdObject = getStringFromAdObject("required_html_resources", null);
        if (stringFromAdObject != null) {
            return CollectionUtils.explode(stringFromAdObject);
        }
        return Collections.emptyList();
    }

    public boolean a1() {
        return getBooleanFromAdObject("fire_postbacks_from_webview", Boolean.FALSE);
    }

    public int b0() {
        return this.f9558k;
    }

    public boolean b1() {
        return getBooleanFromAdObject("should_forward_close_button_tapped_to_poststitial", Boolean.FALSE);
    }

    public List c0() {
        ArrayList arrayList;
        String stringFromAdObject = getStringFromAdObject("resource_cache_prefix", null);
        if (stringFromAdObject != null) {
            arrayList = new ArrayList(CollectionUtils.explode(stringFromAdObject));
        } else {
            arrayList = new ArrayList(this.sdk.c(v4.F0));
        }
        if (k7.j(com.applovin.impl.sdk.k.o())) {
            arrayList.add("https://p.applov.in/");
        }
        return arrayList;
    }

    public boolean c1() {
        return getBooleanFromAdObject("fmsstwvoar", Boolean.FALSE);
    }

    public List d(MotionEvent motionEvent, boolean z10, boolean z11) {
        List<String> stringListFromAdObject = getStringListFromAdObject("privacy_sandbox_click_attribution_urls", Collections.emptyList());
        if (stringListFromAdObject.isEmpty()) {
            return stringListFromAdObject;
        }
        Map a10 = a(motionEvent, z10, z11);
        ArrayList arrayList = new ArrayList(stringListFromAdObject.size());
        for (String str : stringListFromAdObject) {
            arrayList.add(StringUtils.replace(str, a10));
        }
        return arrayList;
    }

    public List d0() {
        return getStringListFromAdObject("rea", a0());
    }

    public boolean d1() {
        return getBooleanFromAdObject("sftbpn", Boolean.FALSE);
    }

    public List e() {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.h
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List a11;
                    a11 = b.this.a((f5) obj);
                    return a11;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("ad_closed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a10;
    }

    public e.a e0() {
        int intFromAdObject = getIntFromAdObject("skip_style", -1);
        if (intFromAdObject == -1) {
            return q();
        }
        return a(intFromAdObject);
    }

    public boolean e1() {
        return getBooleanFromAdObject("fvcetwv", Boolean.FALSE);
    }

    public long f() {
        return getLongFromAdObject("ad_dismiss_delay_on_app_launch_ms", TimeUnit.SECONDS.toMillis(3L));
    }

    public List f0() {
        return getStringListFromAdObject("substrings_for_disabled_click_logic", Collections.emptyList());
    }

    public boolean f1() {
        return getStringListFromAdObject("system_bars_hide_list", this.sdk.c(v4.f10356t2)).contains(NotificationCompat.CATEGORY_NAVIGATION);
    }

    public long g() {
        return getLongFromAdObject("ad_reshow_delay_on_app_launch_ms", -1L);
    }

    public c g0() {
        c cVar = c.DEFAULT;
        String upperCase = getStringFromAdObject("ad_target", cVar.toString()).toUpperCase(Locale.ENGLISH);
        if ("ACTIVITY_PORTRAIT".equalsIgnoreCase(upperCase)) {
            return c.ACTIVITY_PORTRAIT;
        }
        if ("ACTIVITY_LANDSCAPE".equalsIgnoreCase(upperCase)) {
            return c.ACTIVITY_LANDSCAPE;
        }
        return cVar;
    }

    public boolean g1() {
        return getStringListFromAdObject("system_bars_hide_list", this.sdk.c(v4.f10356t2)).contains(DevicePublicKeyStringDef.NONE);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public abstract c4 getAdEventTracker();

    public String getCachePrefix() {
        return getStringFromAdObject("cache_prefix", null);
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public Bundle getDirectDownloadParameters() {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (Bundle) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.v
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Bundle k10;
                    k10 = b.k((f5) obj);
                    return k10;
                }
            });
        }
        return JsonUtils.toBundle(getJsonObjectFromAdObject("ah_parameters", null));
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public String getDirectDownloadToken() {
        return getStringFromAdObject("ah_dd_token", null);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public String getOpenMeasurementContentUrl() {
        return getStringFromAdObject("omid_content_url", null);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public String getOpenMeasurementCustomReferenceData() {
        return getStringFromAdObject("omid_custom_ref_data", "");
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public List getOpenMeasurementVerificationScriptResources() {
        List list;
        final Function function = new Function() { // from class: com.applovin.impl.sdk.ad.p
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                List a10;
                a10 = b.this.a((JSONArray) obj);
                return a10;
            }
        };
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.u
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List a10;
                    a10 = b.a(Function.this, (f5) obj);
                    return a10;
                }
            });
        }
        synchronized (this.adObjectLock) {
            list = (List) function.apply(getJsonArrayFromAdObject("omid_verification_script_resources", null));
        }
        return list;
    }

    public List getPrivacySandboxImpressionAttributionUrls() {
        List<String> stringListFromAdObject = getStringListFromAdObject("privacy_sandbox_impression_attribution_urls", Collections.emptyList());
        if (stringListFromAdObject.isEmpty()) {
            return stringListFromAdObject;
        }
        ArrayList arrayList = new ArrayList(stringListFromAdObject.size());
        String clCode = getClCode();
        for (String str : stringListFromAdObject) {
            arrayList.add(str.replace("{CLCODE}", clCode));
        }
        return arrayList;
    }

    public Bundle h() {
        return this.f9555h;
    }

    public String h0() {
        return this.f9559l;
    }

    public boolean h1() {
        return getStringListFromAdObject("system_bars_hide_list", this.sdk.c(v4.f10356t2)).contains("status");
    }

    public Uri i0() {
        String stringFromAdObject = getStringFromAdObject("unmute_image", "https://assets.applovin.com/sound_on.png");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public boolean i1() {
        return getBooleanFromAdObject("avoms", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public boolean isDirectDownloadEnabled() {
        return StringUtils.isValidString(getDirectDownloadToken());
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public abstract boolean isOpenMeasurementEnabled();

    public List j() {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.n
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List b10;
                    b10 = b.this.b((f5) obj);
                    return b10;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("app_killed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a10;
    }

    public String j0() {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (String) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.w
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    String n10;
                    n10 = b.n((f5) obj);
                    return n10;
                }
            });
        }
        return JsonUtils.getString(getJsonObjectFromAdObject("video_button_properties", null), "video_button_base_url", DomExceptionUtils.SEPARATOR);
    }

    public boolean j1() {
        return getBooleanFromAdObject("report_reward_percent_include_close_delay", Boolean.TRUE);
    }

    public String k0() {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (String) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.z
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    String o10;
                    o10 = b.o((f5) obj);
                    return o10;
                }
            });
        }
        return JsonUtils.getString(getJsonObjectFromAdObject("video_button_properties", null), "video_button_html", "");
    }

    public boolean k1() {
        return getBooleanFromAdObject("require_interaction_for_click", Boolean.FALSE);
    }

    public List l() {
        return this.f9551d;
    }

    public a8 l0() {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (a8) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.s
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    a8 p10;
                    p10 = b.this.p((f5) obj);
                    return p10;
                }
            });
        }
        return new a8(getJsonObjectFromAdObject("video_button_properties", null), this.sdk);
    }

    public boolean l1() {
        return getBooleanFromAdObject("sruifwvc", Boolean.FALSE);
    }

    public abstract Uri m();

    public abstract Uri m0();

    public boolean m1() {
        if (g() >= 0) {
            return true;
        }
        return false;
    }

    public int n() {
        return getIntFromAdObject("close_button_horizontal_margin", ((Integer) this.sdk.a(v4.K1)).intValue());
    }

    public long n0() {
        return getLongFromAdObject("close_delay", 0L);
    }

    public boolean n1() {
        return getBooleanFromAdObject("respect_adview_fully_watched", Boolean.FALSE);
    }

    public long o0() {
        return TimeUnit.SECONDS.toMillis(getLongFromAdObject("close_delay_max_buffering_time_seconds", 5L));
    }

    public boolean o1() {
        return getBooleanFromAdObject("sscomt", Boolean.FALSE);
    }

    public int p0() {
        return k7.c(getIntFromAdObject("video_completion_percent", -1));
    }

    public boolean p1() {
        return getBooleanFromAdObject("sudbia", (Boolean) this.sdk.a(v4.B6));
    }

    public e.a q() {
        List O = O();
        int intFromAdObject = getIntFromAdObject("close_style", (O == null || O.size() <= 0) ? -1 : ((Integer) O.get(0)).intValue());
        return intFromAdObject == -1 ? a(hasVideoUrl()) : a(intFromAdObject);
    }

    public List q0() {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.y
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List q10;
                    q10 = b.this.q((f5) obj);
                    return q10;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("video_end_urls", new JSONObject()), getClCode(), r0(), this.sdk);
        }
        return a10;
    }

    public boolean q1() {
        return getBooleanFromAdObject("upiosp", Boolean.FALSE);
    }

    public int r() {
        return getIntFromAdObject("close_button_top_margin", ((Integer) this.sdk.a(v4.M1)).intValue());
    }

    public long s() {
        List P = P();
        long longFromAdObject = getLongFromAdObject("close_delay_graphic", (P == null || P.size() <= 0) ? 0L : ((Integer) P.get(0)).intValue());
        if (longFromAdObject == -1 || longFromAdObject == -2) {
            return 0L;
        }
        return longFromAdObject;
    }

    public e s0() {
        String stringFromAdObject = getStringFromAdObject("video_gravity", null);
        if ("top".equals(stringFromAdObject)) {
            return e.TOP;
        }
        if ("bottom".equals(stringFromAdObject)) {
            return e.BOTTOM;
        }
        if (TtmlNode.LEFT.equals(stringFromAdObject)) {
            return e.LEFT;
        }
        if (TtmlNode.RIGHT.equals(stringFromAdObject)) {
            return e.RIGHT;
        }
        return e.RESIZE_ASPECT;
    }

    public int t() {
        return getColorFromAdObject("countdown_color", -922746881);
    }

    public int t0() {
        return getColorFromAdObject("progress_bar_color", -922746881);
    }

    public boolean u0() {
        return getBooleanFromAdObject("progress_bar_enabled", Boolean.FALSE);
    }

    public abstract Uri v0();

    public int w0() {
        int i10;
        if (k7.a(getSize())) {
            i10 = 1;
        } else if (((Boolean) this.sdk.a(v4.O5)).booleanValue()) {
            i10 = 0;
        } else {
            i10 = -1;
        }
        return getIntFromAdObject("whalt", i10);
    }

    public com.applovin.impl.adview.m x0() {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (com.applovin.impl.adview.m) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.i
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    com.applovin.impl.adview.m r10;
                    r10 = b.r((f5) obj);
                    return r10;
                }
            });
        }
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("web_view_settings", null);
        if (jsonObjectFromAdObject == null) {
            return null;
        }
        return new com.applovin.impl.adview.m(jsonObjectFromAdObject);
    }

    public List y0() {
        return CollectionUtils.explode(getStringFromAdObject("wlh", null));
    }

    public List z0() {
        return CollectionUtils.explode(getStringFromAdObject("wls", ""));
    }

    private List O() {
        return getIntegerListFromAdObject("multi_close_style", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List f(f5 f5Var) {
        return k7.a(f5Var.a("custom_tabs_navigation_finished_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List g(f5 f5Var) {
        return k7.a(f5Var.a("custom_tabs_navigation_started_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f1 h(f5 f5Var) {
        JSONObject a10 = f5Var.a("custom_tabs_settings", (JSONObject) null);
        if (a10 != null) {
            return new f1(a10);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List l(f5 f5Var) {
        return k7.a(f5Var.a("imp_urls", new JSONObject()), getClCode(), null, null, T(), a1(), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String n(f5 f5Var) {
        return JsonUtils.getString(f5Var.a("video_button_properties", (JSONObject) null), "video_button_base_url", DomExceptionUtils.SEPARATOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.impl.adview.m r(f5 f5Var) {
        JSONObject a10 = f5Var.a("web_view_settings", (JSONObject) null);
        if (a10 != null) {
            return new com.applovin.impl.adview.m(a10);
        }
        return null;
    }

    public f1 A() {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (f1) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.f
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    f1 h10;
                    h10 = b.h((f5) obj);
                    return h10;
                }
            });
        }
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("custom_tabs_settings", null);
        if (jsonObjectFromAdObject != null) {
            return new f1(jsonObjectFromAdObject);
        }
        return null;
    }

    public List B() {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.j
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List i10;
                    i10 = b.this.i((f5) obj);
                    return i10;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("custom_tabs_tab_hidden_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a10;
    }

    public List C() {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.e
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List j10;
                    j10 = b.this.j((f5) obj);
                    return j10;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("custom_tabs_tab_shown_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a10;
    }

    public List D() {
        return getStringListFromAdObject("custom_tabs_warmup_urls", Collections.emptyList());
    }

    public boolean E() {
        return getBooleanFromAdObject("dismiss_on_skip", Boolean.FALSE);
    }

    public String F() {
        return this.f9556i;
    }

    public int G() {
        return getIntFromAdObject("poststitial_dismiss_forward_delay_millis", -1);
    }

    public int H() {
        return getIntFromAdObject("poststitial_shown_forward_delay_millis", -1);
    }

    public int I() {
        return k7.a(getIntFromAdObject("graphic_completion_percent", -1), 90);
    }

    public long J() {
        return this.f9557j;
    }

    public List K() {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.o
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List l10;
                    l10 = b.this.l((f5) obj);
                    return l10;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("imp_urls", new JSONObject()), getClCode(), null, null, T(), a1(), this.sdk);
        }
        return a10;
    }

    public int L() {
        return getIntFromAdObject("mdafra", ((Integer) this.sdk.a(v4.S0)).intValue());
    }

    public boolean M() {
        return getBooleanFromAdObject("playback_requires_user_action", Boolean.TRUE);
    }

    public List N() {
        List<Integer> O = O();
        if (O != null) {
            ArrayList arrayList = new ArrayList(O.size());
            for (Integer num : O) {
                arrayList.add(a(num.intValue()));
            }
            return arrayList;
        }
        return null;
    }

    public List P() {
        return getIntegerListFromAdObject("multi_close_delay_graphic", null);
    }

    public void b(String str) {
        this.f9559l = str;
    }

    public void c(final String str) {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            f5Var.a(new Consumer() { // from class: com.applovin.impl.sdk.ad.t
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    b.a(str, (f5) obj);
                }
            });
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(getJsonObjectFromAdObject("video_button_properties", null), "video_button_html", str);
        }
    }

    public int u() {
        return getIntFromAdObject("countdown_length", 0);
    }

    public Bundle v() {
        Map hashMap;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            hashMap = (Map) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Map c10;
                    c10 = b.this.c((f5) obj);
                    return c10;
                }
            });
        } else {
            try {
                hashMap = JsonUtils.toStringMap(getJsonObjectFromAdObject("custom_tabs_http_headers", new JSONObject()));
            } catch (JSONException e10) {
                this.sdk.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.sdk.O().a("DirectAd", "Failed to retrieve http headers for Custom Tabs", e10);
                }
                hashMap = new HashMap();
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry entry : hashMap.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        if (getBooleanFromAdObject("custom_tabs_should_use_webview_ua", Boolean.FALSE)) {
            bundle.putString(Command.HTTP_HEADER_USER_AGENT, k8.a());
        }
        return bundle;
    }

    public List w() {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.l
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List d10;
                    d10 = b.this.d((f5) obj);
                    return d10;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("custom_tabs_navigation_aborted_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a10;
    }

    public List x() {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.k
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List e10;
                    e10 = b.this.e((f5) obj);
                    return e10;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("custom_tabs_navigation_failed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a10;
    }

    public List y() {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.m
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List f10;
                    f10 = b.this.f((f5) obj);
                    return f10;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("custom_tabs_navigation_finished_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a10;
    }

    public List z() {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.a0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List g10;
                    g10 = b.this.g((f5) obj);
                    return g10;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("custom_tabs_navigation_started_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a10;
    }

    public void a(String str) {
        this.f9556i = str;
    }

    public void b(boolean z10) {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            f5Var.a("html_resources_cached", z10);
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putBoolean(this.adObject, "html_resources_cached", z10);
        }
    }

    public l4 i() {
        return (l4) this.f9554g.getAndSet(null);
    }

    public String k() {
        String stringFromAdObject = getStringFromAdObject("base_url", DomExceptionUtils.SEPARATOR);
        if ("null".equalsIgnoreCase(stringFromAdObject)) {
            return null;
        }
        return stringFromAdObject;
    }

    public d o() {
        if (this.f9560m == null) {
            this.f9560m = new d();
        }
        return this.f9560m;
    }

    public int p() {
        return getIntFromAdObject("close_button_size", ((Integer) this.sdk.a(v4.L1)).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean s(f5 f5Var) {
        return JsonUtils.getBoolean(f5Var.a("video_button_properties", (JSONObject) null), "should_cache_video_button_html_assets", Boolean.FALSE);
    }

    public void a(long j10) {
        this.f9557j = j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null);
            try {
                URL url = new URL(JsonUtils.getString(jSONObject, "url", null));
                String string = JsonUtils.getString(jSONObject, "vendor_key", null);
                String string2 = JsonUtils.getString(jSONObject, "parameters", null);
                if (StringUtils.isValidString(string) && StringUtils.isValidString(string2)) {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithParameters(string, url, string2));
                } else {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url));
                }
            } catch (Throwable th2) {
                this.sdk.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.sdk.O().a("DirectAd", "Failed to parse OMID verification script resource", th2);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List q(f5 f5Var) {
        return k7.a(f5Var.a("video_end_urls", new JSONObject()), getClCode(), r0(), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List d(f5 f5Var) {
        return k7.a(f5Var.a("custom_tabs_navigation_aborted_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List e(f5 f5Var) {
        return k7.a(f5Var.a("custom_tabs_navigation_failed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List j(f5 f5Var) {
        return k7.a(f5Var.a("custom_tabs_tab_shown_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List b(f5 f5Var) {
        return k7.a(f5Var.a("app_killed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    public long c() {
        return getLongFromAdObject("batfort", TimeUnit.SECONDS.toMillis(1L));
    }

    public void d() {
        this.f9553f.set(true);
    }

    private String c(MotionEvent motionEvent, boolean z10, boolean z11) {
        String stringFromAdObject = getStringFromAdObject("click_tracking_url", null);
        Map a10 = a(motionEvent, z10, z11);
        if (stringFromAdObject != null) {
            return StringUtils.replace(stringFromAdObject, a10);
        }
        return null;
    }

    private List b(final MotionEvent motionEvent, final boolean z10, final boolean z11) {
        List a10;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.q
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List a11;
                    a11 = b.this.a(motionEvent, z10, z11, (f5) obj);
                    return a11;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a10 = k7.a(getJsonObjectFromAdObject("click_tracking_urls", new JSONObject()), a(motionEvent, z10, z11), c(motionEvent, z10, z11), T(), a1(), this.sdk);
        }
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Map c(f5 f5Var) {
        try {
            return JsonUtils.toStringMap(f5Var.a("custom_tabs_http_headers", new JSONObject()));
        } catch (JSONException e10) {
            this.sdk.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.sdk.O().a("DirectAd", "Failed to retrieve http headers for Custom Tabs", e10);
            }
            return new HashMap();
        }
    }

    public void c(Uri uri) {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            f5Var.b("unmute_image", uri.toString());
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "unmute_image", uri.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List a(Function function, f5 f5Var) {
        return (List) function.apply(f5Var.a("omid_verification_script_resources", (JSONArray) null));
    }

    public void a(Uri uri) {
        this.f9551d.add(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, f5 f5Var) {
        JsonUtils.putString(f5Var.a("video_button_properties", (JSONObject) null), "video_button_html", str);
    }

    public List b(final MotionEvent motionEvent, final boolean z10) {
        List a10;
        List list;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            list = (List) f5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.x
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List a11;
                    a11 = b.this.a(motionEvent, z10, (f5) obj);
                    return a11;
                }
            });
        } else {
            synchronized (this.adObjectLock) {
                a10 = k7.a(getJsonObjectFromAdObject("video_click_tracking_urls", new JSONObject()), a(motionEvent, true, z10), null, T(), a1(), this.sdk);
            }
            list = a10;
        }
        return list.isEmpty() ? b(motionEvent, true, z10) : list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(f5 f5Var) {
        return k7.a(f5Var.a("ad_closed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    public List a(MotionEvent motionEvent, boolean z10) {
        return b(motionEvent, false, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(MotionEvent motionEvent, boolean z10, boolean z11, f5 f5Var) {
        return k7.a(f5Var.a("click_tracking_urls", new JSONObject()), a(motionEvent, z10, z11), c(motionEvent, z10, z11), T(), a1(), this.sdk);
    }

    public void b(Uri uri) {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            f5Var.b("mute_image", uri.toString());
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "mute_image", uri.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(MotionEvent motionEvent, boolean z10, f5 f5Var) {
        return k7.a(f5Var.a("video_click_tracking_urls", new JSONObject()), a(motionEvent, true, z10), null, T(), a1(), this.sdk);
    }

    private Map a(MotionEvent motionEvent, boolean z10, boolean z11) {
        Point b10 = o0.b(com.applovin.impl.sdk.k.o());
        HashMap hashMap = new HashMap(7);
        hashMap.put("{CLCODE}", getClCode());
        hashMap.put("{CLICK_X}", String.valueOf(motionEvent != null ? motionEvent.getRawX() : -1.0f));
        hashMap.put("{CLICK_Y}", String.valueOf(motionEvent != null ? motionEvent.getRawY() : -1.0f));
        hashMap.put("{SCREEN_WIDTH}", String.valueOf(b10.x));
        hashMap.put("{SCREEN_HEIGHT}", String.valueOf(b10.y));
        hashMap.put("{IS_VIDEO_CLICK}", String.valueOf(z10));
        hashMap.put("{IS_INSTALL}", String.valueOf(z11));
        return hashMap;
    }

    public void a(l4 l4Var) {
        this.f9554g.set(l4Var);
    }

    private e.a a(boolean z10) {
        return z10 ? e.a.WHITE_ON_TRANSPARENT : e.a.WHITE_ON_BLACK;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e.a a(int i10) {
        if (i10 == 1) {
            return e.a.WHITE_ON_TRANSPARENT;
        }
        if (i10 == 2) {
            return e.a.INVISIBLE;
        }
        if (i10 == 3) {
            return e.a.TRANSPARENT_SKIP;
        }
        return e.a.WHITE_ON_BLACK;
    }
}
