package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import com.applovin.impl.b6;
import com.applovin.impl.mediation.MaxAdWaterfallInfoImpl;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.MaxNetworkResponseInfoImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxErrorCode;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class d6 extends g5 {

    /* renamed from: o  reason: collision with root package name */
    private static final AtomicBoolean f7802o = new AtomicBoolean();

    /* renamed from: g  reason: collision with root package name */
    private final x2 f7803g;

    /* renamed from: h  reason: collision with root package name */
    private final JSONObject f7804h;

    /* renamed from: i  reason: collision with root package name */
    private final List f7805i;

    /* renamed from: j  reason: collision with root package name */
    private final a.InterfaceC0113a f7806j;

    /* renamed from: k  reason: collision with root package name */
    private final WeakReference f7807k;

    /* renamed from: l  reason: collision with root package name */
    private final String f7808l;

    /* renamed from: m  reason: collision with root package name */
    private long f7809m;

    /* renamed from: n  reason: collision with root package name */
    private final List f7810n;

    /* loaded from: classes2.dex */
    private class b extends g5 {

        /* renamed from: g  reason: collision with root package name */
        private final long f7811g;

        /* renamed from: h  reason: collision with root package name */
        private final int f7812h;

        /* renamed from: i  reason: collision with root package name */
        private final v2 f7813i;

        /* renamed from: j  reason: collision with root package name */
        private final List f7814j;

        /* loaded from: classes2.dex */
        class a extends f3 {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ MaxAdFormat f7816b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f7817c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(a.InterfaceC0113a interfaceC0113a, MaxAdFormat maxAdFormat, String str) {
                super(interfaceC0113a);
                this.f7816b = maxAdFormat;
                this.f7817c = str;
            }

            @Override // com.applovin.mediation.MaxAdListener
            public void onAdLoadFailed(String str, MaxError maxError) {
                long elapsedRealtime = SystemClock.elapsedRealtime() - b.this.f7811g;
                com.applovin.impl.sdk.o unused = b.this.f7962c;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = b.this.f7962c;
                    String str2 = b.this.f7961b;
                    oVar.a(str2, "Ad failed to load in " + elapsedRealtime + " ms for " + this.f7816b.getLabel() + " ad unit " + str + " with error: " + maxError);
                }
                b bVar = b.this;
                bVar.b("failed to load ad: " + maxError.getCode());
                b bVar2 = b.this;
                bVar2.a(bVar2.f7813i, MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD, elapsedRealtime, maxError);
                if (b.this.f7812h < b.this.f7814j.size() - 1) {
                    b bVar3 = b.this;
                    b.this.f7960a.r0().a((g5) new b(bVar3.f7812h + 1, b.this.f7814j), b6.b.MEDIATION);
                    return;
                }
                d6.this.b(new MaxErrorImpl(-5001, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."));
            }

            @Override // com.applovin.mediation.MaxAdListener
            public void onAdLoaded(MaxAd maxAd) {
                b.this.b("loaded ad");
                long elapsedRealtime = SystemClock.elapsedRealtime() - b.this.f7811g;
                com.applovin.impl.sdk.o unused = b.this.f7962c;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = b.this.f7962c;
                    String str = b.this.f7961b;
                    oVar.a(str, "Ad loaded in " + elapsedRealtime + "ms for " + this.f7816b.getLabel() + " ad unit " + this.f7817c);
                }
                v2 v2Var = (v2) maxAd;
                b.this.a(v2Var, MaxNetworkResponseInfo.AdLoadState.AD_LOADED, elapsedRealtime, null);
                int i10 = b.this.f7812h;
                while (true) {
                    i10++;
                    if (i10 >= b.this.f7814j.size()) {
                        d6.this.b(v2Var);
                        return;
                    } else {
                        b bVar = b.this;
                        bVar.a((v2) bVar.f7814j.get(i10), MaxNetworkResponseInfo.AdLoadState.AD_LOAD_NOT_ATTEMPTED, -1L, null);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str) {
        }

        @Override // java.lang.Runnable
        public void run() {
            Activity v02;
            String b10 = d6.this.f7803g.b();
            MaxAdFormat a10 = d6.this.f7803g.a();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str = this.f7961b;
                oVar.a(str, "Loading ad " + (this.f7812h + 1) + " of " + this.f7814j.size() + " from " + this.f7813i.c() + " for " + a10.getLabel() + " ad unit " + b10);
            }
            b("started to load ad");
            Context context = (Context) d6.this.f7807k.get();
            if (context instanceof Activity) {
                v02 = (Activity) context;
            } else {
                v02 = this.f7960a.v0();
            }
            this.f7960a.a0().b(this.f7813i);
            this.f7960a.X().loadThirdPartyMediatedAd(b10, this.f7813i, v02, new a(d6.this.f7806j, a10, b10));
        }

        private b(int i10, List list) {
            super(d6.this.f7961b, d6.this.f7960a, d6.this.f7803g.b());
            this.f7811g = SystemClock.elapsedRealtime();
            this.f7812h = i10;
            this.f7813i = (v2) list.get(i10);
            this.f7814j = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(v2 v2Var, MaxNetworkResponseInfo.AdLoadState adLoadState, long j10, MaxError maxError) {
            d6.this.f7810n.add(new MaxNetworkResponseInfoImpl(adLoadState, t3.a(v2Var.b()), v2Var.F(), v2Var.U(), j10, v2Var.C(), maxError));
        }
    }

    public d6(x2 x2Var, JSONObject jSONObject, Context context, com.applovin.impl.sdk.k kVar, a.InterfaceC0113a interfaceC0113a) {
        super("TaskProcessMediationWaterfall", kVar, x2Var.b());
        this.f7803g = x2Var;
        this.f7804h = jSONObject;
        this.f7806j = interfaceC0113a;
        this.f7807k = new WeakReference(context);
        this.f7808l = JsonUtils.getString(jSONObject, "mcode", "");
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray());
        this.f7805i = new ArrayList(jSONArray.length());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            this.f7805i.add(v2.a(x2Var, JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null), jSONObject, kVar));
        }
        this.f7810n = new ArrayList(this.f7805i.size());
    }

    @Override // java.lang.Runnable
    public void run() {
        final MaxErrorImpl maxErrorImpl;
        this.f7809m = SystemClock.elapsedRealtime();
        if (this.f7804h.optBoolean("is_testing", false) && !this.f7960a.t0().c() && f7802o.compareAndSet(false, true)) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.s9
                @Override // java.lang.Runnable
                public final void run() {
                    d6.this.e();
                }
            });
        }
        String b10 = this.f7803g.b();
        MaxAdFormat a10 = this.f7803g.a();
        if (this.f7805i.size() > 0) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Starting waterfall for " + a10.getLabel() + " ad unit " + b10 + " with " + this.f7805i.size() + " ad(s)...");
            }
            this.f7960a.r0().a(new b(0, this.f7805i));
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.k(this.f7961b, "No ads were returned from the server for " + a10.getLabel() + " ad unit " + b10);
        }
        k7.a(b10, a10, this.f7804h, this.f7960a);
        JSONObject jSONObject = JsonUtils.getJSONObject(this.f7804h, "settings", new JSONObject());
        long j10 = JsonUtils.getLong(jSONObject, "alfdcs", 0L);
        if (t3.a(this.f7804h, b10, this.f7960a)) {
            maxErrorImpl = new MaxErrorImpl(MaxErrorCode.INVALID_AD_UNIT_ID, "Ad Unit ID " + b10 + " is invalid or disabled.\nMake sure to use an Ad Unit ID from the MAX dashboard that is enabled and configured for the current application.\nFor more information, see https://developers.applovin.com/en/getting-started#step-2-create-an-ad-unit\nNote: New ad units cannot load ads until 30-60 minutes after they are created");
            if (k7.c(this.f7960a) && ((Boolean) this.f7960a.a(v4.f10320o6)).booleanValue()) {
                j10 = 0;
            }
        } else {
            maxErrorImpl = new MaxErrorImpl(204, "MAX returned no eligible ads from any mediated networks for this app/device");
        }
        if (j10 > 0) {
            long millis = TimeUnit.SECONDS.toMillis(j10);
            Runnable runnable = new Runnable() { // from class: com.applovin.impl.t9
                @Override // java.lang.Runnable
                public final void run() {
                    d6.this.b(maxErrorImpl);
                }
            };
            if (JsonUtils.getBoolean(jSONObject, "alfdcs_iba", Boolean.FALSE).booleanValue()) {
                g0.a(millis, this.f7960a, runnable);
                return;
            } else {
                AppLovinSdkUtils.runOnUiThreadDelayed(runnable, millis);
                return;
            }
        }
        b(maxErrorImpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        k7.a("MAX SDK Not Initialized In Test Mode", "Test ads may not load. Please force close and restart the app if you experience issues.", this.f7960a.v0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(v2 v2Var) {
        this.f7960a.a0().c(v2Var);
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f7809m;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.d(str, "Waterfall loaded in " + elapsedRealtime + "ms from " + v2Var.c() + " for " + this.f7803g.a().getLabel() + " ad unit " + this.f7803g.b());
        }
        v2Var.a(new MaxAdWaterfallInfoImpl(v2Var, elapsedRealtime, this.f7810n, this.f7808l));
        q2.f(this.f7806j, v2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void b(MaxError maxError) {
        ArrayList arrayList = new ArrayList(this.f7810n.size());
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : this.f7810n) {
            if (maxNetworkResponseInfo.getAdLoadState() == MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD) {
                arrayList.add(maxNetworkResponseInfo);
            }
        }
        if (arrayList.size() > 0) {
            StringBuilder sb2 = new StringBuilder("======FAILED AD LOADS======");
            sb2.append("\n");
            int i10 = 0;
            while (i10 < arrayList.size()) {
                MaxNetworkResponseInfo maxNetworkResponseInfo2 = (MaxNetworkResponseInfo) arrayList.get(i10);
                i10++;
                sb2.append(i10);
                sb2.append(") ");
                sb2.append(maxNetworkResponseInfo2.getMediatedNetwork().getName());
                sb2.append("\n");
                sb2.append("..code: ");
                sb2.append(maxNetworkResponseInfo2.getError().getCode());
                sb2.append("\n");
                sb2.append("..message: ");
                sb2.append(maxNetworkResponseInfo2.getError().getMessage());
                sb2.append("\n");
            }
            ((MaxErrorImpl) maxError).setAdLoadFailureInfo(sb2.toString());
        }
        String b10 = this.f7803g.b();
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f7809m;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.d(str, "Waterfall failed in " + elapsedRealtime + "ms for " + this.f7803g.a().getLabel() + " ad unit " + b10 + " with error: " + maxError);
        }
        ((MaxErrorImpl) maxError).setWaterfall(new MaxAdWaterfallInfoImpl(null, JsonUtils.getString(this.f7804h, "waterfall_name", ""), JsonUtils.getString(this.f7804h, "waterfall_test_name", ""), elapsedRealtime, this.f7810n, this.f7803g, JsonUtils.optList(JsonUtils.getJSONArray(this.f7804h, "mwf_info_urls", null), Collections.EMPTY_LIST), this.f7808l, JsonUtils.getString(this.f7804h, "event_id", "")));
        q2.a(this.f7806j, b10, maxError);
    }
}
