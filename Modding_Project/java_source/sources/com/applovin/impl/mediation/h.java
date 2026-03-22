package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.b5;
import com.applovin.impl.b6;
import com.applovin.impl.g5;
import com.applovin.impl.h3;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.mediation.h;
import com.applovin.impl.o3;
import com.applovin.impl.p6;
import com.applovin.impl.q4;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.v2;
import com.applovin.impl.v4;
import com.applovin.impl.z2;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxAppOpenAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdViewAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdViewAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxSignalProvider;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.vungle.ads.internal.Constants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class h {

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8852b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f8853c;

    /* renamed from: d  reason: collision with root package name */
    private final String f8854d;

    /* renamed from: e  reason: collision with root package name */
    private final h3 f8855e;

    /* renamed from: f  reason: collision with root package name */
    private final String f8856f;

    /* renamed from: g  reason: collision with root package name */
    private MaxAdapter f8857g;

    /* renamed from: h  reason: collision with root package name */
    private String f8858h;

    /* renamed from: i  reason: collision with root package name */
    private v2 f8859i;

    /* renamed from: j  reason: collision with root package name */
    private View f8860j;

    /* renamed from: k  reason: collision with root package name */
    private MaxNativeAd f8861k;

    /* renamed from: l  reason: collision with root package name */
    private MaxNativeAdView f8862l;

    /* renamed from: m  reason: collision with root package name */
    private ViewGroup f8863m;

    /* renamed from: o  reason: collision with root package name */
    private MaxAdapterResponseParameters f8865o;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f8869s;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f8851a = new Handler(Looper.getMainLooper());

    /* renamed from: n  reason: collision with root package name */
    private final b f8864n = new b(this, null);

    /* renamed from: p  reason: collision with root package name */
    private final AtomicBoolean f8866p = new AtomicBoolean(true);

    /* renamed from: q  reason: collision with root package name */
    private final AtomicBoolean f8867q = new AtomicBoolean(false);

    /* renamed from: r  reason: collision with root package name */
    private final AtomicBoolean f8868r = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements MaxSignalCollectionListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b5 f8870a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ q4 f8871b;

        a(b5 b5Var, q4 q4Var) {
            this.f8870a = b5Var;
            this.f8871b = q4Var;
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
        public void onSignalCollected(String str) {
            if (this.f8870a.y() && TextUtils.isEmpty(str)) {
                this.f8871b.a(new MaxErrorImpl("Signal is not a valid string"));
            } else {
                this.f8871b.b(str);
            }
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
        public void onSignalCollectionFailed(String str) {
            this.f8871b.a(new MaxErrorImpl(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b implements MaxInterstitialAdapterListener, MaxAppOpenAdapterListener, MaxRewardedAdapterListener, MaxAdViewAdapterListener, MaxNativeAdAdapterListener {

        /* renamed from: a  reason: collision with root package name */
        private MediationServiceImpl.b f8873a;

        private b() {
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked() {
            onAdViewAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed() {
            onAdViewAdCollapsed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onAdViewAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed() {
            onAdViewAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded() {
            onAdViewAdExpanded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden() {
            onAdViewAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoadFailed(MaxAdapterError maxAdapterError) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.k("MediationAdapterWrapper", h.this.f8856f + ": adview ad ad failed to load with error: " + maxAdapterError);
            }
            a("onAdViewAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view) {
            onAdViewAdLoaded(view, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked() {
            onAppOpenAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onAppOpenAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed() {
            onAppOpenAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden() {
            onAppOpenAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoadFailed(MaxAdapterError maxAdapterError) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.k("MediationAdapterWrapper", h.this.f8856f + ": app open ad failed to load with error: " + maxAdapterError);
            }
            a("onAppOpenAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded() {
            onAppOpenAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked() {
            onInterstitialAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onInterstitialAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed() {
            onInterstitialAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden() {
            onInterstitialAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.k("MediationAdapterWrapper", h.this.f8856f + ": interstitial ad failed to load with error " + maxAdapterError);
            }
            a("onInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded() {
            onInterstitialAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked() {
            onNativeAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdDisplayed(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": native ad displayed with extra info: " + bundle);
            }
            a("onNativeAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoadFailed(MaxAdapterError maxAdapterError) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.k("MediationAdapterWrapper", h.this.f8856f + ": native ad ad failed to load with error: " + maxAdapterError);
            }
            a("onNativeAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoaded(MaxNativeAd maxNativeAd, Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": native ad loaded with extra info: " + bundle);
            }
            h.this.f8861k = maxNativeAd;
            c("onNativeAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked() {
            onRewardedAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onRewardedAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed() {
            onRewardedAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden() {
            onRewardedAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoadFailed(MaxAdapterError maxAdapterError) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.k("MediationAdapterWrapper", h.this.f8856f + ": rewarded ad failed to load with error: " + maxAdapterError);
            }
            a("onRewardedAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded() {
            onRewardedAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onUserRewarded(MaxReward maxReward) {
            onUserRewarded(maxReward, null);
        }

        /* synthetic */ b(h hVar, a aVar) {
            this();
        }

        private void b(String str, final Bundle bundle) {
            if (h.this.f8859i.w().compareAndSet(false, true)) {
                a(str, this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.r0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.b.this.i(bundle);
                    }
                });
            }
        }

        private void c(String str, final Bundle bundle) {
            if (h.this.f8859i.w().get()) {
                com.applovin.impl.sdk.o unused = h.this.f8853c;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = h.this.f8853c;
                    oVar.b("MediationAdapterWrapper", h.this.f8856f + ": blocking ad loaded callback for " + h.this.f8859i + " since onAdHidden() has been called");
                }
                h.this.f8852b.u().a(h.this.f8859i, str);
                return;
            }
            h.this.f8868r.set(true);
            a(str, this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.n0
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.j(bundle);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Bundle bundle) {
            this.f8873a.a(h.this.f8859i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(Bundle bundle) {
            this.f8873a.a(h.this.f8859i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(Bundle bundle) {
            this.f8873a.a(h.this.f8859i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(Bundle bundle) {
            this.f8873a.c(h.this.f8859i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(Bundle bundle) {
            this.f8873a.c(h.this.f8859i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(Bundle bundle) {
            this.f8873a.e(h.this.f8859i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(Bundle bundle) {
            if (h.this.f8867q.compareAndSet(false, true)) {
                this.f8873a.f(h.this.f8859i, bundle);
            }
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked(final Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": adview ad clicked with extra info: " + bundle);
            }
            a("onAdViewAdClicked", this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.s0
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.a(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": adview ad collapsed");
            }
            a("onAdViewAdCollapsed", this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.p0
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.a();
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.k("MediationAdapterWrapper", h.this.f8856f + ": adview ad failed to display with error: " + maxAdapterError);
            }
            a("onAdViewAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": adview ad displayed with extra info: " + bundle);
            }
            a("onAdViewAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded(final Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": adview ad expanded");
            }
            a("onAdViewAdExpanded", this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.a1
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.b(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": adview ad hidden with extra info: " + bundle);
            }
            b("onAdViewAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view, Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": adview ad loaded with extra info: " + bundle);
            }
            h.this.f8860j = view;
            c("onAdViewAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked(final Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": app open ad clicked with extra info: " + bundle);
            }
            a("onAppOpenAdClicked", this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.z0
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.c(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.k("MediationAdapterWrapper", h.this.f8856f + ": app open ad display failed with error: " + maxAdapterError);
            }
            a("onAppOpenAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": app open ad displayed with extra info: " + bundle);
            }
            a("onAppOpenAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": app open ad hidden with extra info: " + bundle);
            }
            b("onAppOpenAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": app open ad loaded with extra info: " + bundle);
            }
            c("onAppOpenAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked(final Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": interstitial ad clicked with extra info: " + bundle);
            }
            a("onInterstitialAdClicked", this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.x0
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.d(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.k("MediationAdapterWrapper", h.this.f8856f + ": interstitial ad failed to display with error " + maxAdapterError);
            }
            a("onInterstitialAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": interstitial ad displayed with extra info: " + bundle);
            }
            a("onInterstitialAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": interstitial ad hidden with extra info " + bundle);
            }
            b("onInterstitialAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": interstitial ad loaded with extra info: " + bundle);
            }
            c("onInterstitialAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked(final Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": native ad clicked");
            }
            a("onNativeAdClicked", this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.q0
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.e(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked(final Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": rewarded ad clicked with extra info: " + bundle);
            }
            a("onRewardedAdClicked", this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.u0
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.f(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.k("MediationAdapterWrapper", h.this.f8856f + ": rewarded ad display failed with error: " + maxAdapterError);
            }
            a("onRewardedAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": rewarded ad displayed with extra info: " + bundle);
            }
            a("onRewardedAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": rewarded ad hidden with extra info: " + bundle);
            }
            b("onRewardedAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded(Bundle bundle) {
            com.applovin.impl.sdk.o unused = h.this.f8853c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = h.this.f8853c;
                oVar.d("MediationAdapterWrapper", h.this.f8856f + ": rewarded ad loaded with extra info: " + bundle);
            }
            c("onRewardedAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onUserRewarded(final MaxReward maxReward, final Bundle bundle) {
            if (h.this.f8859i instanceof z2) {
                final z2 z2Var = (z2) h.this.f8859i;
                if (z2Var.n0().compareAndSet(false, true)) {
                    com.applovin.impl.sdk.o unused = h.this.f8853c;
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = h.this.f8853c;
                        oVar.d("MediationAdapterWrapper", h.this.f8856f + ": user was rewarded: " + maxReward);
                    }
                    a("onUserRewarded", this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.t0
                        @Override // java.lang.Runnable
                        public final void run() {
                            h.b.this.a(z2Var, maxReward, bundle);
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Bundle bundle) {
            this.f8873a.d(h.this.f8859i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(MediationServiceImpl.b bVar) {
            if (bVar != null) {
                this.f8873a = bVar;
                return;
            }
            throw new IllegalArgumentException("No listener specified");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(Bundle bundle) {
            this.f8873a.a(h.this.f8859i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, final MaxError maxError) {
            if (h.this.f8859i.w().get()) {
                com.applovin.impl.sdk.o unused = h.this.f8853c;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = h.this.f8853c;
                    oVar.b("MediationAdapterWrapper", h.this.f8856f + ": blocking ad load failed callback for " + h.this.f8859i + " since onAdHidden() has been called");
                }
                h.this.f8852b.u().a(h.this.f8859i, str);
                return;
            }
            a(str, this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.m0
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.a(maxError);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxError maxError) {
            if (h.this.f8867q.compareAndSet(false, true)) {
                this.f8873a.onAdLoadFailed(h.this.f8858h, maxError);
            }
        }

        private void a(String str, final Bundle bundle) {
            if (h.this.f8859i.w().get()) {
                com.applovin.impl.sdk.o unused = h.this.f8853c;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = h.this.f8853c;
                    oVar.b("MediationAdapterWrapper", h.this.f8856f + ": blocking ad displayed callback for " + h.this.f8859i + " since onAdHidden() has been called");
                }
                h.this.f8852b.u().a(h.this.f8859i, str);
            } else if (!((Boolean) h.this.f8852b.a(o3.f9130m8)).booleanValue()) {
                if (h.this.f8859i.u().compareAndSet(false, true)) {
                    a(str, this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.w0
                        @Override // java.lang.Runnable
                        public final void run() {
                            h.b.this.h(bundle);
                        }
                    });
                }
            } else {
                a(str, this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.v0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.b.this.g(bundle);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, final MaxError maxError, final Bundle bundle) {
            if (h.this.f8859i.w().get()) {
                com.applovin.impl.sdk.o unused = h.this.f8853c;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = h.this.f8853c;
                    oVar.b("MediationAdapterWrapper", h.this.f8856f + ": blocking ad display failed callback for " + h.this.f8859i + " since onAdHidden() has been called");
                }
                h.this.f8852b.u().a(h.this.f8859i, str);
                return;
            }
            a(str, this.f8873a, new Runnable() { // from class: com.applovin.impl.mediation.o0
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.a(maxError, bundle);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxError maxError, Bundle bundle) {
            this.f8873a.a(h.this.f8859i, maxError, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(z2 z2Var, MaxReward maxReward, Bundle bundle) {
            this.f8873a.a(z2Var, maxReward, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Bundle bundle) {
            this.f8873a.a(h.this.f8859i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            this.f8873a.onAdCollapsed(h.this.f8859i);
        }

        private void a(final String str, final MaxAdListener maxAdListener, final Runnable runnable) {
            h.this.f8851a.post(new Runnable() { // from class: com.applovin.impl.mediation.y0
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.a(runnable, maxAdListener, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Runnable runnable, MaxAdListener maxAdListener, String str) {
            try {
                runnable.run();
            } catch (Throwable th2) {
                String name = maxAdListener != null ? maxAdListener.getClass().getName() : null;
                com.applovin.impl.sdk.o.c("MediationAdapterWrapper", "Failed to forward call (" + str + ") to " + name, th2);
                h.this.f8852b.E().a("MediationAdapterWrapper", str, th2, CollectionUtils.hashMap("adapter_class", h.this.f8855e.b()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c implements MaxAdapter.OnCompletionListener {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.impl.sdk.k f8875a;

        /* renamed from: b  reason: collision with root package name */
        private final h3 f8876b;

        /* renamed from: c  reason: collision with root package name */
        private final long f8877c;

        /* renamed from: d  reason: collision with root package name */
        private final MaxAdapter.OnCompletionListener f8878d;

        public c(com.applovin.impl.sdk.k kVar, h3 h3Var, long j10, MaxAdapter.OnCompletionListener onCompletionListener) {
            this.f8875a = kVar;
            this.f8876b = h3Var;
            this.f8877c = j10;
            this.f8878d = onCompletionListener;
        }

        @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
        public void onCompletion(final MaxAdapter.InitializationStatus initializationStatus, final String str) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.b1
                @Override // java.lang.Runnable
                public final void run() {
                    h.c.this.a(initializationStatus, str);
                }
            }, this.f8876b.h());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAdapter.InitializationStatus initializationStatus, String str) {
            this.f8875a.S().a(this.f8876b, SystemClock.elapsedRealtime() - this.f8877c, initializationStatus, str);
            MaxAdapter.OnCompletionListener onCompletionListener = this.f8878d;
            if (onCompletionListener != null) {
                onCompletionListener.onCompletion(initializationStatus, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d extends g5 {

        /* renamed from: g  reason: collision with root package name */
        private final WeakReference f8879g;

        /* synthetic */ d(h hVar, a aVar) {
            this();
        }

        private void b(v2 v2Var) {
            if (v2Var != null) {
                this.f7960a.Z().a(v2Var);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!h.this.f8867q.get()) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7962c;
                    String str = this.f7961b;
                    oVar.b(str, h.this.f8856f + " is timing out " + h.this.f8859i + "...");
                }
                b(h.this.f8859i);
                MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-5101, "Adapter timed out");
                b bVar = (b) this.f8879g.get();
                if (bVar != null) {
                    bVar.a(this.f7961b, maxErrorImpl);
                }
            }
        }

        private d() {
            super("TaskTimeoutMediatedAd", h.this.f8852b);
            this.f8879g = new WeakReference(h.this.f8864n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(h3 h3Var, MaxAdapter maxAdapter, boolean z10, com.applovin.impl.sdk.k kVar) {
        if (h3Var != null) {
            if (maxAdapter != null) {
                if (kVar != null) {
                    this.f8854d = h3Var.c();
                    this.f8857g = maxAdapter;
                    this.f8852b = kVar;
                    this.f8853c = kVar.O();
                    this.f8855e = h3Var;
                    this.f8856f = maxAdapter.getClass().getSimpleName();
                    this.f8869s = z10;
                    return;
                }
                throw new IllegalArgumentException("No sdk specified");
            }
            throw new IllegalArgumentException("No adapter specified");
        }
        throw new IllegalArgumentException("No adapter name specified");
    }

    public String toString() {
        return "MediationAdapterWrapper{adapterTag='" + this.f8856f + "'}";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        a("destroy");
        MaxAdapter maxAdapter = this.f8857g;
        if (maxAdapter != null) {
            this.f8857g = null;
            maxAdapter.onDestroy();
        } else if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f8853c;
            oVar.k("MediationAdapterWrapper", "Mediation adapter '" + this.f8856f + "' is already destroyed");
        }
        this.f8860j = null;
        this.f8861k = null;
        this.f8862l = null;
        this.f8863m = null;
    }

    public String i() {
        MaxAdapter maxAdapter = this.f8857g;
        if (maxAdapter != null) {
            try {
                return maxAdapter.getSdkVersion();
            } catch (Throwable th2) {
                com.applovin.impl.sdk.o.c("MediationAdapterWrapper", "Failed to get adapter's SDK version for " + this.f8854d, th2);
                this.f8852b.E().a("MediationAdapterWrapper", "sdk_version", th2, CollectionUtils.hashMap("adapter_class", this.f8855e.b()));
                a("sdk_version");
                this.f8852b.T().a(this.f8855e.b(), "sdk_version", this.f8859i);
                return null;
            }
        }
        return null;
    }

    public boolean j() {
        return this.f8867q.get() && this.f8868r.get();
    }

    public boolean k() {
        return this.f8866p.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxAppOpenAdapter) this.f8857g).loadAppOpenAd(maxAdapterResponseParameters, activity, this.f8864n);
    }

    public MediationServiceImpl.b c() {
        return this.f8864n.f8873a;
    }

    public View d() {
        return this.f8860j;
    }

    public MaxNativeAd e() {
        return this.f8861k;
    }

    public MaxNativeAdView f() {
        return this.f8862l;
    }

    public String g() {
        return this.f8854d;
    }

    public ViewGroup h() {
        return this.f8863m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxRewardedAdapter) this.f8857g).loadRewardedAd(maxAdapterResponseParameters, activity, this.f8864n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MediationAdapterBase) this.f8857g).loadNativeAd(maxAdapterResponseParameters, activity, this.f8864n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final MaxAdapterInitializationParameters maxAdapterInitializationParameters, final Activity activity, final MaxAdapter.OnCompletionListener onCompletionListener) {
        b(MobileAdsBridgeBase.initializeMethodName, new Runnable() { // from class: com.applovin.impl.mediation.h0
            @Override // java.lang.Runnable
            public final void run() {
                h.this.a(onCompletionListener, maxAdapterInitializationParameters, activity);
            }
        });
    }

    public void b(v2 v2Var, final Activity activity) {
        Runnable runnable;
        if (a(v2Var, activity)) {
            if (v2Var.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.j0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.a(activity);
                    }
                };
            } else if (v2Var.getFormat() == MaxAdFormat.APP_OPEN) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.k0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.b(activity);
                    }
                };
            } else if (v2Var.getFormat() == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.l0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.c(activity);
                    }
                };
            } else {
                throw new IllegalStateException("Failed to show " + v2Var + ": " + v2Var.getFormat() + " is not a supported ad format");
            }
            a(runnable, v2Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapter.OnCompletionListener onCompletionListener, MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f8853c;
            oVar.a("MediationAdapterWrapper", "Initializing " + this.f8856f + " on thread: " + Thread.currentThread() + " with 'run_on_ui_thread' value: " + this.f8855e.r());
        }
        this.f8857g.initialize(maxAdapterInitializationParameters, activity, new c(this.f8852b, this.f8855e, elapsedRealtime, onCompletionListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Activity activity) {
        ((MaxRewardedAdapter) this.f8857g).showRewardedAd(this.f8865o, activity, this.f8864n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, v2 v2Var) {
        this.f8858h = str;
        this.f8859i = v2Var;
    }

    public void a(MaxNativeAdView maxNativeAdView) {
        this.f8862l = maxNativeAdView;
    }

    public void a(ViewGroup viewGroup) {
        this.f8863m = viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Activity activity) {
        ((MaxAppOpenAdapter) this.f8857g).showAppOpenAd(this.f8865o, activity, this.f8864n);
    }

    public void a(String str, final MaxAdapterResponseParameters maxAdapterResponseParameters, final v2 v2Var, final Activity activity, MediationServiceImpl.b bVar) {
        final Runnable runnable;
        if (v2Var != null) {
            if (!this.f8866p.get()) {
                String str2 = "Mediation adapter '" + this.f8856f + "' was disabled due to earlier failures. Loading ads with this adapter is disabled.";
                com.applovin.impl.sdk.o.h("MediationAdapterWrapper", str2);
                bVar.onAdLoadFailed(str, new MaxErrorImpl(-1, str2));
                return;
            }
            this.f8865o = maxAdapterResponseParameters;
            this.f8864n.a(bVar);
            final MaxAdFormat format = v2Var.getFormat();
            if (format == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.a(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (format == MaxAdFormat.APP_OPEN) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.b(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (format == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.z
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.c(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (format == MaxAdFormat.NATIVE) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.a0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.d(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (format.isAdViewAd()) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.a(maxAdapterResponseParameters, format, activity);
                    }
                };
            } else {
                throw new IllegalStateException("Failed to load " + v2Var + ": " + v2Var.getFormat() + " is not a supported ad format");
            }
            a(Constants.LOAD_AD, format, new Runnable() { // from class: com.applovin.impl.mediation.c0
                @Override // java.lang.Runnable
                public final void run() {
                    h.this.a(v2Var, runnable);
                }
            });
            return;
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        ((MaxRewardedAdViewAdapter) this.f8857g).showRewardedAd(this.f8865o, viewGroup, lifecycle, activity, this.f8864n);
    }

    public String b() {
        MaxAdapter maxAdapter = this.f8857g;
        if (maxAdapter != null) {
            try {
                return maxAdapter.getAdapterVersion();
            } catch (Throwable th2) {
                com.applovin.impl.sdk.o.c("MediationAdapterWrapper", "Failed to get adapter version for " + this.f8854d, th2);
                this.f8852b.E().a("MediationAdapterWrapper", "adapter_version", th2, CollectionUtils.hashMap("adapter_class", this.f8855e.b()));
                a("adapter_version");
                this.f8852b.T().a(this.f8855e.b(), "adapter_version", this.f8859i);
                return null;
            }
        }
        return null;
    }

    private void b(String str, Runnable runnable) {
        a(str, (MaxAdFormat) null, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxInterstitialAdapter) this.f8857g).loadInterstitialAd(maxAdapterResponseParameters, activity, this.f8864n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, Activity activity) {
        ((MaxAdViewAdapter) this.f8857g).loadAdViewAd(maxAdapterResponseParameters, maxAdFormat, activity, this.f8864n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(v2 v2Var, Runnable runnable) {
        a(this.f8855e, v2Var);
        try {
            runnable.run();
        } catch (Throwable th2) {
            String str = "Failed to start loading ad for " + this.f8854d + " due to: " + th2;
            com.applovin.impl.sdk.o.h("MediationAdapterWrapper", str);
            this.f8864n.a(Constants.LOAD_AD, new MaxErrorImpl(-1, str));
            this.f8852b.E().a("MediationAdapterWrapper", Constants.LOAD_AD, th2, CollectionUtils.hashMap("adapter_class", this.f8855e.b()));
            a(Constants.LOAD_AD);
            this.f8852b.T().a(this.f8855e.b(), Constants.LOAD_AD, this.f8859i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity) {
        ((MaxInterstitialAdapter) this.f8857g).showInterstitialAd(this.f8865o, activity, this.f8864n);
    }

    public void a(v2 v2Var, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity) {
        Runnable runnable;
        if (a(v2Var, activity)) {
            if (v2Var.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.a(viewGroup, lifecycle, activity);
                    }
                };
            } else if (v2Var.getFormat() == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.d0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.b(viewGroup, lifecycle, activity);
                    }
                };
            } else {
                throw new IllegalStateException("Failed to show " + v2Var + ": " + v2Var.getFormat() + " is not a supported ad format");
            }
            a(runnable, v2Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        ((MaxInterstitialAdViewAdapter) this.f8857g).showInterstitialAd(this.f8865o, viewGroup, lifecycle, activity, this.f8864n);
    }

    private boolean a(v2 v2Var, Activity activity) {
        if (v2Var != null) {
            if (v2Var.A() == null) {
                com.applovin.impl.sdk.o.h("MediationAdapterWrapper", "Adapter has been garbage collected");
                this.f8864n.a("ad_show", new MaxErrorImpl(-1, "Adapter has been garbage collected"), (Bundle) null);
                return false;
            } else if (v2Var.A() == this) {
                if (activity != null || MaxAdFormat.APP_OPEN == v2Var.getFormat()) {
                    if (!this.f8866p.get()) {
                        String str = "Mediation adapter '" + this.f8856f + "' is disabled. Showing ads with this adapter is disabled.";
                        com.applovin.impl.sdk.o.h("MediationAdapterWrapper", str);
                        this.f8864n.a("ad_show", new MaxErrorImpl(-1, str), (Bundle) null);
                        return false;
                    } else if (j()) {
                        return true;
                    } else {
                        throw new IllegalStateException("Mediation adapter '" + this.f8856f + "' does not have an ad loaded. Please load an ad first");
                    }
                }
                throw new IllegalArgumentException("No activity specified");
            } else {
                throw new IllegalArgumentException("Mediated ad belongs to a different adapter");
            }
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    private void a(final Runnable runnable, v2 v2Var) {
        a("show_ad", v2Var.getFormat(), new Runnable() { // from class: com.applovin.impl.mediation.f0
            @Override // java.lang.Runnable
            public final void run() {
                h.this.a(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Runnable runnable) {
        try {
            runnable.run();
        } catch (Throwable th2) {
            String str = "Failed to start displaying ad for " + this.f8854d + " due to: " + th2;
            com.applovin.impl.sdk.o.h("MediationAdapterWrapper", str);
            this.f8864n.a("show_ad", new MaxErrorImpl(-1, str), (Bundle) null);
            this.f8852b.E().a("MediationAdapterWrapper", "show_ad", th2, CollectionUtils.hashMap("adapter_class", this.f8855e.b()));
            a("show_ad");
            this.f8852b.T().a(this.f8855e.b(), "show_ad", this.f8859i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, final b5 b5Var, final Activity activity, final q4 q4Var) {
        if (q4Var != null) {
            if (!this.f8866p.get()) {
                com.applovin.impl.sdk.o.h("MediationAdapterWrapper", "Mediation adapter '" + this.f8856f + "' is disabled. Signal collection ads with this adapter is disabled.");
                q4Var.a(new MaxErrorImpl("The adapter (" + this.f8856f + ") is disabled"));
                return;
            }
            MaxAdapter maxAdapter = this.f8857g;
            if (maxAdapter instanceof MaxSignalProvider) {
                final MaxSignalProvider maxSignalProvider = (MaxSignalProvider) maxAdapter;
                b("collect_signal", new Runnable() { // from class: com.applovin.impl.mediation.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.a(maxSignalProvider, maxAdapterSignalCollectionParameters, activity, b5Var, q4Var);
                    }
                });
                return;
            }
            q4Var.a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_NOT_SUPPORTED, "The adapter (" + this.f8856f + ") does not support signal collection"));
            return;
        }
        throw new IllegalArgumentException("No callback specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxSignalProvider maxSignalProvider, MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, Activity activity, b5 b5Var, q4 q4Var) {
        try {
            maxSignalProvider.collectSignal(maxAdapterSignalCollectionParameters, activity, new a(b5Var, q4Var));
        } catch (Throwable th2) {
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl("Failed signal collection for " + this.f8854d + " due to: " + th2);
            com.applovin.impl.sdk.o.h("MediationAdapterWrapper", maxErrorImpl.getMessage());
            q4Var.a(maxErrorImpl);
            this.f8852b.E().a("MediationAdapterWrapper", "collect_signal", th2, CollectionUtils.hashMap("adapter_class", this.f8855e.b()));
            a("collect_signal");
            this.f8852b.T().a(this.f8855e.b(), "collect_signal", this.f8859i);
        }
        if (!q4Var.c() && b5Var.m() == 0) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f8853c;
                oVar.a("MediationAdapterWrapper", "Failing signal collection " + b5Var + " since it has 0 timeout");
            }
            q4Var.a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT, "The adapter (" + this.f8856f + ") has 0 timeout"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.f8869s) {
            return;
        }
        b("destroy", new Runnable() { // from class: com.applovin.impl.mediation.i0
            @Override // java.lang.Runnable
            public final void run() {
                h.this.l();
            }
        });
    }

    private void a(h3 h3Var, v2 v2Var) {
        a(new d(this, null), h3Var, v2Var);
    }

    private void a(g5 g5Var, h3 h3Var, v2 v2Var) {
        long m10 = h3Var.m();
        if (m10 <= 0) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f8853c;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Non-positive timeout set for ");
                if (v2Var != null) {
                    h3Var = v2Var;
                }
                sb2.append(h3Var);
                sb2.append(", not scheduling a timeout");
                oVar.a("MediationAdapterWrapper", sb2.toString());
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar2 = this.f8853c;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Setting timeout ");
            sb3.append(m10);
            sb3.append("ms for ");
            if (v2Var != null) {
                h3Var = v2Var;
            }
            sb3.append(h3Var);
            oVar2.a("MediationAdapterWrapper", sb3.toString());
        }
        this.f8852b.r0().a(g5Var, b6.b.TIMEOUT, m10);
    }

    private void a(String str) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f8853c;
            oVar.d("MediationAdapterWrapper", "Marking " + this.f8856f + " as disabled due to: " + str);
        }
        this.f8866p.set(false);
    }

    private void a(final String str, MaxAdFormat maxAdFormat, final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: com.applovin.impl.mediation.e0
            @Override // java.lang.Runnable
            public final void run() {
                h.this.a(str, runnable);
            }
        };
        if (a(str, maxAdFormat)) {
            this.f8851a.post(runnable2);
            return;
        }
        p6 p6Var = new p6(this.f8852b, str + ":" + this.f8855e.c(), runnable2);
        if (((Boolean) this.f8852b.a(v4.X)).booleanValue()) {
            this.f8852b.r0().a(p6Var, this.f8855e);
        } else {
            this.f8852b.r0().a(p6Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Runnable runnable) {
        try {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f8853c;
                oVar.a("MediationAdapterWrapper", this.f8856f + ": running " + str + "...");
            }
            runnable.run();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f8853c;
                oVar2.a("MediationAdapterWrapper", this.f8856f + ": finished " + str + "");
            }
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("MediationAdapterWrapper", "Failed operation " + str + " for " + this.f8854d, th2);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("fail_");
            sb2.append(str);
            a(sb2.toString());
            if (!str.equals("destroy")) {
                this.f8852b.T().a(this.f8855e.b(), str, this.f8859i);
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap("is_wrapper", "true");
            CollectionUtils.putStringIfValid("adapter_class", this.f8855e.b(), hashMap);
            this.f8852b.E().a("MediationAdapterWrapper", str, th2, hashMap);
        }
    }

    private boolean a(String str, MaxAdFormat maxAdFormat) {
        Boolean a02;
        Boolean c02;
        Boolean b02;
        MaxAdapter maxAdapter = this.f8857g;
        if (maxAdapter == null) {
            return this.f8855e.r();
        }
        if (MobileAdsBridgeBase.initializeMethodName.equals(str)) {
            Boolean shouldInitializeOnUiThread = maxAdapter.shouldInitializeOnUiThread();
            if (shouldInitializeOnUiThread != null) {
                return shouldInitializeOnUiThread.booleanValue();
            }
        } else if ("collect_signal".equals(str)) {
            Boolean shouldCollectSignalsOnUiThread = maxAdapter.shouldCollectSignalsOnUiThread();
            if (shouldCollectSignalsOnUiThread != null) {
                return shouldCollectSignalsOnUiThread.booleanValue();
            }
        } else if (Constants.LOAD_AD.equals(str) && maxAdFormat != null) {
            v2 v2Var = this.f8859i;
            if (v2Var != null && (b02 = v2Var.b0()) != null) {
                return b02.booleanValue();
            }
            Boolean shouldLoadAdsOnUiThread = maxAdapter.shouldLoadAdsOnUiThread(maxAdFormat);
            if (shouldLoadAdsOnUiThread != null) {
                return shouldLoadAdsOnUiThread.booleanValue();
            }
        } else if ("show_ad".equals(str) && maxAdFormat != null) {
            v2 v2Var2 = this.f8859i;
            if (v2Var2 != null && (c02 = v2Var2.c0()) != null) {
                return c02.booleanValue();
            }
            Boolean shouldShowAdsOnUiThread = maxAdapter.shouldShowAdsOnUiThread(maxAdFormat);
            if (shouldShowAdsOnUiThread != null) {
                return shouldShowAdsOnUiThread.booleanValue();
            }
        } else if ("destroy".equals(str)) {
            v2 v2Var3 = this.f8859i;
            if (v2Var3 != null && (a02 = v2Var3.a0()) != null) {
                return a02.booleanValue();
            }
            Boolean shouldDestroyOnUiThread = maxAdapter.shouldDestroyOnUiThread();
            if (shouldDestroyOnUiThread != null) {
                return shouldDestroyOnUiThread.booleanValue();
            }
            return true;
        }
        return this.f8855e.r();
    }
}
