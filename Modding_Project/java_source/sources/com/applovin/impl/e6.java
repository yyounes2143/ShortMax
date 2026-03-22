package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class e6 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final JSONObject f7881g;

    /* renamed from: h  reason: collision with root package name */
    private final AppLovinNativeAdLoadListener f7882h;

    public e6(JSONObject jSONObject, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super("TaskProcessNativeAdResponse", kVar);
        this.f7881g = jSONObject;
        this.f7882h = appLovinNativeAdLoadListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray = JsonUtils.getJSONArray(this.f7881g, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray());
        if (jSONArray.length() > 0) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Processing ad...");
            }
            this.f7960a.r0().a(new com.applovin.impl.sdk.nativeAd.b(JsonUtils.getJSONObject(jSONArray, 0, new JSONObject()), this.f7881g, this.f7882h, this.f7960a));
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.k(this.f7961b, "No ads were returned from the server");
        }
        k7.a("native_native", MaxAdFormat.NATIVE, this.f7881g, this.f7960a);
        this.f7882h.onNativeAdLoadFailed(AppLovinError.NO_FILL);
    }
}
