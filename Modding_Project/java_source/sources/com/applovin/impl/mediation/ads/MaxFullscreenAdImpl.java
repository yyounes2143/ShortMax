package com.applovin.impl.mediation.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.b6;
import com.applovin.impl.c2;
import com.applovin.impl.e2;
import com.applovin.impl.g0;
import com.applovin.impl.j;
import com.applovin.impl.k7;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.o3;
import com.applovin.impl.p6;
import com.applovin.impl.q2;
import com.applovin.impl.s1;
import com.applovin.impl.sdk.a;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.t3;
import com.applovin.impl.u3;
import com.applovin.impl.v2;
import com.applovin.impl.v4;
import com.applovin.impl.x4;
import com.applovin.impl.z2;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class MaxFullscreenAdImpl extends com.applovin.impl.mediation.ads.a implements a.InterfaceC0117a, j.b {

    /* renamed from: a  reason: collision with root package name */
    private final a f8591a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference f8592b;

    /* renamed from: c  reason: collision with root package name */
    private final b f8593c;

    /* renamed from: d  reason: collision with root package name */
    private final com.applovin.impl.mediation.b f8594d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f8595e;

    /* renamed from: f  reason: collision with root package name */
    private z2 f8596f;

    /* renamed from: g  reason: collision with root package name */
    private c f8597g;

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f8598h;

    /* renamed from: i  reason: collision with root package name */
    private final AtomicBoolean f8599i;

    /* renamed from: j  reason: collision with root package name */
    private g0 f8600j;

    /* renamed from: k  reason: collision with root package name */
    private long f8601k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f8602l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f8603m;

    /* renamed from: n  reason: collision with root package name */
    private String f8604n;

    /* renamed from: o  reason: collision with root package name */
    private String f8605o;

    /* renamed from: p  reason: collision with root package name */
    private String f8606p;

    /* renamed from: q  reason: collision with root package name */
    private WeakReference f8607q;

    /* renamed from: r  reason: collision with root package name */
    private WeakReference f8608r;

    /* renamed from: s  reason: collision with root package name */
    private WeakReference f8609s;

    /* loaded from: classes2.dex */
    public interface a {
        Activity getActivity();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public class b implements MaxAdListener, MaxAdRevenueListener, a.InterfaceC0113a {
        /* JADX INFO: Access modifiers changed from: protected */
        public b() {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            com.applovin.impl.sdk.o oVar = MaxFullscreenAdImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxFullscreenAdImpl.logger;
                String str = maxFullscreenAdImpl.tag;
                oVar2.a(str, "MaxAdListener.onAdClicked(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            q2.a(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(final MaxAd maxAd, final MaxError maxError) {
            final z2 z2Var = (z2) maxAd;
            MaxFullscreenAdImpl.this.d();
            final boolean z10 = MaxFullscreenAdImpl.this.f8603m;
            if (z10) {
                com.applovin.impl.sdk.o oVar = MaxFullscreenAdImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                    maxFullscreenAdImpl.logger.b(maxFullscreenAdImpl.tag, "Ad failover failed");
                }
                MaxFullscreenAdImpl.this.sdk.P().a(c2.f7657n0, z2Var, CollectionUtils.hashMap("details", z2Var.o0()));
                MaxFullscreenAdImpl.this.f8603m = false;
            }
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.s
                @Override // java.lang.Runnable
                public final void run() {
                    MaxFullscreenAdImpl.b.this.a(maxAd, z10, z2Var, maxError);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            final z2 z2Var = (z2) maxAd;
            if (MaxFullscreenAdImpl.this.f8603m) {
                com.applovin.impl.sdk.o oVar = MaxFullscreenAdImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                    maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "Ad failover succeeded");
                }
                MaxFullscreenAdImpl.this.sdk.P().a(c2.f7655m0, z2Var, CollectionUtils.hashMap("details", z2Var.o0()));
                MaxFullscreenAdImpl.this.f8603m = false;
            }
            MaxFullscreenAdImpl.this.sdk.f().a(z2Var);
            MaxFullscreenAdImpl.this.b(z2Var);
            MaxFullscreenAdImpl.this.f();
            Integer num = (Integer) MaxFullscreenAdImpl.this.sdk.a(o3.f9116f8);
            if (num.intValue() > 0) {
                MaxFullscreenAdImpl.this.sdk.r0().b(new p6(MaxFullscreenAdImpl.this.sdk, "ReportAdHiddenCallbackNotCalled", new Runnable() { // from class: com.applovin.impl.mediation.ads.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaxFullscreenAdImpl.b.this.a(z2Var);
                    }
                }), b6.b.TIMEOUT, TimeUnit.SECONDS.toMillis(num.intValue()));
            }
            com.applovin.impl.sdk.o oVar2 = MaxFullscreenAdImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl2 = MaxFullscreenAdImpl.this;
                com.applovin.impl.sdk.o oVar3 = maxFullscreenAdImpl2.logger;
                String str = maxFullscreenAdImpl2.tag;
                oVar3.a(str, "MaxAdListener.onAdDisplayed(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            q2.c(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(final MaxAd maxAd) {
            MaxFullscreenAdImpl.this.f8603m = false;
            MaxFullscreenAdImpl.this.d();
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.p
                @Override // java.lang.Runnable
                public final void run() {
                    MaxFullscreenAdImpl.b.this.a(maxAd);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(final String str, final MaxError maxError) {
            MaxFullscreenAdImpl.this.e();
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.r
                @Override // java.lang.Runnable
                public final void run() {
                    MaxFullscreenAdImpl.b.this.a(str, maxError);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(final MaxAd maxAd) {
            z2 z2Var;
            synchronized (MaxFullscreenAdImpl.this.f8595e) {
                z2Var = MaxFullscreenAdImpl.this.f8596f;
            }
            MaxFullscreenAdImpl.this.sdk.I().a(MaxFullscreenAdImpl.this.adUnitId);
            final z2 z2Var2 = (z2) maxAd;
            MaxFullscreenAdImpl.this.a(z2Var2);
            if (!MaxFullscreenAdImpl.this.f8598h.compareAndSet(true, false)) {
                MaxFullscreenAdImpl.this.a(c.READY, new Runnable() { // from class: com.applovin.impl.mediation.ads.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaxFullscreenAdImpl.b.this.a(z2Var2, maxAd);
                    }
                });
                return;
            }
            MaxFullscreenAdImpl.this.extraParameters.remove("expired_ad_ad_unit_id");
            if (MaxFullscreenAdImpl.this.f8599i.compareAndSet(true, false)) {
                MaxFullscreenAdImpl.this.g();
            }
            com.applovin.impl.sdk.o oVar = MaxFullscreenAdImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxFullscreenAdImpl.logger;
                String str = maxFullscreenAdImpl.tag;
                oVar2.a(str, "MaxAdListener.onExpiredAdReloaded(expiredAd=" + z2Var + ", newAd=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.expirationListener);
            }
            q2.a(MaxFullscreenAdImpl.this.expirationListener, (MaxAd) z2Var, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
            com.applovin.impl.sdk.o oVar = MaxFullscreenAdImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxFullscreenAdImpl.logger;
                String str2 = maxFullscreenAdImpl.tag;
                oVar2.a(str2, "MaxAdRequestListener.onAdRequestStarted(adUnitId=" + str + "), listener=" + MaxFullscreenAdImpl.this.requestListener);
            }
            q2.a(MaxFullscreenAdImpl.this.requestListener, str, true);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            com.applovin.impl.sdk.o oVar = MaxFullscreenAdImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxFullscreenAdImpl.logger;
                String str = maxFullscreenAdImpl.tag;
                oVar2.a(str, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.revenueListener);
            }
            q2.a(MaxFullscreenAdImpl.this.revenueListener, maxAd, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(z2 z2Var, MaxAd maxAd) {
            if (MaxFullscreenAdImpl.this.f8603m) {
                com.applovin.impl.sdk.o oVar = MaxFullscreenAdImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                    maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "Attempting ad failover");
                }
                z2Var.j(MaxFullscreenAdImpl.this.f8606p);
                MaxFullscreenAdImpl.this.sdk.P().a(c2.f7653l0, z2Var, CollectionUtils.hashMap("details", MaxFullscreenAdImpl.this.f8606p));
                MaxFullscreenAdImpl.this.g();
                return;
            }
            com.applovin.impl.sdk.o oVar2 = MaxFullscreenAdImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl2 = MaxFullscreenAdImpl.this;
                com.applovin.impl.sdk.o oVar3 = maxFullscreenAdImpl2.logger;
                String str = maxFullscreenAdImpl2.tag;
                oVar3.a(str, "MaxAdListener.onAdLoaded(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            q2.f(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str, MaxError maxError) {
            com.applovin.impl.sdk.o oVar = MaxFullscreenAdImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxFullscreenAdImpl.logger;
                String str2 = maxFullscreenAdImpl.tag;
                oVar2.a(str2, "MaxAdListener.onAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            q2.a(MaxFullscreenAdImpl.this.adListener, str, maxError, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(z2 z2Var) {
            if (z2Var.w().get()) {
                return;
            }
            MaxFullscreenAdImpl.this.sdk.P().a(c2.f7641f0, z2Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd) {
            MaxFullscreenAdImpl.this.a(maxAd);
            com.applovin.impl.sdk.o oVar = MaxFullscreenAdImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxFullscreenAdImpl.logger;
                String str = maxFullscreenAdImpl.tag;
                oVar2.a(str, "MaxAdListener.onAdHidden(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            q2.e(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd, boolean z10, z2 z2Var, MaxError maxError) {
            MaxFullscreenAdImpl.this.a(maxAd);
            if (!z10 && z2Var.t0()) {
                if (MaxFullscreenAdImpl.this.b()) {
                    AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.t
                        @Override // java.lang.Runnable
                        public final void run() {
                            MaxFullscreenAdImpl.b.this.a();
                        }
                    });
                    return;
                }
                com.applovin.impl.sdk.o oVar = MaxFullscreenAdImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                    maxFullscreenAdImpl.logger.b(maxFullscreenAdImpl.tag, "Unable to attempt ad failover due to missing cached ad");
                }
                MaxFullscreenAdImpl.this.sdk.P().a(c2.f7651k0, z2Var);
            }
            com.applovin.impl.sdk.o oVar2 = MaxFullscreenAdImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl2 = MaxFullscreenAdImpl.this;
                com.applovin.impl.sdk.o oVar3 = maxFullscreenAdImpl2.logger;
                String str = maxFullscreenAdImpl2.tag;
                oVar3.a(str, "MaxAdListener.onAdDisplayFailed(ad=" + maxAd + ", error=" + maxError + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            q2.a(MaxFullscreenAdImpl.this.adListener, maxAd, maxError, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            MaxFullscreenAdImpl.this.f8603m = true;
            MaxFullscreenAdImpl.this.loadAd();
        }
    }

    /* loaded from: classes2.dex */
    public enum c {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    public MaxFullscreenAdImpl(String str, MaxAdFormat maxAdFormat, a aVar, String str2, com.applovin.impl.sdk.k kVar, Context context) {
        super(str, maxAdFormat, str2, kVar);
        this.f8595e = new Object();
        this.f8596f = null;
        this.f8597g = c.IDLE;
        this.f8598h = new AtomicBoolean();
        this.f8599i = new AtomicBoolean();
        this.f8607q = new WeakReference(null);
        this.f8608r = new WeakReference(null);
        this.f8609s = new WeakReference(null);
        this.f8591a = aVar;
        this.f8593c = createAdListenerWrapper();
        this.f8594d = new com.applovin.impl.mediation.b(kVar);
        this.f8592b = new WeakReference(context);
        kVar.j().a(this);
        com.applovin.impl.sdk.o.g(str2, "Created new " + str2 + " (" + this + ")");
    }

    protected b createAdListenerWrapper() {
        return new b();
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        a(c.DESTROYED, new Runnable() { // from class: com.applovin.impl.mediation.ads.k
            @Override // java.lang.Runnable
            public final void run() {
                MaxFullscreenAdImpl.this.c();
            }
        });
    }

    public boolean isReady() {
        boolean z10;
        synchronized (this.f8595e) {
            try {
                z2 z2Var = this.f8596f;
                if (z2Var != null && z2Var.V() && this.f8597g == c.READY) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!z10) {
            this.sdk.I().c(this.adUnitId);
        }
        return z10;
    }

    public void loadAd() {
        loadAd(com.applovin.impl.i.PUBLISHER_INITIATED);
    }

    @Override // com.applovin.impl.sdk.a.InterfaceC0117a
    public void onAdExpired(s1 s1Var) {
        Activity activity;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Ad expired " + getAdUnitId());
        }
        this.f8598h.set(true);
        a aVar = this.f8591a;
        if (aVar != null) {
            activity = aVar.getActivity();
        } else {
            activity = null;
        }
        if (activity == null && (activity = this.sdk.e().b()) == null) {
            e();
            this.f8593c.onAdLoadFailed(this.adUnitId, MaxAdapterError.MISSING_ACTIVITY);
            return;
        }
        this.extraParameters.put("expired_ad_ad_unit_id", getAdUnitId());
        this.sdk.X().loadAd(this.adUnitId, null, this.adFormat, com.applovin.impl.i.EXPIRED, this.localExtraParameters, this.extraParameters, activity, this.f8593c);
    }

    @Override // com.applovin.impl.j.b
    public void onCreativeIdGenerated(String str, String str2) {
        z2 z2Var = this.f8596f;
        if (z2Var != null && z2Var.P().equalsIgnoreCase(str)) {
            this.f8596f.h(str2);
            q2.b(this.adReviewListener, str2, this.f8596f);
        }
    }

    public void showAd(final String str, final String str2, final Activity activity) {
        z2 z2Var;
        List b10 = this.sdk.t0().b();
        if (this.sdk.t0().d() && b10 != null && (z2Var = this.f8596f) != null && !b10.contains(z2Var.c())) {
            final String str3 = "Attempting to show ad from <" + this.f8596f.c() + "> which is not in the list of selected ad networks " + b10;
            com.applovin.impl.sdk.o.h(this.tag, str3);
            a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.m
                @Override // java.lang.Runnable
                public final void run() {
                    MaxFullscreenAdImpl.this.b(str3);
                }
            });
            return;
        }
        if (activity == null) {
            activity = this.sdk.v0();
        }
        if (a(activity, str)) {
            a(c.SHOWING, new Runnable() { // from class: com.applovin.impl.mediation.ads.n
                @Override // java.lang.Runnable
                public final void run() {
                    MaxFullscreenAdImpl.this.a(str, str2, activity);
                }
            });
        }
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.tag);
        sb2.append("{adUnitId='");
        sb2.append(this.adUnitId);
        sb2.append('\'');
        sb2.append(", adListener=");
        Object obj = this.adListener;
        if (obj == this.f8591a) {
            obj = "this";
        }
        sb2.append(obj);
        sb2.append(", revenueListener=");
        sb2.append(this.revenueListener);
        sb2.append(", requestListener");
        sb2.append(this.requestListener);
        sb2.append(", adReviewListener");
        sb2.append(this.adReviewListener);
        sb2.append(", isReady=");
        sb2.append(isReady());
        sb2.append('}');
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        z2 z2Var = this.f8596f;
        a((MaxAd) z2Var);
        MaxErrorImpl maxErrorImpl = new MaxErrorImpl(MaxAdapterError.ERROR_CODE_AD_DISPLAY_FAILED, str);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "MaxAdListener.onAdDisplayFailed(ad=" + z2Var + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
        }
        q2.a(this.adListener, (MaxAd) z2Var, (MaxError) maxErrorImpl, true);
        this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, z2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        z2 z2Var;
        if (this.f8598h.compareAndSet(true, false)) {
            synchronized (this.f8595e) {
                z2Var = this.f8596f;
                this.f8596f = null;
            }
            this.sdk.X().destroyAd(z2Var);
            this.extraParameters.remove("expired_ad_ad_unit_id");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        final Long l10 = (Long) this.sdk.a(v4.B2);
        if (l10.longValue() <= 0) {
            return;
        }
        this.f8600j = g0.a(l10.longValue(), true, this.sdk, new Runnable() { // from class: com.applovin.impl.mediation.ads.o
            @Override // java.lang.Runnable
            public final void run() {
                MaxFullscreenAdImpl.this.a(l10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        Activity activity = (Activity) this.f8607q.get();
        if (activity == null) {
            activity = this.sdk.v0();
        }
        Activity activity2 = activity;
        if (this.f8602l) {
            showAd(this.f8604n, this.f8605o, (ViewGroup) this.f8608r.get(), (Lifecycle) this.f8609s.get(), activity2);
        } else {
            showAd(this.f8604n, this.f8605o, activity2);
        }
    }

    public void loadAd(final com.applovin.impl.i iVar) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Loading ad for '" + this.adUnitId + "'...");
        }
        if (this.f8597g == c.DESTROYED) {
            boolean c10 = k7.c(this.sdk);
            this.sdk.E().a(c2.E0, "attemptingToLoadDestroyedAd", CollectionUtils.hashMap("details", "debug=" + c10));
            if (c10) {
                throw new IllegalStateException("Failed to load new ad - this instance is already destroyed for ad unit ID: " + this.adUnitId);
            }
        }
        if (isReady()) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.logger;
                String str2 = this.tag;
                oVar2.a(str2, "An ad is already loaded for '" + this.adUnitId + "'");
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar3 = this.logger;
                String str3 = this.tag;
                oVar3.a(str3, "MaxAdListener.onAdLoaded(ad=" + this.f8596f + "), listener=" + this.adListener);
            }
            q2.f(this.adListener, (MaxAd) this.f8596f, true);
            return;
        }
        a aVar = this.f8591a;
        final Activity activity = aVar != null ? aVar.getActivity() : null;
        final Context context = (Context) this.f8592b.get();
        a(c.LOADING, new Runnable() { // from class: com.applovin.impl.mediation.ads.l
            @Override // java.lang.Runnable
            public final void run() {
                MaxFullscreenAdImpl.this.a(activity, context, iVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        synchronized (this.f8595e) {
            try {
                if (this.f8596f != null) {
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.logger;
                        String str = this.tag;
                        oVar.a(str, "Destroying ad for '" + this.adUnitId + "'; current ad: " + this.f8596f + "...");
                    }
                    this.sdk.X().destroyAd(this.f8596f);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.sdk.j().b(this);
        this.f8594d.a();
        g0 g0Var = this.f8600j;
        if (g0Var != null) {
            g0Var.a();
            this.f8600j = null;
        }
        super.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (((Boolean) this.sdk.a(v4.A2)).booleanValue()) {
            this.sdk.q0().b(x4.Q);
        }
        if (this.f8600j != null) {
            this.sdk.q0().b(x4.R);
            this.f8600j.a();
            this.f8600j = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r10 = r10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3, types: [android.content.Context] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void a(android.app.Activity r10, android.content.Context r11, com.applovin.impl.i r12) {
        /*
            r9 = this;
            if (r10 == 0) goto L4
        L2:
            r7 = r10
            goto L1c
        L4:
            if (r11 == 0) goto L8
            r7 = r11
            goto L1c
        L8:
            com.applovin.impl.sdk.k r10 = r9.sdk
            android.app.Activity r10 = r10.v0()
            if (r10 == 0) goto L17
            com.applovin.impl.sdk.k r10 = r9.sdk
            android.app.Activity r10 = r10.v0()
            goto L2
        L17:
            android.content.Context r10 = com.applovin.impl.sdk.k.o()
            goto L2
        L1c:
            com.applovin.impl.sdk.k r10 = r9.sdk
            com.applovin.impl.mediation.MediationServiceImpl r0 = r10.X()
            java.lang.String r1 = r9.adUnitId
            com.applovin.mediation.MaxAdFormat r3 = r9.adFormat
            java.util.Map<java.lang.String, java.lang.Object> r5 = r9.localExtraParameters
            java.util.Map<java.lang.String, java.lang.Object> r6 = r9.extraParameters
            com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$b r8 = r9.f8593c
            r2 = 0
            r4 = r12
            r0.loadAd(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.a(android.app.Activity, android.content.Context, com.applovin.impl.i):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(v2 v2Var) {
        if (((Boolean) this.sdk.a(v4.A2)).booleanValue()) {
            List b10 = v2Var.b("mappk_urls");
            if (CollectionUtils.isEmpty(b10)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putLong(jSONObject, "timestamp_ms", System.currentTimeMillis());
            JsonUtils.putJsonArray(jSONObject, "app_killed_urls", new JSONArray((Collection) b10));
            JsonUtils.putJSONObject(jSONObject, "ad_info", new JSONObject(e2.a(v2Var)));
            JsonUtils.putJSONObject(jSONObject, "user_info", new JSONObject(t3.a(v2Var, this.sdk)));
            this.sdk.q0().b(x4.Q, jSONObject.toString());
        }
    }

    public void showAd(final String str, final String str2, final ViewGroup viewGroup, final Lifecycle lifecycle, Activity activity) {
        z2 z2Var;
        if (viewGroup != null && lifecycle != null) {
            if (!viewGroup.isShown() && ((Boolean) this.sdk.a(o3.f9108a8)).booleanValue()) {
                com.applovin.impl.sdk.o.h(this.tag, "Attempting to show ad when containerView and/or its ancestors are not visible");
                MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-1, "Attempting to show ad when containerView and/or its ancestors are not visible");
                q2.a(this.adListener, (MaxAd) this.f8596f, (MaxError) maxErrorImpl, true);
                this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.f8596f);
                return;
            }
            List b10 = this.sdk.t0().b();
            if (this.sdk.t0().d() && b10 != null && (z2Var = this.f8596f) != null && !b10.contains(z2Var.c())) {
                final String str3 = "Attempting to show ad from <" + this.f8596f.c() + "> which is not in the list of selected ad networks " + b10;
                com.applovin.impl.sdk.o.h(this.tag, str3);
                a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaxFullscreenAdImpl.this.c(str3);
                    }
                });
                return;
            }
            if (activity == null) {
                activity = this.sdk.v0();
            }
            final Activity activity2 = activity;
            if (a(activity2, str)) {
                a(c.SHOWING, new Runnable() { // from class: com.applovin.impl.mediation.ads.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaxFullscreenAdImpl.this.a(str, str2, activity2, viewGroup, lifecycle);
                    }
                });
                return;
            }
            return;
        }
        com.applovin.impl.sdk.o.h(this.tag, "Attempting to show ad with null containerView or lifecycle.");
        MaxErrorImpl maxErrorImpl2 = new MaxErrorImpl(-1, "Attempting to show ad with null containerView or lifecycle.");
        if (com.applovin.impl.sdk.o.a()) {
            this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.f8596f + ", error=" + maxErrorImpl2 + "), listener=" + this.adListener);
        }
        q2.a(this.adListener, (MaxAd) this.f8596f, (MaxError) maxErrorImpl2, true);
        this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl2, this.f8596f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, Activity activity) {
        a(str, str2);
        this.f8602l = false;
        this.f8607q = new WeakReference(activity);
        this.sdk.X().showFullscreenAd(this.f8596f, activity, this.f8593c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, Activity activity, ViewGroup viewGroup, Lifecycle lifecycle) {
        a(str, str2);
        this.f8602l = true;
        this.f8607q = new WeakReference(activity);
        this.f8608r = new WeakReference(viewGroup);
        this.f8609s = new WeakReference(lifecycle);
        this.sdk.X().showFullscreenAd(this.f8596f, viewGroup, lifecycle, activity, this.f8593c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        z2 z2Var = this.f8596f;
        a((MaxAd) z2Var);
        MaxErrorImpl maxErrorImpl = new MaxErrorImpl(MaxAdapterError.ERROR_CODE_AD_DISPLAY_FAILED, str);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "MaxAdListener.onAdDisplayFailed(ad=" + z2Var + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
        }
        q2.a(this.adListener, (MaxAd) z2Var, (MaxError) maxErrorImpl, true);
        this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, z2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() {
        if (this.sdk.R() != null) {
            return this.sdk.R().e(this.adUnitId);
        }
        return this.sdk.Q().d(this.adUnitId);
    }

    private boolean a(Activity activity, final String str) {
        if (activity != null || MaxAdFormat.APP_OPEN == this.adFormat) {
            if (this.f8597g == c.DESTROYED) {
                boolean c10 = k7.c(this.sdk);
                this.sdk.E().a(c2.E0, "attemptingToShowDestroyedAd", CollectionUtils.hashMap("details", "debug=" + c10));
                if (c10) {
                    throw new IllegalStateException("Attempting to show ad that is destroyed for ad unit ID: " + this.adUnitId);
                }
            }
            if (!isReady()) {
                String str2 = "Attempting to show ad before it is ready - please check ad readiness using " + this.tag + "#isReady()";
                com.applovin.impl.sdk.o.h(this.tag, str2);
                MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-24, str2);
                u3 u3Var = new u3(this.adUnitId, this.adFormat, str);
                if (com.applovin.impl.sdk.o.a()) {
                    this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + u3Var + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
                }
                q2.a(this.adListener, (MaxAd) u3Var, (MaxError) maxErrorImpl, true);
                if (this.f8596f != null) {
                    this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.f8596f);
                }
                return false;
            }
            Long l10 = (Long) this.sdk.a(o3.M7);
            Long l11 = (Long) this.sdk.a(o3.F7);
            if (l10.longValue() > 0 && (this.f8596f.getTimeToLiveMillis() < l11.longValue() || this.f8598h.get())) {
                this.f8599i.set(true);
                this.sdk.r0().a(new p6(this.sdk, "handleShowOnLoadTimeoutError", new Runnable() { // from class: com.applovin.impl.mediation.ads.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaxFullscreenAdImpl.this.a(str);
                    }
                }), b6.b.TIMEOUT, l10.longValue());
                return false;
            }
            if (k7.a(com.applovin.impl.sdk.k.o()) != 0 && this.sdk.o0().shouldFailAdDisplayIfDontKeepActivitiesIsEnabled()) {
                if (!k7.c(this.sdk)) {
                    if (((Boolean) this.sdk.a(o3.Z7)).booleanValue()) {
                        com.applovin.impl.sdk.o.h(this.tag, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                        MaxErrorImpl maxErrorImpl2 = new MaxErrorImpl(-5602, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                        if (com.applovin.impl.sdk.o.a()) {
                            this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.f8596f + ", error=" + maxErrorImpl2 + "), listener=" + this.adListener);
                        }
                        q2.a(this.adListener, (MaxAd) this.f8596f, (MaxError) maxErrorImpl2, true);
                        this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl2, this.f8596f);
                        return false;
                    }
                } else {
                    throw new IllegalStateException("Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                }
            }
            if (this.sdk.I().d() || this.sdk.I().c()) {
                com.applovin.impl.sdk.o.h(this.tag, "Attempting to show ad when another fullscreen ad is already showing");
                MaxErrorImpl maxErrorImpl3 = new MaxErrorImpl(-23, "Attempting to show ad when another fullscreen ad is already showing");
                if (com.applovin.impl.sdk.o.a()) {
                    this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.f8596f + ", error=" + maxErrorImpl3 + "), listener=" + this.adListener);
                }
                q2.a(this.adListener, (MaxAd) this.f8596f, (MaxError) maxErrorImpl3, true);
                this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl3, this.f8596f);
                return false;
            }
            return true;
        }
        throw new IllegalArgumentException("Attempting to show ad without a valid activity.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        if (this.f8599i.compareAndSet(true, false)) {
            com.applovin.impl.sdk.o.h(this.tag, "Failed to show an ad. Failed to load an ad in time to show.");
            this.sdk.I().c(this.adUnitId);
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-24, "Failed to show an ad. Failed to load an ad in time to show.");
            u3 u3Var = new u3(this.adUnitId, this.adFormat, str);
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.logger;
                String str2 = this.tag;
                oVar.a(str2, "MaxAdListener.onAdDisplayFailed(ad=" + u3Var + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            q2.a(this.adListener, (MaxAd) u3Var, (MaxError) maxErrorImpl, true);
            if (this.f8596f != null) {
                this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.f8596f);
            }
        }
    }

    private void a(String str, String str2) {
        this.f8594d.e(this.f8596f);
        this.f8596f.g(str);
        this.f8596f.f(str2);
        this.f8604n = str;
        this.f8605o = str2;
        this.f8606p = this.f8596f.getNetworkName();
        this.sdk.z().d(this.f8596f);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str3 = this.tag;
            oVar.a(str3, "Showing ad for '" + this.adUnitId + "'; loaded ad: " + this.f8596f + "...");
        }
        a((v2) this.f8596f);
    }

    private void a() {
        z2 z2Var;
        synchronized (this.f8595e) {
            z2Var = this.f8596f;
            this.f8596f = null;
        }
        this.sdk.X().destroyAd(z2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l10) {
        this.f8601k += l10.longValue();
        this.sdk.q0().b(x4.R, Long.valueOf(this.f8601k));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(z2 z2Var) {
        if (this.sdk.f().a(z2Var, this)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Handle ad loaded for regular ad: " + z2Var);
            }
            this.f8596f = z2Var;
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.logger.a(this.tag, "Loaded an expired ad, running expire logic...");
        }
        onAdExpired(z2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c cVar, Runnable runnable) {
        boolean z10;
        c cVar2 = this.f8597g;
        synchronized (this.f8595e) {
            try {
                c cVar3 = c.IDLE;
                if (cVar2 == cVar3) {
                    if (cVar != c.LOADING && cVar != c.DESTROYED) {
                        if (cVar == c.SHOWING) {
                            com.applovin.impl.sdk.o.h(this.tag, "No ad is loading or loaded");
                        } else if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o oVar = this.logger;
                            String str = this.tag;
                            oVar.b(str, "Unable to transition to: " + cVar);
                        }
                        z10 = false;
                    }
                    z10 = true;
                } else {
                    c cVar4 = c.LOADING;
                    if (cVar2 == cVar4) {
                        if (cVar != cVar3) {
                            if (cVar == cVar4) {
                                com.applovin.impl.sdk.o.h(this.tag, "An ad is already loading");
                            } else if (cVar != c.READY) {
                                if (cVar == c.SHOWING) {
                                    com.applovin.impl.sdk.o.h(this.tag, "An ad is not ready to be shown yet");
                                } else if (cVar != c.DESTROYED) {
                                    if (com.applovin.impl.sdk.o.a()) {
                                        com.applovin.impl.sdk.o oVar2 = this.logger;
                                        String str2 = this.tag;
                                        oVar2.b(str2, "Unable to transition to: " + cVar);
                                    }
                                }
                            }
                            z10 = false;
                        }
                        z10 = true;
                    } else {
                        c cVar5 = c.READY;
                        if (cVar2 == cVar5) {
                            if (cVar != cVar3) {
                                if (cVar == cVar4) {
                                    com.applovin.impl.sdk.o.h(this.tag, "An ad is already loaded");
                                } else if (cVar == cVar5) {
                                    if (com.applovin.impl.sdk.o.a()) {
                                        this.logger.b(this.tag, "An ad is already marked as ready");
                                    }
                                } else if (cVar != c.SHOWING && cVar != c.DESTROYED) {
                                    if (com.applovin.impl.sdk.o.a()) {
                                        com.applovin.impl.sdk.o oVar3 = this.logger;
                                        String str3 = this.tag;
                                        oVar3.b(str3, "Unable to transition to: " + cVar);
                                    }
                                }
                                z10 = false;
                            }
                            z10 = true;
                        } else {
                            c cVar6 = c.SHOWING;
                            if (cVar2 == cVar6) {
                                if (cVar != cVar3) {
                                    if (cVar == cVar4) {
                                        com.applovin.impl.sdk.o.h(this.tag, "Can not load another ad while the ad is showing");
                                    } else if (cVar == cVar5) {
                                        if (com.applovin.impl.sdk.o.a()) {
                                            this.logger.b(this.tag, "An ad is already showing, ignoring");
                                        }
                                    } else if (cVar == cVar6) {
                                        com.applovin.impl.sdk.o.h(this.tag, "The ad is already showing, not showing another one");
                                    } else if (cVar != c.DESTROYED) {
                                        if (com.applovin.impl.sdk.o.a()) {
                                            com.applovin.impl.sdk.o oVar4 = this.logger;
                                            String str4 = this.tag;
                                            oVar4.b(str4, "Unable to transition to: " + cVar);
                                        }
                                    }
                                }
                                z10 = true;
                            } else if (cVar2 == c.DESTROYED) {
                                com.applovin.impl.sdk.o.h(this.tag, "No operations are allowed on a destroyed instance");
                            } else if (com.applovin.impl.sdk.o.a()) {
                                com.applovin.impl.sdk.o oVar5 = this.logger;
                                String str5 = this.tag;
                                oVar5.b(str5, "Unknown state: " + this.f8597g);
                            }
                            z10 = false;
                        }
                    }
                }
                if (z10) {
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar6 = this.logger;
                        String str6 = this.tag;
                        oVar6.a(str6, "Transitioning from " + this.f8597g + " to " + cVar + "...");
                    }
                    this.f8597g = cVar;
                } else if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar7 = this.logger;
                    String str7 = this.tag;
                    oVar7.k(str7, "Not allowed to transition from " + this.f8597g + " to " + cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxAd maxAd) {
        this.sdk.f().a((z2) maxAd);
        this.f8594d.a();
        a();
        this.sdk.a0().a((v2) maxAd);
    }
}
