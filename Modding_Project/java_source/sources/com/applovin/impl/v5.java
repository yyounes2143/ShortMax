package com.applovin.impl;

import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class v5 extends x5 {

    /* renamed from: j  reason: collision with root package name */
    private final k f10411j;

    public v5(k kVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, com.applovin.impl.sdk.k kVar2) {
        super(u.a("adtoken_zone"), "TaskFetchNativeTokenAd", appLovinNativeAdLoadListener, kVar2);
        this.f10411j = kVar;
    }

    @Override // com.applovin.impl.p5
    protected Map h() {
        HashMap hashMap = new HashMap(2);
        hashMap.put("adtoken", this.f10411j.b());
        hashMap.put("adtoken_prefix", this.f10411j.d());
        return hashMap;
    }
}
