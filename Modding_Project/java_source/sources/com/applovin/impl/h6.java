package com.applovin.impl;

import com.applovin.impl.b6;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class h6 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final JSONObject f8048g;

    /* renamed from: h  reason: collision with root package name */
    private final JSONObject f8049h;

    /* renamed from: i  reason: collision with root package name */
    private final AppLovinAdLoadListener f8050i;

    public h6(JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super("TaskRenderAppLovinAd", kVar);
        this.f8048g = jSONObject;
        this.f8049h = jSONObject2;
        this.f8050i = appLovinAdLoadListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "Rendering ad...");
        }
        com.applovin.impl.sdk.ad.a aVar = new com.applovin.impl.sdk.ad.a(this.f8048g, this.f8049h, this.f7960a);
        boolean booleanValue = JsonUtils.getBoolean(this.f8048g, "gs_load_immediately", Boolean.FALSE).booleanValue();
        boolean booleanValue2 = JsonUtils.getBoolean(this.f8048g, "vs_load_immediately", Boolean.TRUE).booleanValue();
        k5 k5Var = new k5(aVar, this.f7960a, this.f8050i);
        k5Var.c(booleanValue2);
        k5Var.b(booleanValue);
        this.f7960a.r0().a((g5) k5Var, b6.b.CACHING);
    }
}
