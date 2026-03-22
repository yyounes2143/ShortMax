package com.applovin.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.s4;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.network.a;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.bytedance.vodsetting.Module;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class p5 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    protected final u f9214g;

    /* renamed from: h  reason: collision with root package name */
    private final String f9215h;

    public p5(u uVar, String str, com.applovin.impl.sdk.k kVar) {
        super(str, kVar);
        this.f9214g = uVar;
        this.f9215h = kVar.b();
    }

    private Map g() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("AppLovin-Zone-Id", this.f9214g.e());
        if (this.f9214g.f() != null) {
            hashMap.put("AppLovin-Ad-Size", this.f9214g.f().getLabel());
        }
        if (this.f9214g.g() != null) {
            hashMap.put("AppLovin-Ad-Type", this.f9214g.g().getLabel());
        }
        return hashMap;
    }

    protected abstract g5 a(JSONObject jSONObject);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i10, String str) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str2 = this.f7961b;
            oVar.b(str2, "Unable to fetch " + this.f9214g + " ad: server returned " + i10);
        }
        this.f7960a.g().a(c2.f7654m, this.f9214g, new AppLovinError(i10, str));
    }

    protected void b(JSONObject jSONObject) {
        r0.c(jSONObject, this.f7960a);
        r0.b(jSONObject, this.f7960a);
        r0.a(jSONObject, this.f7960a);
        u.a(jSONObject);
        this.f7960a.r0().a(a(jSONObject));
    }

    protected abstract String e();

    protected abstract String f();

    protected Map h() {
        HashMap hashMap = new HashMap(4);
        hashMap.put(AppLovinUtils.ServerParameterKeys.ZONE_ID, this.f9214g.e());
        if (this.f9214g.f() != null) {
            hashMap.put("size", this.f9214g.f().getLabel());
        }
        if (this.f9214g.g() != null) {
            hashMap.put("require", this.f9214g.g().getLabel());
        }
        return hashMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        s4.a aVar;
        Map map;
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "Fetching next ad of zone: " + this.f9214g);
        }
        if (((Boolean) this.f7960a.a(v4.Q3)).booleanValue() && k7.j() && com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "User is connected to a VPN");
        }
        k7.a(this.f7960a, this.f7961b);
        this.f7960a.g().a(c2.f7650k, this.f9214g, (AppLovinError) null);
        try {
            JSONObject andResetCustomPostBody = this.f7960a.k().getAndResetCustomPostBody();
            boolean booleanValue = ((Boolean) this.f7960a.a(v4.f10245f3)).booleanValue();
            String str = ShareTarget.METHOD_POST;
            if (booleanValue) {
                aVar = s4.a.a(((Integer) this.f7960a.a(v4.f10271i5)).intValue());
                JSONObject jSONObject = new JSONObject(this.f7960a.B().a(h(), false, true));
                map = new HashMap();
                if (!((Boolean) this.f7960a.a(v4.f10351s5)).booleanValue() && !((Boolean) this.f7960a.a(v4.f10319o5)).booleanValue()) {
                    map.put("rid", UUID.randomUUID().toString());
                }
                if (!((Boolean) this.f7960a.a(v4.f10205a5)).booleanValue()) {
                    map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f7960a.j0());
                }
                JsonUtils.putAll(jSONObject, andResetCustomPostBody);
                andResetCustomPostBody = jSONObject;
            } else {
                s4.a a10 = s4.a.a(((Integer) this.f7960a.a(v4.f10279j5)).intValue());
                Map a11 = k7.a(this.f7960a.B().a(h(), false, false));
                if (!((Boolean) this.f7960a.a(v4.A6)).booleanValue()) {
                    a11.remove("video_decoders");
                }
                if (andResetCustomPostBody == null) {
                    str = ShareTarget.METHOD_GET;
                    andResetCustomPostBody = null;
                }
                aVar = a10;
                map = a11;
            }
            if (k7.h(a()) || k7.j(a())) {
                map.putAll(this.f7960a.k().getAndResetCustomQueryParams());
            }
            if (StringUtils.isValidString(this.f9215h)) {
                map.put("sts", this.f9215h);
            }
            a.C0121a f10 = com.applovin.impl.sdk.network.a.a(this.f7960a).b(f()).a(e()).b(map).c(str).a(g()).a((Object) new JSONObject()).a(((Integer) this.f7960a.a(v4.U2)).intValue()).c(((Boolean) this.f7960a.a(v4.V2)).booleanValue()).d(((Boolean) this.f7960a.a(v4.W2)).booleanValue()).c(((Integer) this.f7960a.a(v4.T2)).intValue()).a(aVar).f(true);
            if (andResetCustomPostBody != null) {
                f10.a(andResetCustomPostBody);
                f10.b(((Boolean) this.f7960a.a(v4.C5)).booleanValue());
            }
            a aVar2 = new a(f10.a(), this.f7960a);
            aVar2.c(v4.f10314o0);
            aVar2.b(v4.f10322p0);
            this.f7960a.r0().a(aVar2);
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Unable to fetch ad for zone id: " + this.f9214g, th2);
            }
            a(0, th2.getMessage());
        }
    }

    /* loaded from: classes2.dex */
    class a extends j6 {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
            super(aVar, kVar);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, JSONObject jSONObject, int i10) {
            if (i10 == 200) {
                JsonUtils.putLong(jSONObject, "ad_fetch_latency_millis", this.f8198l.a());
                JsonUtils.putLong(jSONObject, "ad_fetch_response_size", this.f8198l.b());
                HashMap hashMap = new HashMap(5);
                CollectionUtils.putStringIfValid("url", StringUtils.getHost(str), hashMap);
                CollectionUtils.putStringIfValid(Module.ResponseKey.Code, String.valueOf(i10), hashMap);
                CollectionUtils.putStringIfValid("ad_zone_id", p5.this.f9214g.e(), hashMap);
                CollectionUtils.putStringIfValid("latency_ms", String.valueOf(this.f8198l.a()), hashMap);
                CollectionUtils.putStringIfValid("response_size", String.valueOf(this.f8198l.b()), hashMap);
                this.f7960a.g().d(c2.f7652l, hashMap);
                p5.this.b(jSONObject);
                return;
            }
            p5.this.a(i10, MaxAdapterError.NO_FILL.getErrorMessage());
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, JSONObject jSONObject) {
            p5.this.a(i10, str2);
            this.f7960a.E().a("fetchAd", str, i10, str2);
        }
    }
}
