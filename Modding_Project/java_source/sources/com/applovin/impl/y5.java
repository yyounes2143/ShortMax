package com.applovin.impl;

import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class y5 extends w5 {

    /* renamed from: j  reason: collision with root package name */
    private final k f10635j;

    public y5(k kVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar2) {
        super(u.a("adtoken_zone"), appLovinAdLoadListener, "TaskFetchTokenAd", kVar2);
        this.f10635j = kVar;
    }

    @Override // com.applovin.impl.p5
    protected Map h() {
        HashMap hashMap = new HashMap(2);
        hashMap.put("adtoken", this.f10635j.b());
        hashMap.put("adtoken_prefix", this.f10635j.d());
        return hashMap;
    }
}
