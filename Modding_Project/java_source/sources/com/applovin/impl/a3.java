package com.applovin.impl;

import android.os.SystemClock;
import android.view.ViewGroup;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a3 extends e3 implements s1 {

    /* renamed from: u  reason: collision with root package name */
    private final AtomicBoolean f7299u;

    /* renamed from: v  reason: collision with root package name */
    private final AtomicBoolean f7300v;

    public a3(x2 x2Var, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        super(x2Var, jSONObject, jSONObject2, null, kVar);
        this.f7299u = new AtomicBoolean();
        this.f7300v = new AtomicBoolean();
    }

    private long l0() {
        long a10 = a("ad_expiration_ms", -1L);
        if (a10 < 0) {
            return b("ad_expiration_ms", ((Long) this.f8036a.a(o3.J7)).longValue());
        }
        return a10;
    }

    @Override // com.applovin.impl.v2
    public v2 a(com.applovin.impl.mediation.h hVar) {
        return new a3(this, hVar);
    }

    @Override // com.applovin.impl.s1
    public long getTimeToLiveMillis() {
        return l0() - (SystemClock.elapsedRealtime() - H());
    }

    public MaxNativeAdView m0() {
        return this.f10192n.f();
    }

    public ViewGroup n0() {
        return this.f10192n.h();
    }

    public AtomicBoolean o0() {
        return this.f7299u;
    }

    public AtomicBoolean p0() {
        return this.f7300v;
    }

    public boolean q0() {
        return a("inacc", (Boolean) this.f8036a.a(o3.f9110c8)).booleanValue();
    }

    public boolean r0() {
        if (this.f10192n == null) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.s1
    public void setExpired() {
        MaxNativeAd nativeAd = getNativeAd();
        if (nativeAd != null) {
            nativeAd.setExpired();
        }
    }

    public void a(MaxNativeAdView maxNativeAdView) {
        this.f10192n.a(maxNativeAdView);
    }

    public void a(ViewGroup viewGroup) {
        this.f10192n.a(viewGroup);
    }

    private a3(a3 a3Var, com.applovin.impl.mediation.h hVar) {
        super(a3Var.M(), a3Var.a(), a3Var.g(), hVar, a3Var.f8036a);
        this.f7299u = new AtomicBoolean();
        this.f7300v = new AtomicBoolean();
    }
}
