package com.applovin.impl.mediation.ads;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.a3;
import com.applovin.impl.b6;
import com.applovin.impl.g5;
import com.applovin.impl.j;
import com.applovin.impl.k7;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.o3;
import com.applovin.impl.p6;
import com.applovin.impl.q2;
import com.applovin.impl.s1;
import com.applovin.impl.sdk.a;
import com.applovin.impl.v2;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
/* loaded from: classes2.dex */
public class MaxNativeAdLoaderImpl extends com.applovin.impl.mediation.ads.a implements a.InterfaceC0117a, j.b {
    public static final String KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE = "ad_request_type";

    /* renamed from: a  reason: collision with root package name */
    private final c f8617a;

    /* renamed from: b  reason: collision with root package name */
    private String f8618b;

    /* renamed from: c  reason: collision with root package name */
    private String f8619c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.impl.i f8620d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f8621e;

    /* renamed from: f  reason: collision with root package name */
    private MaxNativeAdListener f8622f;

    /* renamed from: g  reason: collision with root package name */
    private final Map f8623g;

    /* renamed from: h  reason: collision with root package name */
    private final Set f8624h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MaxNativeAd f8625a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f8626b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ViewGroup f8627c;

        a(MaxNativeAd maxNativeAd, List list, ViewGroup viewGroup) {
            this.f8625a = maxNativeAd;
            this.f8626b = list;
            this.f8627c = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f8625a.prepareForInteraction(this.f8626b, this.f8627c)) {
                com.applovin.impl.sdk.o.h(MaxNativeAdLoaderImpl.this.tag, "Failed to prepare native ad for interaction...");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MaxNativeAdView f8629a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a3 f8630b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MaxNativeAd f8631c;

        b(MaxNativeAdView maxNativeAdView, a3 a3Var, MaxNativeAd maxNativeAd) {
            this.f8629a = maxNativeAdView;
            this.f8630b = a3Var;
            this.f8631c = maxNativeAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.applovin.impl.sdk.o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxNativeAdLoaderImpl.logger;
                String str = maxNativeAdLoaderImpl.tag;
                oVar2.a(str, "Rendering native ad view: " + this.f8629a);
            }
            MaxNativeAdLoaderImpl.this.sdk.z().d(this.f8630b);
            this.f8629a.render(this.f8630b, MaxNativeAdLoaderImpl.this.f8617a, MaxNativeAdLoaderImpl.this.sdk);
            this.f8631c.setNativeAdView(this.f8629a);
            if (!this.f8631c.prepareForInteraction(this.f8629a.getClickableViews(), this.f8629a)) {
                this.f8631c.prepareViewForInteraction(this.f8629a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c implements a.InterfaceC0113a {
        private c() {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            com.applovin.impl.sdk.o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxNativeAdLoaderImpl.logger;
                String str = maxNativeAdLoaderImpl.tag;
                oVar2.a(str, "MaxNativeAdListener.onNativeAdClicked(nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.f8622f);
            }
            q2.a(MaxNativeAdLoaderImpl.this.f8622f, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            MaxNativeAdLoaderImpl.this.a(((MaxErrorImpl) maxError).getLoadTag());
            com.applovin.impl.sdk.o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxNativeAdLoaderImpl.logger;
                String str2 = maxNativeAdLoaderImpl.tag;
                oVar2.a(str2, "MaxNativeAdListener.onNativeAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxNativeAdLoaderImpl.this.f8622f);
            }
            q2.a(MaxNativeAdLoaderImpl.this.f8622f, str, maxError, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(final MaxAd maxAd) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.v
                @Override // java.lang.Runnable
                public final void run() {
                    MaxNativeAdLoaderImpl.c.this.a(maxAd);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            com.applovin.impl.sdk.o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                com.applovin.impl.sdk.o oVar2 = maxNativeAdLoaderImpl.logger;
                String str = maxNativeAdLoaderImpl.tag;
                oVar2.a(str, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.revenueListener);
            }
            q2.a(MaxNativeAdLoaderImpl.this.revenueListener, maxAd, true);
        }

        /* synthetic */ c(MaxNativeAdLoaderImpl maxNativeAdLoaderImpl, a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd) {
            com.applovin.impl.sdk.o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.a(maxNativeAdLoaderImpl.tag, "Native ad loaded");
            }
            a3 a3Var = (a3) maxAd;
            a3Var.g(MaxNativeAdLoaderImpl.this.f8618b);
            a3Var.f(MaxNativeAdLoaderImpl.this.f8619c);
            synchronized (MaxNativeAdLoaderImpl.this.f8621e) {
                MaxNativeAdLoaderImpl.this.f8624h.add(a3Var);
            }
            MaxNativeAdView a10 = MaxNativeAdLoaderImpl.this.a(a3Var.J());
            if (a10 == null) {
                com.applovin.impl.sdk.o oVar2 = MaxNativeAdLoaderImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl2 = MaxNativeAdLoaderImpl.this;
                    maxNativeAdLoaderImpl2.logger.a(maxNativeAdLoaderImpl2.tag, "No native ad view to render. Returning the native ad to be rendered later.");
                }
                com.applovin.impl.sdk.o oVar3 = MaxNativeAdLoaderImpl.this.logger;
                if (com.applovin.impl.sdk.o.a()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl3 = MaxNativeAdLoaderImpl.this;
                    com.applovin.impl.sdk.o oVar4 = maxNativeAdLoaderImpl3.logger;
                    String str = maxNativeAdLoaderImpl3.tag;
                    oVar4.a(str, "MaxNativeAdListener.onNativeAdLoaded(nativeAdView=null, nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.f8622f);
                }
                q2.a(MaxNativeAdLoaderImpl.this.f8622f, (MaxNativeAdView) null, maxAd, true);
                MaxNativeAdLoaderImpl.this.a(a3Var);
                return;
            }
            a(a10);
            MaxNativeAdLoaderImpl.this.a(a10, a3Var, a3Var.getNativeAd());
            com.applovin.impl.sdk.o oVar5 = MaxNativeAdLoaderImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl4 = MaxNativeAdLoaderImpl.this;
                com.applovin.impl.sdk.o oVar6 = maxNativeAdLoaderImpl4.logger;
                String str2 = maxNativeAdLoaderImpl4.tag;
                oVar6.a(str2, "MaxNativeAdListener.onNativeAdLoaded(nativeAdView=" + a10 + ", nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.f8622f);
            }
            q2.a(MaxNativeAdLoaderImpl.this.f8622f, a10, maxAd, true);
            MaxNativeAdLoaderImpl.this.a(a3Var);
            MaxNativeAdLoaderImpl.this.a(a10);
        }

        private void a(MaxNativeAdView maxNativeAdView) {
            a3 b10;
            com.applovin.impl.mediation.ads.b adViewTracker = maxNativeAdView.getAdViewTracker();
            if (adViewTracker == null || (b10 = adViewTracker.b()) == null) {
                return;
            }
            com.applovin.impl.sdk.o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (com.applovin.impl.sdk.o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.a(maxNativeAdLoaderImpl.tag, "Destroying previous ad");
            }
            MaxNativeAdLoaderImpl.this.destroy(b10);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        }
    }

    public MaxNativeAdLoaderImpl(String str, com.applovin.impl.sdk.k kVar) {
        super(str, MaxAdFormat.NATIVE, "MaxNativeAdLoader", kVar);
        this.f8617a = new c(this, null);
        this.f8620d = com.applovin.impl.i.PUBLISHER_INITIATED;
        this.f8621e = new Object();
        this.f8623g = new HashMap();
        this.f8624h = new HashSet();
        kVar.j().a(this);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "Created new MaxNativeAdLoader (" + this + ")");
        }
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        this.f8622f = null;
        this.sdk.j().b(this);
        synchronized (this.f8621e) {
            this.f8623g.clear();
            this.f8624h.clear();
        }
        super.destroy();
    }

    public String getPlacement() {
        return this.f8618b;
    }

    public void handleNativeAdViewRendered(MaxAd maxAd) {
        MaxNativeAd nativeAd = ((a3) maxAd).getNativeAd();
        if (nativeAd == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.b(this.tag, "Failed to handle native ad rendered. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                return;
            }
            return;
        }
        com.applovin.impl.mediation.ads.b adViewTracker = nativeAd.getAdViewTracker();
        if (adViewTracker == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.b(this.tag, "Failed to handle native ad rendered. Could not retrieve tracker. Ad might not have been registered via MaxNativeAdLoader.a(...).");
                return;
            }
            return;
        }
        adViewTracker.c();
    }

    public void loadAd(@Nullable MaxNativeAdView maxNativeAdView) {
        String str;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "Loading native ad for '" + this.adUnitId + "' into '" + maxNativeAdView + "' and notifying " + this.f8617a + "...");
        }
        Map<String, Object> map = this.extraParameters;
        if (maxNativeAdView != null) {
            str = "custom_ad_view";
        } else {
            str = "no_ad_view";
        }
        map.put("integration_type", str);
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        a(lowerCase, maxNativeAdView);
        this.sdk.X().loadAd(this.adUnitId, lowerCase, MaxAdFormat.NATIVE, this.f8620d, this.localExtraParameters, this.extraParameters, com.applovin.impl.sdk.k.o(), this.f8617a);
    }

    @Override // com.applovin.impl.sdk.a.InterfaceC0117a
    public void onAdExpired(s1 s1Var) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Ad expired for ad unit id " + getAdUnitId());
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar2 = this.logger;
            String str2 = this.tag;
            oVar2.a(str2, "MaxNativeAdListener.onNativeAdExpired(nativeAd=" + s1Var + "), listener=" + this.f8622f);
        }
        q2.b(this.f8622f, (MaxAd) ((a3) s1Var), true);
    }

    @Override // com.applovin.impl.j.b
    public void onCreativeIdGenerated(String str, String str2) {
        a3 a3Var;
        Iterator it = this.f8624h.iterator();
        while (true) {
            if (it.hasNext()) {
                a3Var = (a3) it.next();
                if (a3Var.P().equalsIgnoreCase(str)) {
                    break;
                }
            } else {
                a3Var = null;
                break;
            }
        }
        if (a3Var != null) {
            a3Var.h(str2);
            q2.b(this.adReviewListener, str2, a3Var);
            synchronized (this.f8621e) {
                this.f8624h.remove(a3Var);
            }
        }
    }

    public void registerClickableViews(List<View> list, ViewGroup viewGroup, MaxAd maxAd) {
        a3 a3Var = (a3) maxAd;
        MaxNativeAd nativeAd = a3Var.getNativeAd();
        if (nativeAd == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.logger.b(this.tag, "Failed to register native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                return;
            }
            return;
        }
        a3Var.a(viewGroup);
        this.sdk.z().d(a3Var);
        a((v2) a3Var);
        nativeAd.setClickableViews(list);
        nativeAd.setAdViewTracker(new com.applovin.impl.mediation.ads.b(a3Var, viewGroup, this.f8617a, this.sdk));
        a aVar = new a(nativeAd, list, viewGroup);
        if (nativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            AppLovinSdkUtils.runOnUiThread(aVar);
        } else {
            this.sdk.r0().a((g5) new p6(this.sdk, "renderMaxNativeAd", aVar), b6.b.MEDIATION);
        }
    }

    public boolean render(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
        if (!(maxAd instanceof a3)) {
            com.applovin.impl.sdk.o.h(this.tag, "Failed to render native ad. `ad` needs to be of type `MediatedNativeAd` to render.");
            return false;
        } else if (maxNativeAdView == null) {
            com.applovin.impl.sdk.o.h(this.tag, "Failed to render native ad. `adView` to render cannot be null.");
            return false;
        } else {
            a3 a3Var = (a3) maxAd;
            MaxNativeAd nativeAd = a3Var.getNativeAd();
            if (nativeAd == null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.logger.b(this.tag, "Failed to render native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                }
                return false;
            } else if (nativeAd.isExpired() && !((Boolean) this.sdk.a(o3.K7)).booleanValue()) {
                com.applovin.impl.sdk.o.h(this.tag, "Cancelled rendering for expired native ad. Check if an ad is expired before displaying using `MaxAd.getNativeAd().isExpired()`");
                return false;
            } else {
                a(maxNativeAdView, a3Var, nativeAd);
                a(maxNativeAdView);
                return true;
            }
        }
    }

    public void setCustomData(String str) {
        k7.b(str, this.tag);
        this.f8619c = str;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void setLocalExtraParameter(String str, Object obj) {
        super.setLocalExtraParameter(str, obj);
        if (KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE.equalsIgnoreCase(str) && (obj instanceof com.applovin.impl.i)) {
            this.f8620d = (com.applovin.impl.i) obj;
        }
    }

    public void setNativeAdListener(MaxNativeAdListener maxNativeAdListener) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Setting native ad listener: " + maxNativeAdListener);
        }
        this.f8622f = maxNativeAdListener;
    }

    public void setPlacement(String str) {
        this.f8618b = str;
    }

    @NonNull
    public String toString() {
        return "MaxNativeAdLoader{adUnitId='" + this.adUnitId + "', nativeAdListener=" + this.f8622f + ", revenueListener=" + this.revenueListener + '}';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a3 a3Var) {
        if (a3Var.o0().get()) {
            return;
        }
        this.sdk.f().a(a3Var, this);
    }

    private void a(String str, MaxNativeAdView maxNativeAdView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f8621e) {
            this.f8623g.put(str, maxNativeAdView);
        }
    }

    public void destroy(MaxAd maxAd) {
        com.applovin.impl.mediation.ads.b adViewTracker;
        if (maxAd instanceof a3) {
            a3 a3Var = (a3) maxAd;
            if (a3Var.r0()) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.logger;
                    String str = this.tag;
                    oVar.a(str, "Native ad (" + a3Var + ") has already been destroyed");
                    return;
                }
                return;
            }
            synchronized (this.f8621e) {
                this.f8624h.remove(a3Var);
            }
            MaxNativeAdView m02 = a3Var.m0();
            if (m02 != null && (adViewTracker = m02.getAdViewTracker()) != null && maxAd.equals(adViewTracker.b())) {
                m02.recycle();
            }
            MaxNativeAd nativeAd = a3Var.getNativeAd();
            if (nativeAd != null && nativeAd.getAdViewTracker() != null) {
                nativeAd.getAdViewTracker().a();
            }
            this.sdk.f().a(a3Var);
            this.sdk.X().destroyAd(a3Var);
            if (this.sdk.R() != null) {
                this.sdk.R().c(this.adUnitId, a3Var.J());
            } else {
                this.sdk.Q().c(this.adUnitId, a3Var.J());
            }
        } else if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar2 = this.logger;
            String str2 = this.tag;
            oVar2.a(str2, "Destroy failed on non-native ad(" + maxAd + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MaxNativeAdView a(String str) {
        MaxNativeAdView maxNativeAdView;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f8621e) {
            maxNativeAdView = (MaxNativeAdView) this.f8623g.remove(str);
        }
        return maxNativeAdView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxNativeAdView maxNativeAdView, a3 a3Var, MaxNativeAd maxNativeAd) {
        a3Var.a(maxNativeAdView);
        a((v2) a3Var);
        b bVar = new b(maxNativeAdView, a3Var, maxNativeAd);
        if (maxNativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            AppLovinSdkUtils.runOnUiThread(bVar);
        } else {
            this.sdk.r0().a((g5) new p6(this.sdk, "renderMaxNativeAd", bVar), b6.b.MEDIATION);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxNativeAdView maxNativeAdView) {
        com.applovin.impl.mediation.ads.b adViewTracker = maxNativeAdView.getAdViewTracker();
        if (adViewTracker == null || !maxNativeAdView.isAttachedToWindow()) {
            return;
        }
        adViewTracker.c();
    }
}
