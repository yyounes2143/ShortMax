package com.applovin.impl.mediation.ads;

import android.view.ViewGroup;
import com.applovin.impl.a3;
import com.applovin.impl.c8;
import com.applovin.impl.d8;
import com.applovin.impl.mediation.ads.a;
/* loaded from: classes2.dex */
public class b implements d8.a {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8635a;

    /* renamed from: b  reason: collision with root package name */
    private final a3 f8636b;

    /* renamed from: c  reason: collision with root package name */
    private final d8 f8637c;

    /* renamed from: d  reason: collision with root package name */
    private final c8 f8638d;

    /* renamed from: e  reason: collision with root package name */
    private final a.InterfaceC0113a f8639e;

    public b(a3 a3Var, ViewGroup viewGroup, a.InterfaceC0113a interfaceC0113a, com.applovin.impl.sdk.k kVar) {
        this.f8635a = kVar;
        this.f8636b = a3Var;
        this.f8639e = interfaceC0113a;
        this.f8638d = new c8(viewGroup, kVar);
        d8 d8Var = new d8(viewGroup, kVar, this);
        this.f8637c = d8Var;
        d8Var.a(a3Var);
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = kVar.O();
            O.a("MaxNativeAdView", "Created new MaxNativeAdView (" + this + ")");
        }
    }

    public void a() {
        this.f8637c.b();
    }

    public a3 b() {
        return this.f8636b;
    }

    public void c() {
        this.f8635a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f8635a.O().a("MaxNativeAdView", "Handling view attached to window");
        }
        if (this.f8636b.o0().compareAndSet(false, true)) {
            this.f8635a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f8635a.O().a("MaxNativeAdView", "Scheduling impression for ad manually...");
            }
            if (this.f8636b.getNativeAd().isExpired()) {
                com.applovin.impl.sdk.o.h("MaxNativeAdView", "Attempting to display an expired native ad. Check if an ad is expired before displaying using `MaxAd.getNativeAd().isExpired()`");
            } else {
                this.f8635a.f().a(this.f8636b);
            }
            this.f8635a.X().processRawAdImpression(this.f8636b, this.f8639e);
        }
    }

    @Override // com.applovin.impl.d8.a
    public void onLogVisibilityImpression() {
        a(this.f8638d.a(this.f8636b));
    }

    private void a(long j10) {
        if (this.f8636b.p0().compareAndSet(false, true)) {
            this.f8635a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f8635a.O().a("MaxNativeAdView", "Scheduling viewability impression for ad...");
            }
            this.f8635a.X().processViewabilityAdImpressionPostback(this.f8636b, j10, this.f8639e);
        }
    }
}
