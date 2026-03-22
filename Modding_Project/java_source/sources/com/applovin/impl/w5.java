package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class w5 extends p5 {

    /* renamed from: i  reason: collision with root package name */
    private final AppLovinAdLoadListener f10468i;

    public w5(u uVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        this(uVar, appLovinAdLoadListener, "TaskFetchNextAd", kVar);
    }

    @Override // com.applovin.impl.p5
    protected g5 a(JSONObject jSONObject) {
        return new c6(jSONObject, this.f9214g, this.f10468i, this.f7960a);
    }

    @Override // com.applovin.impl.p5
    protected String e() {
        return r0.a(this.f7960a);
    }

    @Override // com.applovin.impl.p5
    protected String f() {
        return r0.b(this.f7960a);
    }

    public w5(u uVar, AppLovinAdLoadListener appLovinAdLoadListener, String str, com.applovin.impl.sdk.k kVar) {
        super(uVar, str, kVar);
        this.f10468i = appLovinAdLoadListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.p5
    public void a(int i10, String str) {
        super.a(i10, str);
        AppLovinAdLoadListener appLovinAdLoadListener = this.f10468i;
        if (appLovinAdLoadListener instanceof l2) {
            ((l2) this.f10468i).failedToReceiveAdV2(new AppLovinError(i10, str));
            return;
        }
        appLovinAdLoadListener.failedToReceiveAd(i10);
    }
}
