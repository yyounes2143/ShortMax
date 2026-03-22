package com.applovin.impl.mediation.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.applovin.impl.b6;
import com.applovin.impl.b8;
import com.applovin.impl.c2;
import com.applovin.impl.c8;
import com.applovin.impl.d8;
import com.applovin.impl.g5;
import com.applovin.impl.j;
import com.applovin.impl.k7;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.o0;
import com.applovin.impl.o3;
import com.applovin.impl.p6;
import com.applovin.impl.q2;
import com.applovin.impl.sdk.f;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v2;
import com.applovin.impl.y2;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxAdViewConfiguration;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class MaxAdViewImpl extends com.applovin.impl.mediation.ads.a implements f.a, d8.a, j.b {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;

    /* renamed from: a  reason: collision with root package name */
    private final Context f8562a;

    /* renamed from: b  reason: collision with root package name */
    private final MaxAdView f8563b;

    /* renamed from: c  reason: collision with root package name */
    private final String f8564c;

    /* renamed from: d  reason: collision with root package name */
    private final View f8565d;

    /* renamed from: e  reason: collision with root package name */
    private long f8566e;

    /* renamed from: f  reason: collision with root package name */
    private y2 f8567f;

    /* renamed from: g  reason: collision with root package name */
    private String f8568g;

    /* renamed from: h  reason: collision with root package name */
    private String f8569h;

    /* renamed from: i  reason: collision with root package name */
    private final MaxAdViewConfiguration f8570i;

    /* renamed from: j  reason: collision with root package name */
    private final b f8571j;

    /* renamed from: k  reason: collision with root package name */
    private final d f8572k;

    /* renamed from: l  reason: collision with root package name */
    private final com.applovin.impl.sdk.f f8573l;

    /* renamed from: m  reason: collision with root package name */
    private final c8 f8574m;

    /* renamed from: n  reason: collision with root package name */
    private final d8 f8575n;

    /* renamed from: o  reason: collision with root package name */
    private final Object f8576o;

    /* renamed from: p  reason: collision with root package name */
    private final Object f8577p;

    /* renamed from: q  reason: collision with root package name */
    private y2 f8578q;

    /* renamed from: r  reason: collision with root package name */
    private MaxAd f8579r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f8580s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f8581t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f8582u;

    /* renamed from: v  reason: collision with root package name */
    private final AtomicBoolean f8583v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f8584w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f8585x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f8586y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f8587z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b extends c {
        private b() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                String str2 = maxAdViewImpl.tag;
                oVar2.a(str2, "MaxAdListener.onAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxAdViewImpl.this.adListener);
            }
            q2.a(MaxAdViewImpl.this.adListener, str, maxError, true);
            MaxAdViewImpl.this.a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.a()) {
                com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "Precache ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                }
                MaxAdViewImpl.this.sdk.X().destroyAd(maxAd);
                return;
            }
            y2 y2Var = (y2) maxAd;
            y2Var.g(MaxAdViewImpl.this.f8568g);
            y2Var.f(MaxAdViewImpl.this.f8569h);
            if (y2Var.y() != null) {
                if (y2Var.q0()) {
                    long l02 = y2Var.l0();
                    MaxAdViewImpl.this.sdk.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O = MaxAdViewImpl.this.sdk.O();
                        String str2 = MaxAdViewImpl.this.tag;
                        O.a(str2, "Scheduling banner ad refresh " + l02 + " milliseconds from now for '" + MaxAdViewImpl.this.adUnitId + "'...");
                    }
                    MaxAdViewImpl.this.f8573l.a(l02);
                    if (MaxAdViewImpl.this.f8573l.g() || MaxAdViewImpl.this.f8582u) {
                        com.applovin.impl.sdk.o oVar3 = MaxAdViewImpl.this.logger;
                        if (com.applovin.impl.sdk.o.a()) {
                            MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                            maxAdViewImpl2.logger.a(maxAdViewImpl2.tag, "Pausing ad refresh for publisher");
                        }
                        MaxAdViewImpl.this.f8573l.j();
                    }
                }
                com.applovin.impl.sdk.o oVar4 = MaxAdViewImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxAdViewImpl maxAdViewImpl3 = MaxAdViewImpl.this;
                    com.applovin.impl.sdk.o oVar5 = maxAdViewImpl3.logger;
                    String str3 = maxAdViewImpl3.tag;
                    oVar5.a(str3, "MaxAdListener.onAdLoaded(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                q2.f(MaxAdViewImpl.this.adListener, maxAd, true);
                MaxAdViewImpl.this.d(y2Var);
                return;
            }
            MaxAdViewImpl.this.sdk.X().destroyAd(y2Var);
            onAdLoadFailed(y2Var.getAdUnitId(), new MaxErrorImpl(-5001, "Ad view not fully loaded"));
        }
    }

    /* loaded from: classes2.dex */
    private abstract class c implements MaxAdListener, MaxAdViewAdListener, MaxAdRevenueListener, a.InterfaceC0113a {
        private c() {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f8578q)) {
                com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdListener.onAdClicked(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                q2.a(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f8579r)) {
                MaxAdViewImpl.this.f8579r = null;
                if ((MaxAdViewImpl.this.f8578q.r0() || MaxAdViewImpl.this.B) && MaxAdViewImpl.this.f8580s) {
                    MaxAdViewImpl.this.f8580s = false;
                    MaxAdViewImpl.this.startAutoRefresh();
                }
                com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdViewAdListener.onAdCollapsed(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                q2.b(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            if (maxAd.equals(MaxAdViewImpl.this.f8578q)) {
                com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdListener.onAdDisplayFailed(ad=" + maxAd + ", error=" + maxError + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                q2.a(MaxAdViewImpl.this.adListener, maxAd, maxError, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f8578q)) {
                com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdListener.onAdDisplayed(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                q2.c(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f8578q)) {
                MaxAdViewImpl.this.f8579r = maxAd;
                if ((MaxAdViewImpl.this.f8578q.r0() || MaxAdViewImpl.this.B) && !MaxAdViewImpl.this.f8573l.g()) {
                    MaxAdViewImpl.this.f8580s = true;
                    MaxAdViewImpl.this.stopAutoRefresh();
                }
                com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdViewAdListener.onAdExpanded(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                q2.d(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f8578q)) {
                com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdListener.onAdHidden(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                q2.e(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
            com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                String str2 = maxAdViewImpl.tag;
                oVar2.a(str2, "MaxAdRequestListener.onAdRequestStarted(adUnitId=" + str + "), listener=" + MaxAdViewImpl.this.requestListener);
            }
            q2.a(MaxAdViewImpl.this.requestListener, str, true);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                String str = maxAdViewImpl.tag;
                oVar2.a(str, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.revenueListener);
            }
            q2.a(MaxAdViewImpl.this.revenueListener, maxAd, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d extends c {
        private d() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                String str2 = maxAdViewImpl.tag;
                oVar2.a(str2, "Failed to precache ad for refresh with error code: " + maxError.getCode());
            }
            MaxAdViewImpl.this.a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.f8585x) {
                com.applovin.impl.sdk.o oVar = MaxAdViewImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    com.applovin.impl.sdk.o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "Ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                }
                MaxAdViewImpl.this.sdk.X().destroyAd(maxAd);
                return;
            }
            com.applovin.impl.sdk.o oVar3 = MaxAdViewImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                maxAdViewImpl2.logger.a(maxAdViewImpl2.tag, "Successfully precached ad for refresh");
            }
            if (!((Boolean) MaxAdViewImpl.this.sdk.a(o3.f9148y7)).booleanValue()) {
                MaxAdViewImpl.this.a(maxAd);
            } else {
                MaxAdViewImpl.this.b(maxAd);
            }
        }
    }

    public MaxAdViewImpl(String str, MaxAdFormat maxAdFormat, MaxAdViewConfiguration maxAdViewConfiguration, MaxAdView maxAdView, View view, Context context) {
        super(str, maxAdFormat, "MaxAdView", AppLovinSdk.getInstance(context).a());
        this.f8564c = UUID.randomUUID().toString().toLowerCase(Locale.US);
        this.f8566e = Long.MAX_VALUE;
        this.f8576o = new Object();
        this.f8577p = new Object();
        this.f8578q = null;
        this.f8579r = null;
        this.f8583v = new AtomicBoolean();
        this.f8585x = false;
        this.f8562a = context.getApplicationContext();
        this.f8563b = maxAdView;
        this.f8565d = view;
        this.f8571j = new b();
        this.f8572k = new d();
        this.f8573l = new com.applovin.impl.sdk.f(this.sdk, this);
        this.f8574m = new c8(maxAdView, this.sdk);
        this.f8575n = new d8(maxAdView, this.sdk, this);
        this.f8570i = maxAdViewConfiguration;
        this.sdk.j().a(this);
        if (maxAdViewConfiguration != null && maxAdViewConfiguration.getAdaptiveType() != MaxAdViewConfiguration.AdaptiveType.NONE) {
            setExtraParameter("adaptive_banner", Boolean.toString(true));
            setLocalExtraParameter("adaptive_banner_type", maxAdViewConfiguration.getAdaptiveType().toString());
            int adaptiveWidth = maxAdViewConfiguration.getAdaptiveWidth();
            if (adaptiveWidth > 0) {
                setLocalExtraParameter("adaptive_banner_width", Integer.valueOf(adaptiveWidth));
            }
            int inlineMaximumHeight = maxAdViewConfiguration.getInlineMaximumHeight();
            if (inlineMaximumHeight > 0) {
                setLocalExtraParameter("inline_adaptive_banner_max_height", Integer.valueOf(inlineMaximumHeight));
            }
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "Created new MaxAdView (" + this + ")");
        }
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        if (((Boolean) this.sdk.a(o3.f9149z7)).booleanValue()) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.c
                @Override // java.lang.Runnable
                public final void run() {
                    MaxAdViewImpl.this.g();
                }
            });
        } else {
            g();
        }
    }

    public MaxAdFormat getAdFormat() {
        return this.adFormat;
    }

    public String getPlacement() {
        return this.f8568g;
    }

    public void loadAd() {
        loadAd(com.applovin.impl.i.PUBLISHER_INITIATED);
    }

    @Override // com.applovin.impl.sdk.f.a
    public void onAdRefresh() {
        if (((Boolean) this.sdk.a(o3.f9148y7)).booleanValue()) {
            f();
        } else {
            e();
        }
    }

    @Override // com.applovin.impl.j.b
    public void onCreativeIdGenerated(String str, String str2) {
        y2 y2Var = this.f8578q;
        if (y2Var != null && y2Var.P().equalsIgnoreCase(str)) {
            this.f8578q.h(str2);
            q2.b(this.adReviewListener, str2, this.f8578q);
            return;
        }
        y2 y2Var2 = this.f8567f;
        if (y2Var2 != null && y2Var2.P().equalsIgnoreCase(str)) {
            this.f8567f.h(str2);
        }
    }

    @Override // com.applovin.impl.d8.a
    public void onLogVisibilityImpression() {
        a(this.f8578q, this.f8574m.a(this.f8578q));
    }

    public void onWindowVisibilityChanged(int i10) {
        if (((Boolean) this.sdk.a(o3.f9145v7)).booleanValue() && this.f8573l.h()) {
            if (b8.b(i10)) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.logger.a(this.tag, "Ad view visible");
                }
                this.f8573l.d();
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.a(this.tag, "Ad view hidden");
            }
            this.f8573l.c();
        }
    }

    public void setCustomData(String str) {
        if (this.f8578q != null && com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str2 = this.tag;
            oVar.k(str2, "Setting custom data (" + str + ") for Ad Unit ID (" + this.adUnitId + ") after an ad has been loaded already.");
        }
        k7.b(str, this.tag);
        this.f8569h = str;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void setExtraParameter(String str, String str2) {
        super.setExtraParameter(str, str2);
        a(str, str2);
    }

    public void setPlacement(String str) {
        if (this.f8578q != null && com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str2 = this.tag;
            oVar.k(str2, "Setting placement (" + str + ") for Ad Unit ID (" + this.adUnitId + ") after an ad has been loaded already.");
        }
        this.f8568g = str;
    }

    public void setPublisherBackgroundColor(int i10) {
        this.f8566e = i10;
    }

    public void startAutoRefresh() {
        this.f8582u = false;
        if (this.f8573l.g()) {
            this.f8573l.m();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Resumed auto-refresh with remaining time: " + this.f8573l.b() + "ms");
            }
        } else if (com.applovin.impl.sdk.o.a()) {
            this.logger.a(this.tag, "Ignoring call to startAutoRefresh() - ad refresh is not paused");
        }
    }

    public void stopAutoRefresh() {
        if (this.f8578q != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Pausing auto-refresh with remaining time: " + this.f8573l.b() + "ms");
            }
            this.f8573l.j();
        } else if (!this.f8586y && !((Boolean) this.sdk.a(o3.f9147x7)).booleanValue()) {
            com.applovin.impl.sdk.o.j(this.tag, "Stopping auto-refresh has no effect until after the first ad has been loaded.");
        } else {
            this.f8582u = true;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("MaxAdView{adUnitId='");
        sb2.append(this.adUnitId);
        sb2.append('\'');
        sb2.append(", adListener=");
        Object obj = this.adListener;
        if (obj == this.f8563b) {
            obj = "this";
        }
        sb2.append(obj);
        sb2.append(", isDestroyed=");
        sb2.append(a());
        sb2.append('}');
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final y2 y2Var) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.g
            @Override // java.lang.Runnable
            public final void run() {
                MaxAdViewImpl.this.b(y2Var);
            }
        });
    }

    private void e() {
        this.f8583v.set(false);
        if (this.f8567f != null) {
            i();
        } else if (b()) {
            if (this.f8581t) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.logger.a(this.tag, "Refreshing ad from network due to viewability requirements not met for refresh request...");
                }
                loadAd(com.applovin.impl.i.REFRESH);
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.b(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
            }
            this.f8583v.set(true);
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.a(this.tag, "Refreshing ad from network...");
            }
            loadAd(com.applovin.impl.i.REFRESH);
        }
    }

    private void f() {
        boolean z10;
        boolean z11;
        synchronized (this.f8577p) {
            try {
                z10 = false;
                this.f8583v.set(false);
                z11 = this.f8567f != null;
                if (!z11) {
                    if (b()) {
                        if (this.f8581t) {
                            if (com.applovin.impl.sdk.o.a()) {
                                this.logger.a(this.tag, "Refreshing ad from network due to viewability requirements not met for refresh request...");
                            }
                        } else {
                            if (com.applovin.impl.sdk.o.a()) {
                                this.logger.b(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
                            }
                            this.f8583v.set(true);
                        }
                    } else if (com.applovin.impl.sdk.o.a()) {
                        this.logger.a(this.tag, "Refreshing ad from network...");
                    }
                    z10 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z11) {
            i();
        } else if (z10) {
            loadAd(com.applovin.impl.i.REFRESH);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        h();
        if (this.f8567f != null) {
            this.sdk.X().destroyAd(this.f8567f);
        }
        synchronized (this.f8576o) {
            this.f8585x = true;
        }
        this.f8573l.a();
        this.sdk.j().b(this);
        if (this.sdk.R() != null) {
            this.sdk.R().c(this.adUnitId, this.f8564c);
        } else {
            this.sdk.Q().c(this.adUnitId, this.f8564c);
        }
        super.destroy();
    }

    private void h() {
        y2 y2Var;
        MaxAdView maxAdView = this.f8563b;
        if (maxAdView != null) {
            com.applovin.impl.s.a(maxAdView, this.f8565d);
        }
        this.f8575n.b();
        synchronized (this.f8576o) {
            y2Var = this.f8578q;
        }
        MaxAd maxAd = this.f8579r;
        if (maxAd != null && maxAd.equals(y2Var)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.a(this.tag, "Collapsing ad manually for removed ad.");
            }
            q2.b(this.f8571j, maxAd);
        }
        if (y2Var != null) {
            this.sdk.X().destroyAd(y2Var);
        }
    }

    private void i() {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Rendering for cached ad: " + this.f8567f + "...");
        }
        this.f8571j.onAdLoaded(this.f8567f);
        this.f8567f = null;
    }

    public void loadAd(com.applovin.impl.i iVar) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "" + this + " Loading ad for " + this.adUnitId + "...");
        }
        boolean z10 = this.f8586y || ((Boolean) this.sdk.a(o3.f9147x7)).booleanValue();
        if (z10 && !this.f8573l.g() && this.f8573l.h()) {
            String str2 = this.tag;
            com.applovin.impl.sdk.o.h(str2, "Unable to load a new ad. An ad refresh has already been scheduled in " + TimeUnit.MILLISECONDS.toSeconds(this.f8573l.b()) + " seconds.");
        } else if (z10) {
            if (this.f8567f != null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.logger.a(this.tag, "Rendering cached ad");
                }
                i();
            } else if (this.f8584w) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.logger.a(this.tag, "Waiting for precache ad to load to render");
                }
                this.f8583v.set(true);
            } else {
                if (com.applovin.impl.sdk.o.a()) {
                    this.logger.a(this.tag, "Loading ad...");
                }
                a(iVar, this.f8571j);
            }
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.a(this.tag, "Loading ad...");
            }
            a(iVar, this.f8571j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final y2 y2Var) {
        View y10 = y2Var.y();
        String str = y10 == null ? "MaxAdView does not have a loaded ad view" : null;
        MaxAdView maxAdView = this.f8563b;
        if (maxAdView == null) {
            str = "MaxAdView does not have a parent view";
        }
        if (str != null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.b(this.tag, str);
            }
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-1, str);
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.logger;
                String str2 = this.tag;
                oVar.a(str2, "MaxAdListener.onAdDisplayFailed(ad=" + y2Var + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            q2.a(this.adListener, (MaxAd) y2Var, (MaxError) maxErrorImpl, true);
            this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, y2Var);
            return;
        }
        h();
        a((v2) y2Var);
        if (y2Var.k0()) {
            this.f8575n.a(y2Var);
        }
        maxAdView.setDescendantFocusability(393216);
        if (y2Var.m0() != Long.MAX_VALUE) {
            this.f8565d.setBackgroundColor((int) y2Var.m0());
        } else {
            long j10 = this.f8566e;
            if (j10 != Long.MAX_VALUE) {
                this.f8565d.setBackgroundColor((int) j10);
            } else {
                this.f8565d.setBackgroundColor(0);
            }
        }
        maxAdView.addView(y10);
        a(y10, y2Var);
        this.sdk.z().d(y2Var);
        c(y2Var);
        synchronized (this.f8576o) {
            this.f8578q = y2Var;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.logger.a(this.tag, "Scheduling impression for ad manually...");
        }
        this.sdk.X().processRawAdImpression(y2Var, this.f8571j);
        if (StringUtils.isValidString(this.f8578q.getAdReviewCreativeId())) {
            q2.a(this.adReviewListener, this.f8578q.getAdReviewCreativeId(), (MaxAd) this.f8578q, true);
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.ads.d
            @Override // java.lang.Runnable
            public final void run() {
                MaxAdViewImpl.this.a(y2Var);
            }
        }, y2Var.o0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        if (com.applovin.impl.sdk.o.a()) {
            this.logger.a(this.tag, "Loading ad for precache request...");
        }
        a(com.applovin.impl.i.SEQUENTIAL_OR_PRECACHE, this.f8572k);
    }

    private void d() {
        if (b()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.a(this.tag, "Scheduling refresh precache request now");
            }
            this.f8584w = true;
            this.sdk.r0().a((g5) new p6(this.sdk, "loadMaxAdForPrecacheRequest", new Runnable() { // from class: com.applovin.impl.mediation.ads.f
                @Override // java.lang.Runnable
                public final void run() {
                    MaxAdViewImpl.this.c();
                }
            }), b6.b.MEDIATION);
        }
    }

    private void c(y2 y2Var) {
        int height = this.f8563b.getHeight();
        int width = this.f8563b.getWidth();
        if (height > 0 || width > 0) {
            int pxToDp = AppLovinSdkUtils.pxToDp(this.f8562a, height);
            int pxToDp2 = AppLovinSdkUtils.pxToDp(this.f8562a, width);
            MaxAdFormat format = y2Var.getFormat();
            int height2 = (this.D ? format.getAdaptiveSize(pxToDp2, this.f8563b.getContext()) : format.getSize()).getHeight();
            int min = Math.min(format.getSize().getWidth(), o0.b(this.f8562a).x);
            if (pxToDp < height2 || pxToDp2 < min) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("\n**************************************************\n`MaxAdView` size ");
                sb2.append(pxToDp2);
                sb2.append(TextureRenderKeys.KEY_IS_X);
                sb2.append(pxToDp);
                sb2.append(" dp smaller than required ");
                sb2.append(this.D ? "adaptive " : "");
                sb2.append("size: ");
                sb2.append(min);
                sb2.append(TextureRenderKeys.KEY_IS_X);
                sb2.append(height2);
                sb2.append(" dp\nSome mediated networks (e.g. Google Ad Manager) may not render correctly\n**************************************************\n");
                String sb3 = sb2.toString();
                if (com.applovin.impl.sdk.o.a()) {
                    this.logger.b("AppLovinSdk", sb3);
                }
            }
        }
    }

    private void a(final com.applovin.impl.i iVar, final a.InterfaceC0113a interfaceC0113a) {
        if (a()) {
            boolean c10 = k7.c(this.sdk);
            this.sdk.E().a(c2.E0, "attemptingToLoadDestroyedAdView", CollectionUtils.hashMap("details", "debug=" + c10));
            if (!c10) {
                com.applovin.impl.sdk.o.h(this.tag, "Failed to load new ad - this instance is already destroyed");
                return;
            }
            throw new IllegalStateException("Failed to load new ad - this instance is already destroyed for ad unit ID: " + this.adUnitId);
        }
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.e
            @Override // java.lang.Runnable
            public final void run() {
                MaxAdViewImpl.this.a(interfaceC0113a, iVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a.InterfaceC0113a interfaceC0113a, com.applovin.impl.i iVar) {
        int adaptiveWidth;
        y2 y2Var = this.f8578q;
        if (y2Var != null) {
            long a10 = this.f8574m.a(y2Var);
            this.extraParameters.put("visible_ad_ad_unit_id", this.f8578q.getAdUnitId());
            this.extraParameters.put("viewability_flags", Long.valueOf(a10));
        } else {
            this.extraParameters.remove("visible_ad_ad_unit_id");
            this.extraParameters.remove("viewability_flags");
        }
        int pxToDp = AppLovinSdkUtils.pxToDp(this.f8563b.getContext(), this.f8563b.getWidth());
        int pxToDp2 = AppLovinSdkUtils.pxToDp(this.f8563b.getContext(), this.f8563b.getHeight());
        this.extraParameters.put("viewport_width", Integer.valueOf(pxToDp));
        this.extraParameters.put("viewport_height", Integer.valueOf(pxToDp2));
        this.extraParameters.put("auto_refresh_stopped", Boolean.valueOf(this.f8573l.g() || this.f8582u));
        this.extraParameters.put("auto_retries_disabled", Boolean.valueOf(this.f8587z));
        MaxAdViewConfiguration maxAdViewConfiguration = this.f8570i;
        if (maxAdViewConfiguration != null && (adaptiveWidth = maxAdViewConfiguration.getAdaptiveWidth()) > 0 && pxToDp != adaptiveWidth) {
            String str = this.tag;
            com.applovin.impl.sdk.o.j(str, "The requested adaptive ad view width (" + adaptiveWidth + " dp) is different from the MaxAdView width (" + pxToDp + " dp).");
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "Loading " + this.adFormat.getLabel().toLowerCase(Locale.ENGLISH) + " ad for '" + this.adUnitId + "' and notifying " + interfaceC0113a + "...");
        }
        this.sdk.X().loadAd(this.adUnitId, this.f8564c, this.adFormat, iVar, this.localExtraParameters, this.extraParameters, this.f8562a, interfaceC0113a);
    }

    private void a(String str, String str2) {
        if ("allow_pause_auto_refresh_immediately".equalsIgnoreCase(str)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.logger;
                String str3 = this.tag;
                oVar.a(str3, "Updated allow immediate auto-refresh pause and ad load to: " + str2);
            }
            this.f8586y = Boolean.parseBoolean(str2);
        } else if ("disable_auto_retries".equalsIgnoreCase(str)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.logger;
                String str4 = this.tag;
                oVar2.a(str4, "Updated disable auto-retries to: " + str2);
            }
            this.f8587z = Boolean.parseBoolean(str2);
        } else if ("disable_precache".equalsIgnoreCase(str)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar3 = this.logger;
                String str5 = this.tag;
                oVar3.a(str5, "Updated precached disabled to: " + str2);
            }
            this.A = Boolean.parseBoolean(str2);
        } else if ("should_stop_auto_refresh_on_ad_expand".equals(str)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar4 = this.logger;
                String str6 = this.tag;
                oVar4.a(str6, "Updated should stop auto-refresh on ad expand to: " + str2);
            }
            this.B = Boolean.parseBoolean(str2);
        } else if ("force_precache".equals(str)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar5 = this.logger;
                String str7 = this.tag;
                oVar5.a(str7, "Updated force precache to: " + str2);
            }
            this.C = Boolean.parseBoolean(str2);
        } else if ("adaptive_banner".equalsIgnoreCase(str)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar6 = this.logger;
                String str8 = this.tag;
                oVar6.a(str8, "Updated is adaptive banner to: " + str2);
            }
            if (this.f8570i == null) {
                com.applovin.impl.sdk.o.h(this.tag, "You configured adaptive banners incorrectly by setting extra parameters to the MaxAdView! Please configure adaptive banners via MaxAdViewConfiguration instead. Learn more: https://developers.applovin.com/en/max/android/ad-formats/banner-and-mrec-ads#adaptive-banners");
            }
            this.D = Boolean.parseBoolean(str2);
            setLocalExtraParameter(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(MaxAd maxAd) {
        boolean compareAndSet;
        this.f8584w = false;
        synchronized (this.f8577p) {
            try {
                compareAndSet = this.f8583v.compareAndSet(true, false);
                if (!compareAndSet) {
                    if (com.applovin.impl.sdk.o.a()) {
                        this.logger.a(this.tag, "Saving precache ad...");
                    }
                    y2 y2Var = (y2) maxAd;
                    this.f8567f = y2Var;
                    y2Var.g(this.f8568g);
                    this.f8567f.f(this.f8569h);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (compareAndSet) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Rendering precache request ad: " + maxAd.getAdUnitId() + "...");
            }
            this.f8571j.onAdLoaded(maxAd);
        }
    }

    private boolean b() {
        if (this.A) {
            return false;
        }
        return ((Boolean) this.sdk.a(o3.E7)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(y2 y2Var) {
        long a10 = this.f8574m.a(y2Var);
        if (!y2Var.k0()) {
            a(y2Var, a10);
        }
        a(a10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxError maxError) {
        if (a()) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Ad load failure with ad unit ID '" + this.adUnitId + "' occured after MaxAdView was destroyed.");
            }
        } else if (this.sdk.c(o3.f9139r7).contains(String.valueOf(maxError.getCode()))) {
            this.sdk.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.sdk.O();
                String str2 = this.tag;
                O.a(str2, "Ignoring banner ad refresh for error code " + maxError.getCode());
            }
        } else if (!this.f8582u && !this.f8573l.g()) {
            this.f8581t = true;
            this.f8584w = false;
            long longValue = ((Long) this.sdk.a(o3.f9137q7)).longValue();
            if (longValue >= 0) {
                this.sdk.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O2 = this.sdk.O();
                    String str3 = this.tag;
                    O2.a(str3, "Scheduling failed banner ad refresh " + longValue + " milliseconds from now for '" + this.adUnitId + "'...");
                }
                this.f8573l.a(longValue);
            }
        } else {
            if (this.f8584w) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.logger.a(this.tag, "Refresh precache failed when auto-refresh is stopped");
                }
                this.f8584w = false;
            }
            if (this.f8583v.get()) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar2 = this.logger;
                    String str4 = this.tag;
                    oVar2.a(str4, "Refresh precache failed - MaxAdListener.onAdLoadFailed(adUnitId=" + this.adUnitId + ", error=" + maxError + "), listener=" + this.adListener);
                }
                q2.a(this.adListener, this.adUnitId, maxError, true);
            }
        }
    }

    private void a(View view, y2 y2Var) {
        int p02 = y2Var.p0();
        int n02 = y2Var.n0();
        int dpToPx = p02 == -1 ? -1 : AppLovinSdkUtils.dpToPx(view.getContext(), p02);
        int dpToPx2 = n02 != -1 ? AppLovinSdkUtils.dpToPx(view.getContext(), n02) : -1;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(dpToPx, dpToPx2);
        } else {
            layoutParams.width = dpToPx;
            layoutParams.height = dpToPx2;
        }
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.a(this.tag, "Pinning ad view to MAX ad view with width: " + dpToPx + " and height: " + dpToPx2 + ".");
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            for (int i10 : b8.a(this.f8563b.getGravity(), 10, 14)) {
                layoutParams2.addRule(i10);
            }
        }
        view.setLayoutParams(layoutParams);
    }

    private void a(y2 y2Var, long j10) {
        if (com.applovin.impl.sdk.o.a()) {
            this.logger.a(this.tag, "Scheduling viewability impression for ad...");
        }
        this.sdk.X().processViewabilityAdImpressionPostback(y2Var, j10, this.f8571j);
    }

    private void a(long j10) {
        if (k7.a(j10, ((Long) this.sdk.a(o3.D7)).longValue()) && !this.C) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Undesired flags matched - current: " + Long.toBinaryString(j10) + ", undesired: " + Long.toBinaryString(j10));
            }
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.a(this.tag, "Waiting for refresh timer to manually fire request");
            }
            this.f8581t = true;
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.logger.a(this.tag, "No undesired viewability flags matched or forcing precache - scheduling viewability");
        }
        this.f8581t = false;
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxAd maxAd) {
        this.f8584w = false;
        if (this.f8583v.compareAndSet(true, false)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Rendering precache request ad: " + maxAd.getAdUnitId() + "...");
            }
            this.f8571j.onAdLoaded(maxAd);
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.logger.a(this.tag, "Saving precache ad...");
        }
        y2 y2Var = (y2) maxAd;
        this.f8567f = y2Var;
        y2Var.g(this.f8568g);
        this.f8567f.f(this.f8569h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        boolean z10;
        synchronized (this.f8576o) {
            z10 = this.f8585x;
        }
        return z10;
    }
}
