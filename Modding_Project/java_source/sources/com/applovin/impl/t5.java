package com.applovin.impl;

import android.content.Context;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.b6;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.q3;
import com.applovin.impl.s4;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.bytedance.vodsetting.Module;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class t5 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final x2 f10046g;

    /* renamed from: h  reason: collision with root package name */
    private final JSONArray f10047h;

    /* renamed from: i  reason: collision with root package name */
    private final Context f10048i;

    /* renamed from: j  reason: collision with root package name */
    private final a.InterfaceC0113a f10049j;

    public t5(x2 x2Var, JSONArray jSONArray, Context context, com.applovin.impl.sdk.k kVar, a.InterfaceC0113a interfaceC0113a) {
        super("TaskFetchMediatedAd", kVar, x2Var.b());
        this.f10046g = x2Var;
        this.f10047h = jSONArray;
        this.f10048i = context;
        this.f10049j = interfaceC0113a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        try {
            r0.c(jSONObject, this.f7960a);
            r0.b(jSONObject, this.f7960a);
            r0.a(jSONObject, this.f7960a);
            i3.f(jSONObject, this.f7960a);
            i3.d(jSONObject, this.f7960a);
            i3.e(jSONObject, this.f7960a);
            i3.g(jSONObject, this.f7960a);
            this.f7960a.m().a();
            MaxAdFormat a10 = this.f10046g.a();
            MaxAdFormat formatFromString = MaxAdFormat.formatFromString(JsonUtils.getString(jSONObject, "ad_format", null));
            if (a10 == formatFromString) {
                a(jSONObject);
                return;
            }
            String b10 = this.f10046g.b();
            if (formatFromString == null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7962c.b(this.f7961b, "Mediated ad response is missing the ad format field for ad unit " + b10);
                }
                if (jSONObject.has(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS)) {
                    HashMap hashMap = new HashMap(3);
                    CollectionUtils.putStringIfValid("details", "Missing ad format field", hashMap);
                    CollectionUtils.putStringIfValid("ad_unit_id", b10, hashMap);
                    CollectionUtils.putStringIfValid("mcode", JsonUtils.getString(jSONObject, "mcode", ""), hashMap);
                    this.f7960a.E().a(c2.M0, this.f7961b, hashMap);
                }
                this.f10049j.onAdLoadFailed(b10, MaxAdapterError.NO_FILL);
                return;
            }
            String label = formatFromString.getLabel();
            String label2 = a10.getLabel();
            String str = "Incorrect format (" + label + ") loaded for (" + label2 + ") ad. Please verify if the ad unit ID (" + b10 + ") is assigned to the correct ad format.";
            if (k7.a(a10, formatFromString)) {
                com.applovin.impl.sdk.o.j(this.f7961b, str);
                a(jSONObject);
                return;
            }
            k1.a(str, new Object[0]);
            com.applovin.impl.sdk.o.h(this.f7961b, str);
            this.f10049j.onAdLoadFailed(b10, new MaxAdapterError(MaxAdapterError.INVALID_CONFIGURATION, 0, str));
            HashMap<String, String> hashMap2 = CollectionUtils.hashMap("ad_unit_id", b10);
            CollectionUtils.putStringIfValid("name", label2, hashMap2);
            CollectionUtils.putStringIfValid("details", label, hashMap2);
            this.f7960a.E().a(c2.E0, "incompatible_ad_format", hashMap2);
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Unable to process mediated ad response for ad unit " + this.f10046g.b(), th2);
            }
            throw new RuntimeException("Unable to process ad: " + th2);
        }
    }

    private void c(JSONObject jSONObject) {
        JSONObject andResetCustomPostBodyData = this.f7960a.X().getAndResetCustomPostBodyData();
        if (andResetCustomPostBodyData != null && k7.h(com.applovin.impl.sdk.k.o())) {
            JsonUtils.putAll(jSONObject, andResetCustomPostBodyData);
        }
    }

    private void d(JSONObject jSONObject) {
        if (((Boolean) this.f7960a.a(v4.C4)).booleanValue()) {
            r3 Y = this.f7960a.Y();
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            p3 p3Var = p3.f9203f;
            JsonUtils.putAll(jSONObject3, Y.a(p3Var, q3.a.AD_UNIT_ID));
            JsonUtils.putJSONObject(jSONObject2, "arpau", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            JsonUtils.putAll(jSONObject4, Y.a(p3Var, q3.a.AD_FORMAT));
            JsonUtils.putJSONObject(jSONObject2, "arpaf", jSONObject4);
            JSONObject jSONObject5 = new JSONObject();
            JsonUtils.putAll(jSONObject5, Y.a(p3.f9204g, q3.a.AD));
            JsonUtils.putJSONObject(jSONObject2, "ttdasipa_ms", jSONObject5);
            JsonUtils.putJSONObject(jSONObject, "mediation_stats", jSONObject2);
        }
    }

    private String e() {
        return i3.a(this.f7960a);
    }

    private String f() {
        return i3.b(this.f7960a);
    }

    private JSONObject g() {
        Map a10 = this.f7960a.B().a((Map) null, false, true);
        a10.putAll(this.f10046g.c());
        JSONObject jSONObject = new JSONObject(a10);
        e(jSONObject);
        h(jSONObject);
        f(jSONObject);
        c(jSONObject);
        g(jSONObject);
        d(jSONObject);
        return jSONObject;
    }

    private Map h() {
        HashMap hashMap = new HashMap(4);
        hashMap.put("AppLovin-Ad-Unit-Id", this.f10046g.b());
        hashMap.put("AppLovin-Ad-Format", this.f10046g.a().getLabel());
        Map d10 = this.f10046g.d();
        CollectionUtils.putObjectToStringIfValid("AppLovin-Retry-Attempt", d10.get("retry_attempt"), hashMap);
        CollectionUtils.putObjectToStringIfValid("AppLovin-Retry-Delay-Sec", d10.get("retry_delay_sec"), hashMap);
        return hashMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        MaxAdFormat a10 = this.f10046g.a();
        String b10 = this.f10046g.b();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Fetching next ad for " + a10.getLabel() + " ad unit " + b10);
        }
        j2.a();
        if (((Boolean) this.f7960a.a(v4.Q3)).booleanValue() && k7.j() && com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "User is connected to a VPN");
        }
        this.f7960a.P().a(c2.T, a10, b10, (MaxError) null);
        if (((Boolean) this.f7960a.a(v4.C4)).booleanValue()) {
            r3 Y = this.f7960a.Y();
            p3 p3Var = p3.f9203f;
            Y.a(p3Var, q3.a(b10));
            Y.a(p3Var, q3.a(a10));
        }
        k7.a(this.f7960a, this.f7961b);
        try {
            JSONObject g10 = g();
            HashMap hashMap = new HashMap();
            if (!((Boolean) this.f7960a.a(v4.f10335q5)).booleanValue() && !((Boolean) this.f7960a.a(v4.f10319o5)).booleanValue()) {
                hashMap.put("rid", UUID.randomUUID().toString());
            }
            if (!((Boolean) this.f7960a.a(v4.f10205a5)).booleanValue()) {
                hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f7960a.j0());
            }
            if (this.f7960a.t0().c()) {
                hashMap.put("test_mode", "1");
            }
            List b11 = this.f7960a.t0().b();
            String str2 = this.f7960a.o0().getExtraParameters().get("fan");
            if (b11 != null && !b11.isEmpty()) {
                String a11 = tb.a(",", b11);
                hashMap.put("filter_ad_network", a11);
                if (!this.f7960a.t0().c()) {
                    hashMap.put("fhkZsVqYC7", "1");
                }
                if (this.f7960a.t0().d()) {
                    hashMap.put("force_ad_network", a11);
                }
            } else if (StringUtils.isValidString(str2)) {
                hashMap.put("filter_ad_network", str2);
            }
            a aVar = new a(com.applovin.impl.sdk.network.a.a(this.f7960a).c(ShareTarget.METHOD_POST).a(h()).b(f()).a(e()).b(hashMap).a(g10).b(((Boolean) this.f7960a.a(o3.f9134o8)).booleanValue()).a((Object) new JSONObject()).c(((Long) this.f7960a.a(o3.f9123j7)).intValue()).a(((Integer) this.f7960a.a(v4.U2)).intValue()).b(((Long) this.f7960a.a(o3.f9121i7)).intValue()).a(s4.a.a(((Integer) this.f7960a.a(v4.f10255g5)).intValue())).f(true).a(), this.f7960a, b10, a10);
            aVar.c(o3.f9117g7);
            aVar.b(o3.f9119h7);
            this.f7960a.r0().a(aVar);
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7962c;
                String str3 = this.f7961b;
                oVar2.a(str3, "Unable to fetch ad for Ad Unit ID: " + b10, th2);
            }
            a("", 0, th2.getMessage());
        }
    }

    /* loaded from: classes2.dex */
    class a extends j6 {

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ String f10050m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ MaxAdFormat f10051n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar, String str, MaxAdFormat maxAdFormat) {
            super(aVar, kVar);
            this.f10050m = str;
            this.f10051n = maxAdFormat;
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, JSONObject jSONObject, int i10) {
            if (i10 != 200) {
                t5.this.a(str, i10, (String) null);
                return;
            }
            JsonUtils.putLong(jSONObject, "ad_fetch_latency_millis", this.f8198l.a());
            JsonUtils.putLong(jSONObject, "ad_fetch_response_size", this.f8198l.b());
            HashMap hashMap = new HashMap(6);
            CollectionUtils.putStringIfValid("url", StringUtils.getHost(str), hashMap);
            CollectionUtils.putStringIfValid(Module.ResponseKey.Code, String.valueOf(i10), hashMap);
            CollectionUtils.putStringIfValid("ad_unit_id", this.f10050m, hashMap);
            CollectionUtils.putStringIfValid("ad_format", this.f10051n.getLabel(), hashMap);
            CollectionUtils.putStringIfValid("latency_ms", String.valueOf(this.f8198l.a()), hashMap);
            CollectionUtils.putStringIfValid("response_size", String.valueOf(this.f8198l.b()), hashMap);
            this.f7960a.P().d(c2.U, hashMap);
            t5.this.b(jSONObject);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, JSONObject jSONObject) {
            t5.this.a(str, i10, str2);
            this.f7960a.E().a("fetchMediatedAd", str, i10, str2);
        }
    }

    private void e(JSONObject jSONObject) {
        String b10 = this.f10046g.b();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("ad_unit_id", b10);
        jSONObject2.put("ad_format", this.f10046g.a().getLabel());
        Map map = CollectionUtils.map(this.f10046g.d());
        com.applovin.impl.sdk.p a02 = this.f7960a.a0();
        CollectionUtils.putStringIfValid("previous_request_id", a02.b(b10), map);
        CollectionUtils.putStringIfValid("previous_loaded_request_id", a02.a(b10), map);
        p.a c10 = a02.c(b10);
        if (c10 != null) {
            if (Boolean.parseBoolean(this.f7960a.o0().getExtraParameters().get("esc"))) {
                map.put("previous_winning_network", "APPLOVIN_NETWORK");
                map.put("previous_winning_network_name", "AppLovin");
            } else {
                map.put("previous_winning_network", c10.a());
                map.put("previous_winning_network_name", c10.c());
            }
            if (this.f7960a.R() != null) {
                Queue<v2> c11 = this.f7960a.R().c(b10);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (v2 v2Var : c11) {
                    arrayList.add(v2Var.c());
                    arrayList2.add(v2Var.getNetworkName());
                }
                CollectionUtils.putStringIfValid("queued_ad_networks", tb.a(",", arrayList), map);
                CollectionUtils.putStringIfValid("queued_ad_network_names", tb.a(",", arrayList2), map);
            }
        }
        jSONObject2.put("extra_parameters", CollectionUtils.toJson(map));
        jSONObject.put("ad_info", jSONObject2);
    }

    private void f(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("disabled", new JSONArray(this.f7960a.T().a()));
            jSONObject2.put("installed", t3.b(this.f7960a));
            jSONObject2.put("initialized", this.f7960a.S().b());
            jSONObject2.put("initialized_classnames", new JSONArray((Collection) this.f7960a.S().a()));
            jSONObject2.put("loaded_classnames", new JSONArray(this.f7960a.T().c()));
            jSONObject2.put("failed_classnames", new JSONArray(this.f7960a.T().b()));
            jSONObject.put("adapters_info", jSONObject2);
        } catch (Exception e10) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Failed to populate adapter classNames", e10);
            }
            throw new RuntimeException("Failed to populate classNames: " + e10);
        }
    }

    private void a(JSONObject jSONObject) {
        d6 d6Var = new d6(this.f10046g, jSONObject, this.f10048i, this.f7960a, this.f10049j);
        long j10 = JsonUtils.getLong(jSONObject, "process_waterfall_delay_ms", -1L);
        if (j10 > 0) {
            this.f7960a.r0().a(d6Var, b6.b.MEDIATION, j10, true);
        } else {
            this.f7960a.r0().a(d6Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i10, String str2) {
        MaxErrorImpl maxErrorImpl;
        String b10 = this.f10046g.b();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str3 = this.f7961b;
            oVar.b(str3, "Unable to fetch ad for ad unit " + b10 + ": server returned " + i10);
        }
        if (i10 == -1009) {
            maxErrorImpl = new MaxErrorImpl(-1009, str2);
        } else if (i10 == -1001) {
            maxErrorImpl = new MaxErrorImpl(-1001, str2);
        } else if (StringUtils.isValidString(str2)) {
            maxErrorImpl = new MaxErrorImpl(-1000, str2);
        } else {
            maxErrorImpl = new MaxErrorImpl(-1);
        }
        HashMap hashMap = new HashMap(5);
        CollectionUtils.putStringIfValid("url", StringUtils.getHost(str), hashMap);
        CollectionUtils.putStringIfValid(Module.ResponseKey.Code, String.valueOf(i10), hashMap);
        CollectionUtils.putStringIfValid("error_message", str2, hashMap);
        CollectionUtils.putStringIfValid("ad_unit_id", b10, hashMap);
        CollectionUtils.putStringIfValid("ad_format", this.f10046g.a().getLabel(), hashMap);
        this.f7960a.P().d(c2.V, hashMap);
        q2.a(this.f10049j, b10, maxErrorImpl);
    }

    private void h(JSONObject jSONObject) {
        JSONArray jSONArray = this.f10047h;
        if (jSONArray != null) {
            jSONObject.put("signal_data", jSONArray);
        }
    }

    private void g(JSONObject jSONObject) {
        JsonUtils.putObject(jSONObject, "sdk_extra_parameters", new JSONObject(this.f7960a.o0().getExtraParameters()));
    }
}
