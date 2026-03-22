package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.google.android.gms.ads.AdError;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class c6 extends g5 implements l2 {

    /* renamed from: g  reason: collision with root package name */
    private final JSONObject f7709g;

    /* renamed from: h  reason: collision with root package name */
    private final u f7710h;

    /* renamed from: i  reason: collision with root package name */
    private final AppLovinAdLoadListener f7711i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f7712j;

    public c6(JSONObject jSONObject, u uVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        this(jSONObject, uVar, false, appLovinAdLoadListener, kVar);
    }

    private void a(JSONObject jSONObject) {
        String string = JsonUtils.getString(jSONObject, "type", AdError.UNDEFINED_DOMAIN);
        if ("applovin".equalsIgnoreCase(string)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Starting task for AppLovin ad...");
            }
            this.f7960a.r0().a(new h6(jSONObject, this.f7709g, this, this.f7960a));
        } else if ("vast".equalsIgnoreCase(string)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Starting task for VAST ad...");
            }
            this.f7960a.r0().a(f6.a(jSONObject, this.f7709g, this, this.f7960a));
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str = this.f7961b;
                oVar.b(str, "Unable to process ad of unknown type: " + string);
            }
            failedToReceiveAdV2(new AppLovinError(AppLovinErrorCodes.INVALID_RESPONSE, "Unknown ad type: " + string));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        AppLovinAdLoadListener appLovinAdLoadListener = this.f7711i;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(appLovinAd);
        }
        if (!this.f7712j && (appLovinAd instanceof com.applovin.impl.sdk.ad.b)) {
            this.f7960a.g().a(c2.f7656n, (com.applovin.impl.sdk.ad.b) appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i10) {
        failedToReceiveAdV2(new AppLovinError(i10, ""));
    }

    @Override // com.applovin.impl.l2
    public void failedToReceiveAdV2(AppLovinError appLovinError) {
        AppLovinAdLoadListener appLovinAdLoadListener = this.f7711i;
        if (appLovinAdLoadListener == null) {
            return;
        }
        if (appLovinAdLoadListener instanceof l2) {
            ((l2) appLovinAdLoadListener).failedToReceiveAdV2(appLovinError);
        } else {
            appLovinAdLoadListener.failedToReceiveAd(appLovinError.getCode());
        }
        if (!this.f7712j) {
            this.f7960a.g().a(c2.f7658o, this.f7710h, appLovinError);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray = JsonUtils.getJSONArray(this.f7709g, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray());
        if (jSONArray.length() > 0) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Processing ad...");
            }
            a(JsonUtils.getJSONObject(jSONArray, 0, new JSONObject()));
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.k(this.f7961b, "No ads were returned from the server");
        }
        k7.a(this.f7710h.e(), this.f7710h.d(), this.f7709g, this.f7960a);
        failedToReceiveAdV2(AppLovinError.NO_FILL);
    }

    public c6(JSONObject jSONObject, u uVar, boolean z10, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super("TaskProcessAdResponse", kVar);
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (uVar != null) {
            this.f7709g = jSONObject;
            this.f7710h = uVar;
            this.f7711i = appLovinAdLoadListener;
            this.f7712j = z10;
            return;
        }
        throw new IllegalArgumentException("No zone specified");
    }
}
