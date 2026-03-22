package com.applovin.impl;

import android.content.Context;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.b6;
import com.applovin.impl.h2;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class h2 {

    /* renamed from: b  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f8018b;

    /* renamed from: c  reason: collision with root package name */
    protected final AppLovinAdServiceImpl f8019c;

    /* renamed from: d  reason: collision with root package name */
    private AppLovinAd f8020d;

    /* renamed from: e  reason: collision with root package name */
    private String f8021e;

    /* renamed from: f  reason: collision with root package name */
    private SoftReference f8022f;

    /* renamed from: h  reason: collision with root package name */
    private volatile String f8024h;

    /* renamed from: j  reason: collision with root package name */
    private volatile double f8026j;

    /* renamed from: a  reason: collision with root package name */
    public final Map f8017a = Collections.synchronizedMap(new HashMap());

    /* renamed from: g  reason: collision with root package name */
    private final Object f8023g = new Object();

    /* renamed from: i  reason: collision with root package name */
    private volatile boolean f8025i = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements AppLovinAdRewardListener {
        a() {
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userOverQuota(AppLovinAd appLovinAd, Map map) {
            h2.this.f8018b.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = h2.this.f8018b.O();
                O.b("IncentivizedAdController", "User over quota: " + map);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardRejected(AppLovinAd appLovinAd, Map map) {
            h2.this.f8018b.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = h2.this.f8018b.O();
                O.b("IncentivizedAdController", "Reward rejected: " + map);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardVerified(AppLovinAd appLovinAd, Map map) {
            h2.this.f8018b.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = h2.this.f8018b.O();
                O.a("IncentivizedAdController", "Reward validated: " + map);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void validationRequestFailed(AppLovinAd appLovinAd, int i10) {
            h2.this.f8018b.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = h2.this.f8018b.O();
                O.b("IncentivizedAdController", "Reward validation failed: " + i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b implements AppLovinAdLoadListener {

        /* renamed from: a  reason: collision with root package name */
        private final AppLovinAdLoadListener f8028a;

        b(AppLovinAdLoadListener appLovinAdLoadListener) {
            this.f8028a = appLovinAdLoadListener;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(final AppLovinAd appLovinAd) {
            h2.this.f8020d = appLovinAd;
            if (this.f8028a != null) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.na
                    @Override // java.lang.Runnable
                    public final void run() {
                        h2.b.this.a(appLovinAd);
                    }
                });
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(final int i10) {
            if (this.f8028a != null) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.ma
                    @Override // java.lang.Runnable
                    public final void run() {
                        h2.b.this.a(i10);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(AppLovinAd appLovinAd) {
            try {
                this.f8028a.adReceived(appLovinAd);
            } catch (Throwable th2) {
                com.applovin.impl.sdk.o.c("AppLovinIncentivizedInterstitial", "Unable to notify ad listener about a newly loaded ad", th2);
                h2.this.f8018b.E().a("IncentivizedAdController", "adLoaded", th2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i10) {
            try {
                this.f8028a.failedToReceiveAd(i10);
            } catch (Throwable th2) {
                com.applovin.impl.sdk.o.c("AppLovinIncentivizedInterstitial", "Unable to notify listener about ad load failure", th2);
                h2.this.f8018b.E().a("IncentivizedAdController", "adLoadFailed", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c implements k2, AppLovinAdVideoPlaybackListener, AppLovinAdRewardListener, AppLovinAdClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final AppLovinAd f8030a;

        /* renamed from: b  reason: collision with root package name */
        private final AppLovinAdDisplayListener f8031b;

        /* renamed from: c  reason: collision with root package name */
        private final AppLovinAdClickListener f8032c;

        /* renamed from: d  reason: collision with root package name */
        private final AppLovinAdVideoPlaybackListener f8033d;

        /* renamed from: e  reason: collision with root package name */
        private final AppLovinAdRewardListener f8034e;

        /* synthetic */ c(h2 h2Var, AppLovinAd appLovinAd, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener, a aVar) {
            this(appLovinAd, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
        }

        private void a(com.applovin.impl.sdk.ad.b bVar, String str) {
            int i10;
            h2.this.f8018b.O();
            if (com.applovin.impl.sdk.o.a()) {
                h2.this.f8018b.O().a("IncentivizedAdController", "Finishing direct ad...");
            }
            String b10 = h2.this.b();
            if (!StringUtils.isValidString(b10) || !h2.this.f8025i) {
                h2.this.f8018b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = h2.this.f8018b.O();
                    O.b("IncentivizedAdController", "Invalid reward state - result: " + b10 + " and wasFullyEngaged: " + h2.this.f8025i);
                }
                h2.this.f8018b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    h2.this.f8018b.O().a("IncentivizedAdController", "Cancelling any incoming reward requests for this ad");
                }
                bVar.d();
                if (h2.this.f8025i) {
                    h2.this.f8018b.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        h2.this.f8018b.O().b("IncentivizedAdController", "User closed the ad after fully watching but reward validation task did not return on time");
                    }
                    str = IVideoEventLogger.FEATURE_KEY_NETWORK_TIMEOUT;
                    i10 = AppLovinErrorCodes.INCENTIVIZED_SERVER_TIMEOUT;
                } else {
                    if (str == null) {
                        str = "unknown_early_dismissal_source";
                    }
                    h2.this.f8018b.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O2 = h2.this.f8018b.O();
                        O2.b("IncentivizedAdController", "Ad closed prematurely from source: " + str);
                    }
                    i10 = AppLovinErrorCodes.INCENTIVIZED_USER_CLOSED_VIDEO;
                }
                bVar.a(l4.a(str));
                h2.this.f8018b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    h2.this.f8018b.O().a("IncentivizedAdController", "Notifying listener of reward validation failure");
                }
                q2.a(this.f8034e, bVar, i10);
                HashMap<String, String> hashMap = CollectionUtils.hashMap("details", String.valueOf(h2.this.f8026j));
                CollectionUtils.putStringIfValid("source", str, hashMap);
                h2.this.f8018b.g().a(c2.f7674w, bVar, hashMap);
            }
            if (bVar.L0().getAndSet(true)) {
                return;
            }
            h2.this.f8018b.O();
            if (com.applovin.impl.sdk.o.a()) {
                h2.this.f8018b.O().a("IncentivizedAdController", "Scheduling report rewarded ad...");
            }
            h2.this.f8018b.r0().a((g5) new k6(bVar, h2.this.f8018b), b6.b.OTHER);
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            q2.a(this.f8032c, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            q2.a(this.f8031b, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            AppLovinAd appLovinAd2;
            String str;
            if (appLovinAd instanceof com.applovin.impl.sdk.ad.c) {
                appLovinAd2 = ((com.applovin.impl.sdk.ad.c) appLovinAd).f();
            } else {
                appLovinAd2 = appLovinAd;
            }
            if (appLovinAd2 instanceof com.applovin.impl.sdk.ad.b) {
                com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) appLovinAd2;
                a(bVar, a(bVar, false));
            } else {
                if (appLovinAd2 == null) {
                    str = "null/expired ad";
                } else {
                    str = "invalid ad of type: " + appLovinAd2;
                }
                h2.this.f8018b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    h2.this.f8018b.O().b("IncentivizedAdController", "Received `adHidden` callback for " + str);
                }
            }
            h2.this.a(appLovinAd2);
            h2.this.f8018b.O();
            if (com.applovin.impl.sdk.o.a()) {
                h2.this.f8018b.O().a("IncentivizedAdController", "Notifying listener of rewarded ad dismissal");
            }
            q2.b(this.f8031b, appLovinAd);
        }

        @Override // com.applovin.impl.k2
        public void onAdDisplayFailed(String str) {
            String str2;
            String str3;
            AppLovinAd appLovinAd = this.f8030a;
            if (appLovinAd instanceof com.applovin.impl.sdk.ad.c) {
                appLovinAd = ((com.applovin.impl.sdk.ad.c) appLovinAd).f();
            }
            boolean z10 = this.f8031b instanceof k2;
            if (appLovinAd instanceof com.applovin.impl.sdk.ad.b) {
                com.applovin.impl.sdk.ad.b bVar = appLovinAd;
                a(bVar, a(bVar, StringUtils.isValidString(str)));
            } else {
                if (appLovinAd == null) {
                    str2 = "null/expired ad";
                } else {
                    str2 = "invalid ad of type: " + appLovinAd;
                }
                h2.this.f8018b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = h2.this.f8018b.O();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Received `");
                    if (z10) {
                        str3 = "adDisplayFailed";
                    } else {
                        str3 = "adHidden";
                    }
                    sb2.append(str3);
                    sb2.append("` callback for ");
                    sb2.append(str2);
                    O.b("IncentivizedAdController", sb2.toString());
                }
            }
            h2.this.a(appLovinAd);
            if (z10) {
                q2.a(this.f8031b, str);
            } else {
                q2.b(this.f8031b, this.f8030a);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userOverQuota(AppLovinAd appLovinAd, Map map) {
            h2.this.a("quota_exceeded");
            q2.b(this.f8034e, appLovinAd, map);
            h2.this.f8018b.g().a(c2.f7672v, (com.applovin.impl.sdk.ad.b) appLovinAd, CollectionUtils.hashMap("error_message", "quota_exceeded"));
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardRejected(AppLovinAd appLovinAd, Map map) {
            h2.this.a("rejected");
            q2.a(this.f8034e, appLovinAd, map);
            h2.this.f8018b.g().a(c2.f7672v, (com.applovin.impl.sdk.ad.b) appLovinAd, CollectionUtils.hashMap("error_message", "rejected"));
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardVerified(AppLovinAd appLovinAd, Map map) {
            h2.this.a("accepted");
            q2.c(this.f8034e, appLovinAd, map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void validationRequestFailed(AppLovinAd appLovinAd, int i10) {
            h2.this.a(IVideoEventLogger.FEATURE_KEY_NETWORK_TIMEOUT);
            q2.a(this.f8034e, appLovinAd, i10);
            h2.this.f8018b.g().a(c2.f7672v, (com.applovin.impl.sdk.ad.b) appLovinAd, CollectionUtils.hashMap("error_message", IVideoEventLogger.FEATURE_KEY_NETWORK_TIMEOUT));
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            q2.a(this.f8033d, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d10, boolean z10) {
            AppLovinAd appLovinAd2;
            boolean z11;
            if (appLovinAd instanceof com.applovin.impl.sdk.ad.c) {
                appLovinAd2 = ((com.applovin.impl.sdk.ad.c) appLovinAd).f();
            } else {
                appLovinAd2 = appLovinAd;
            }
            boolean z12 = false;
            if ((appLovinAd2 instanceof com.applovin.impl.sdk.ad.b) && ((com.applovin.impl.sdk.ad.b) appLovinAd2).S0()) {
                z11 = true;
            } else {
                z11 = false;
            }
            h2 h2Var = h2.this;
            if (z11) {
                d10 = 100.0d;
            }
            h2Var.f8026j = d10;
            h2 h2Var2 = h2.this;
            if (z10 || z11) {
                z12 = true;
            }
            h2Var2.f8025i = z12;
            q2.a(this.f8033d, appLovinAd, h2.this.f8026j, h2.this.f8025i);
        }

        private c(AppLovinAd appLovinAd, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
            this.f8030a = appLovinAd;
            this.f8031b = appLovinAdDisplayListener;
            this.f8032c = appLovinAdClickListener;
            this.f8033d = appLovinAdVideoPlaybackListener;
            this.f8034e = appLovinAdRewardListener;
        }

        private String a(com.applovin.impl.sdk.ad.b bVar, boolean z10) {
            if (StringUtils.isValidString(bVar.F())) {
                return bVar.F();
            }
            if (z10) {
                return "ad_display_failure";
            }
            return null;
        }
    }

    public h2(String str, AppLovinSdk appLovinSdk) {
        this.f8018b = appLovinSdk.a();
        this.f8019c = (AppLovinAdServiceImpl) appLovinSdk.getAdService();
        this.f8021e = str;
    }

    private void e() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        SoftReference softReference = this.f8022f;
        if (softReference != null && (appLovinAdLoadListener = (AppLovinAdLoadListener) softReference.get()) != null) {
            appLovinAdLoadListener.failedToReceiveAd(AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED);
        }
    }

    public boolean d() {
        if (this.f8020d != null) {
            return true;
        }
        return false;
    }

    public String c() {
        return this.f8021e;
    }

    public void b(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f8018b.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f8018b.O().a("IncentivizedAdController", "User requested preload of incentivized ad...");
        }
        this.f8022f = new SoftReference(appLovinAdLoadListener);
        if (d()) {
            com.applovin.impl.sdk.o.h("IncentivizedAdController", "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden).");
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.adReceived(this.f8020d);
                return;
            }
            return;
        }
        a(new b(appLovinAdLoadListener));
    }

    private void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f8019c.loadNextIncentivizedAd(this.f8021e, appLovinAdLoadListener);
    }

    private void a(AppLovinAd appLovinAd, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdImpl appLovinAdImpl;
        if (appLovinAd != null) {
            appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        } else {
            appLovinAdImpl = (AppLovinAdImpl) this.f8020d;
        }
        AppLovinAdImpl appLovinAdImpl2 = appLovinAdImpl;
        if (appLovinAdImpl2 != null) {
            a(appLovinAdImpl2, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
            return;
        }
        com.applovin.impl.sdk.o.h("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
        e();
    }

    public void b(AppLovinAd appLovinAd, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (appLovinAdRewardListener == null) {
            appLovinAdRewardListener = a();
        }
        a(appLovinAd, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }

    public void b(AppLovinAd appLovinAd, ViewGroup viewGroup, Lifecycle lifecycle, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        a(appLovinAd, viewGroup, lifecycle, context, appLovinAdRewardListener == null ? a() : appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }

    private void a(AppLovinAd appLovinAd, ViewGroup viewGroup, Lifecycle lifecycle, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdImpl appLovinAdImpl;
        if (appLovinAd != null) {
            appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        } else {
            appLovinAdImpl = (AppLovinAdImpl) this.f8020d;
        }
        if (appLovinAdImpl != null) {
            a(appLovinAdImpl, viewGroup, lifecycle, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
            return;
        }
        com.applovin.impl.sdk.o.h("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b() {
        String str;
        synchronized (this.f8023g) {
            str = this.f8024h;
        }
        return str;
    }

    private void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdRewardListener appLovinAdRewardListener) {
        this.f8018b.r0().a((g5) new q6(bVar, appLovinAdRewardListener, this.f8018b), b6.b.OTHER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        synchronized (this.f8023g) {
            this.f8024h = str;
        }
    }

    public void a(String str, Object obj) {
        this.f8017a.put(str, obj);
    }

    private void a(AppLovinAdImpl appLovinAdImpl, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        Map a10 = e2.a(appLovinAdImpl);
        CollectionUtils.putStringIfValid("source", "showRewardedAd", a10);
        this.f8018b.g().d(c2.f7660p, a10);
        c cVar = new c(this, appLovinAdImpl, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener, null);
        AppLovinAd a11 = k7.a(appLovinAdImpl, this.f8018b);
        String a12 = a(a11, appLovinAdImpl);
        if (StringUtils.isValidString(a12)) {
            a(appLovinAdImpl, a12, cVar, cVar);
            return;
        }
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.f8018b.z0(), context);
        for (String str : this.f8017a.keySet()) {
            create.setExtraInfo(str, this.f8017a.get(str));
        }
        create.setAdDisplayListener(cVar);
        create.setAdVideoPlaybackListener(cVar);
        create.setAdClickListener(cVar);
        create.showAndRender(a11);
        a((com.applovin.impl.sdk.ad.b) a11, cVar);
    }

    private void a(AppLovinAdImpl appLovinAdImpl, ViewGroup viewGroup, Lifecycle lifecycle, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        Map a10 = e2.a(appLovinAdImpl);
        CollectionUtils.putStringIfValid("source", "showRewardedAdView", a10);
        this.f8018b.g().d(c2.f7660p, a10);
        c cVar = new c(this, appLovinAdImpl, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener, null);
        AppLovinAd a11 = k7.a(appLovinAdImpl, this.f8018b);
        String a12 = a(a11, appLovinAdImpl);
        if (StringUtils.isValidString(a12)) {
            a(appLovinAdImpl, a12, cVar, cVar);
            return;
        }
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.f8018b.z0(), context);
        for (String str : this.f8017a.keySet()) {
            create.setExtraInfo(str, this.f8017a.get(str));
        }
        create.setAdDisplayListener(cVar);
        create.setAdVideoPlaybackListener(cVar);
        create.setAdClickListener(cVar);
        create.showAndRender(a11, viewGroup, lifecycle);
        a((com.applovin.impl.sdk.ad.b) a11, cVar);
    }

    private String a(AppLovinAd appLovinAd, AppLovinAd appLovinAd2) {
        if (appLovinAd == null) {
            com.applovin.impl.sdk.o.h("IncentivizedAdController", "Unable to retrieve the loaded ad. This can occur when attempting to show an expired ad.: " + appLovinAd2);
            return "Unable to retrieve the loaded ad. This can occur when attempting to show an expired ad.";
        } else if (appLovinAd2.getType() != AppLovinAdType.INCENTIVIZED) {
            com.applovin.impl.sdk.o.h("IncentivizedAdController", "Attempting to display ad with invalid ad type: " + appLovinAd2.getType());
            return "Attempting to display ad with invalid ad type";
        } else {
            return null;
        }
    }

    private void a(AppLovinAd appLovinAd, String str, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, k2 k2Var) {
        q2.a(appLovinAdVideoPlaybackListener, appLovinAd, 0.0d, false);
        q2.a(k2Var, str);
        Map a10 = e2.a((AppLovinAdImpl) appLovinAd);
        CollectionUtils.putStringIfValid("source", "rewardedAdShowFailed", a10);
        CollectionUtils.putStringIfValid("error_message", str, a10);
        this.f8018b.g().d(c2.f7666s, a10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinAd appLovinAd) {
        AppLovinAd appLovinAd2 = this.f8020d;
        if (appLovinAd2 == null) {
            return;
        }
        if (!(appLovinAd2 instanceof com.applovin.impl.sdk.ad.c)) {
            if (appLovinAd == appLovinAd2) {
                this.f8020d = null;
                return;
            }
            return;
        }
        com.applovin.impl.sdk.ad.c cVar = (com.applovin.impl.sdk.ad.c) appLovinAd2;
        if (cVar.f() == null || appLovinAd == cVar.f()) {
            this.f8020d = null;
        }
    }

    private AppLovinAdRewardListener a() {
        return new a();
    }
}
