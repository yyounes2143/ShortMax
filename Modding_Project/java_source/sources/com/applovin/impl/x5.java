package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class x5 extends p5 {

    /* renamed from: i  reason: collision with root package name */
    private final AppLovinNativeAdLoadListener f10535i;

    public x5(u uVar, String str, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super(uVar, str, kVar);
        this.f10535i = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.impl.p5
    protected g5 a(JSONObject jSONObject) {
        return new e6(jSONObject, this.f10535i, this.f7960a);
    }

    @Override // com.applovin.impl.p5
    protected String e() {
        return r0.d(this.f7960a);
    }

    @Override // com.applovin.impl.p5
    protected String f() {
        return r0.e(this.f7960a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.p5
    public void a(int i10, String str) {
        super.a(i10, str);
        this.f10535i.onNativeAdLoadFailed(new AppLovinError(i10, str));
    }
}
