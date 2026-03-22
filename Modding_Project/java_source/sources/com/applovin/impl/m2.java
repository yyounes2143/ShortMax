package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.adview.AppLovinFullscreenAdViewObserver;
import com.applovin.adview.AppLovinFullscreenImmersiveActivity;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v1;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class m2 implements AppLovinInterstitialAdDialog {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f8445a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference f8446b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f8447c = Collections.synchronizedMap(new HashMap());

    /* renamed from: d  reason: collision with root package name */
    private volatile AppLovinAdLoadListener f8448d;

    /* renamed from: e  reason: collision with root package name */
    private volatile AppLovinAdDisplayListener f8449e;

    /* renamed from: f  reason: collision with root package name */
    private volatile AppLovinAdVideoPlaybackListener f8450f;

    /* renamed from: g  reason: collision with root package name */
    private volatile AppLovinAdClickListener f8451g;

    /* renamed from: h  reason: collision with root package name */
    private volatile com.applovin.impl.sdk.ad.b f8452h;

    /* loaded from: classes2.dex */
    class a implements AppLovinAdLoadListener {
        a() {
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            m2.this.b(appLovinAd);
            m2.this.showAndRender(appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i10) {
            m2.this.b(i10);
        }
    }

    public m2(AppLovinSdk appLovinSdk, Context context) {
        if (appLovinSdk != null) {
            if (context != null) {
                this.f8445a = appLovinSdk.a();
                this.f8446b = new WeakReference(context);
                return;
            }
            throw new IllegalArgumentException("No context specified");
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    private long g() {
        String str = this.f8445a.o0().getExtraParameters().get("fullscreen_ad_display_delay_enabled");
        if (str != null && !Boolean.parseBoolean(str)) {
            return 0L;
        }
        return Math.max(0L, ((Long) this.f8445a.a(v4.T1)).longValue());
    }

    public Map h() {
        return this.f8447c;
    }

    public boolean i() {
        final com.applovin.impl.sdk.ad.b bVar = this.f8452h;
        if (bVar == null) {
            return false;
        }
        bVar.A0();
        bVar.setHasShown(false);
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.gc
            @Override // java.lang.Runnable
            public final void run() {
                m2.this.b(bVar);
            }
        });
        return true;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.f8451g = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.f8449e = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f8448d = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.f8450f = appLovinAdVideoPlaybackListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setExtraInfo(String str, Object obj) {
        if (str != null) {
            this.f8447c.put(str, obj);
            return;
        }
        throw new IllegalArgumentException("No key specified");
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void show() {
        a(new a());
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd) {
        if (appLovinAd.getType() != AppLovinAdType.INCENTIVIZED) {
            Map a10 = e2.a((AppLovinAdImpl) appLovinAd);
            CollectionUtils.putStringIfValid("source", "showInterstitialAd", a10);
            this.f8445a.g().d(c2.f7660p, a10);
        }
        AppLovinAd a11 = k7.a(appLovinAd, this.f8445a);
        Context e10 = e();
        String a12 = a(a11, appLovinAd, e10);
        if (StringUtils.isValidString(a12)) {
            a("interstitialAdShowFailed", a12, appLovinAd);
        } else if (((Boolean) this.f8445a.a(v4.L5)).booleanValue() && a((com.applovin.impl.sdk.ad.b) a11)) {
        } else {
            a((com.applovin.impl.sdk.ad.b) a11, e10);
        }
    }

    public String toString() {
        return "AppLovinInterstitialAdDialog{}";
    }

    private Context e() {
        return (Context) this.f8446b.get();
    }

    public AppLovinAdDisplayListener c() {
        return this.f8449e;
    }

    public AppLovinAdVideoPlaybackListener d() {
        return this.f8450f;
    }

    public com.applovin.impl.sdk.ad.b f() {
        return this.f8452h;
    }

    public AppLovinAdClickListener b() {
        return this.f8451g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(com.applovin.impl.sdk.ad.b bVar) {
        this.f8445a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f8445a.O().a("InterstitialAdDialogWrapper", "Re-showing the current ad after app launch.");
        }
        showAndRender(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Lifecycle lifecycle, AppLovinAd appLovinAd, ViewGroup viewGroup, Activity activity) {
        a((com.applovin.impl.sdk.ad.b) appLovinAd, viewGroup, new AppLovinFullscreenAdViewObserver(lifecycle, this), activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.applovin.impl.sdk.ad.b bVar, AppLovinAdDisplayListener appLovinAdDisplayListener, String str, Throwable th2, AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver) {
        appLovinFullscreenAdViewObserver.onDestroy();
        a(bVar, appLovinAdDisplayListener, str, th2, (AppLovinFullscreenActivity) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void a(Context context) {
        Intent intent = new Intent(context, this.f8452h.X0() ? AppLovinFullscreenImmersiveActivity.class : AppLovinFullscreenActivity.class);
        intent.putExtra("com.applovin.interstitial.sdk_key", this.f8445a.j0());
        AppLovinFullscreenActivity.parentInterstitialWrapper = this;
        if (this.f8445a.e().a() == null && ((Boolean) this.f8445a.a(v4.f10300m2)).booleanValue()) {
            intent.addFlags(8388608);
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        if (context instanceof Activity) {
            context.startActivity(intent);
            ((Activity) context).overridePendingTransition(0, 0);
        } else {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    protected boolean a(com.applovin.impl.sdk.ad.b bVar) {
        List a10 = k7.a(!bVar.O0(), bVar, this.f8445a, com.applovin.impl.sdk.k.o());
        if (a10.isEmpty()) {
            return false;
        }
        String str = "Missing ad resources: " + a10;
        if (((Boolean) this.f8445a.a(v4.H5)).booleanValue()) {
            com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Failing ad display due to missing resources: " + a10);
            a("missingCachedAdResources", str, bVar);
            HashMap<String, String> hashMap = CollectionUtils.hashMap("error_message", str);
            CollectionUtils.putStringIfValid("details", "Failing ad display", hashMap);
            this.f8445a.E().a(c2.f7681z0, "missingCachedAdResources", hashMap);
            return true;
        }
        com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Streaming ad due to missing ad resources: " + a10);
        bVar.Q0();
        HashMap<String, String> hashMap2 = CollectionUtils.hashMap("error_message", str);
        CollectionUtils.putStringIfValid("details", "Streaming ad", hashMap2);
        this.f8445a.E().a(c2.f7681z0, "missingCachedAdResources", hashMap2);
        return false;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd, final ViewGroup viewGroup, final Lifecycle lifecycle) {
        if (appLovinAd.getType() != AppLovinAdType.INCENTIVIZED) {
            Map a10 = e2.a((AppLovinAdImpl) appLovinAd);
            CollectionUtils.putStringIfValid("source", "showInterstitialAdView", a10);
            this.f8445a.g().d(c2.f7660p, a10);
        }
        if (viewGroup != null && lifecycle != null) {
            final AppLovinAd a11 = k7.a(appLovinAd, this.f8445a);
            final Activity v02 = this.f8445a.v0();
            String a12 = a(a11, appLovinAd, v02);
            if (StringUtils.isValidString(a12)) {
                a("interstitialAdShowFailed", a12, appLovinAd);
                return;
            } else if (((Boolean) this.f8445a.a(v4.L5)).booleanValue() && a((com.applovin.impl.sdk.ad.b) a11)) {
                return;
            } else {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.hc
                    @Override // java.lang.Runnable
                    public final void run() {
                        m2.this.a(lifecycle, a11, viewGroup, v02);
                    }
                });
                return;
            }
        }
        com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Failed to show interstitial: attempting to show ad with null container view or lifecycle object");
        a("interstitialAdShowFailed", "Failed to show interstitial: attempting to show ad with null container view or lifecycle object", appLovinAd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements v1.g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f8454a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AppLovinFullscreenAdViewObserver f8455b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ViewGroup f8456c;

        b(Activity activity, AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver, ViewGroup viewGroup) {
            this.f8454a = activity;
            this.f8455b = appLovinFullscreenAdViewObserver;
            this.f8456c = viewGroup;
        }

        @Override // com.applovin.impl.v1.g
        public void a(v1 v1Var) {
            if (d.d(this.f8454a)) {
                com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Failed to show interstitial: attempting to show ad when parent activity is finishing");
                m2.b(m2.this.f8452h, m2.this.f8449e, "Failed to show interstitial: attempting to show ad when parent activity is finishing", null, this.f8455b);
                HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "invalidActivity");
                CollectionUtils.putStringIfValid("error_message", "Failed to show interstitial: attempting to show ad when parent activity is finishing", hashMap);
                m2.this.f8445a.g().a(c2.f7666s, m2.this.f8452h, hashMap);
                return;
            }
            this.f8455b.setPresenter(v1Var);
            try {
                v1Var.a(this.f8456c);
            } catch (Throwable th2) {
                String str = "Failed to show interstitial: presenter threw exception " + th2;
                com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", str);
                m2.b(m2.this.f8452h, m2.this.f8449e, str, th2, this.f8455b);
                HashMap<String, String> hashMap2 = CollectionUtils.hashMap("source", "presentContainerView");
                CollectionUtils.putStringIfValid("error_message", str, hashMap2);
                CollectionUtils.putStringIfValid("top_main_method", th2.toString(), hashMap2);
                m2.this.f8445a.g().a(c2.f7666s, m2.this.f8452h, hashMap2);
            }
        }

        @Override // com.applovin.impl.v1.g
        public void a(String str, Throwable th2) {
            m2.b(m2.this.f8452h, m2.this.f8449e, str, th2, this.f8455b);
            HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "renderInterstitialAdView");
            CollectionUtils.putStringIfValid("error_message", str, hashMap);
            CollectionUtils.putStringIfValid("top_main_method", th2.toString(), hashMap);
            m2.this.f8445a.g().a(c2.f7666s, m2.this.f8452h, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final AppLovinAd appLovinAd) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.kc
            @Override // java.lang.Runnable
            public final void run() {
                m2.this.a(appLovinAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i10) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.lc
            @Override // java.lang.Runnable
            public final void run() {
                m2.this.a(i10);
            }
        });
    }

    public static void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdDisplayListener appLovinAdDisplayListener, String str, Throwable th2, AppLovinFullscreenActivity appLovinFullscreenActivity) {
        com.applovin.impl.sdk.o.c("InterstitialAdDialogWrapper", str, th2);
        if (appLovinAdDisplayListener instanceof k2) {
            q2.a(appLovinAdDisplayListener, str);
        } else {
            q2.b(appLovinAdDisplayListener, bVar);
        }
        if (appLovinFullscreenActivity != null) {
            appLovinFullscreenActivity.dismiss("failed_to_display_ad");
        }
    }

    public void a() {
        this.f8451g = null;
        this.f8448d = null;
        this.f8450f = null;
        this.f8449e = null;
    }

    private void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f8445a.k().loadNextAd(AppLovinAdSize.INTERSTITIAL, appLovinAdLoadListener);
    }

    private String a(AppLovinAd appLovinAd, AppLovinAd appLovinAd2, Context context) {
        if (context == null) {
            com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Failed to show interstitial: stale activity reference provided");
            return "Failed to show interstitial: stale activity reference provided";
        } else if (appLovinAd == null) {
            com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Unable to retrieve the loaded ad: " + appLovinAd2);
            return "Unable to retrieve the loaded ad";
        } else if (((AppLovinAdImpl) appLovinAd).hasShown() && ((Boolean) this.f8445a.a(v4.G1)).booleanValue()) {
            com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Attempting to show ad again: " + appLovinAd);
            return "Attempting to show ad again";
        } else {
            return null;
        }
    }

    private void a(com.applovin.impl.sdk.ad.b bVar, final Context context) {
        this.f8445a.f().a(bVar);
        this.f8452h = bVar;
        long g10 = g();
        this.f8445a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f8445a.O();
            O.a("InterstitialAdDialogWrapper", "Presenting ad with delay " + g10 + "ms...");
        }
        if (((Boolean) this.f8445a.a(v4.W0)).booleanValue()) {
            this.f8445a.h().a(this.f8452h);
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.applovin.impl.jc
            @Override // java.lang.Runnable
            public final void run() {
                m2.this.a(context);
            }
        }, g10);
    }

    private void a(com.applovin.impl.sdk.ad.b bVar, final ViewGroup viewGroup, final AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver, final Activity activity) {
        this.f8445a.f().a(bVar);
        this.f8452h = bVar;
        long g10 = g();
        this.f8445a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f8445a.O();
            O.a("InterstitialAdDialogWrapper", "Presenting ad with delay " + g10 + "ms...");
        }
        if (((Boolean) this.f8445a.a(v4.W0)).booleanValue()) {
            this.f8445a.h().a(this.f8452h);
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.applovin.impl.ic
            @Override // java.lang.Runnable
            public final void run() {
                m2.this.a(viewGroup, activity, appLovinFullscreenAdViewObserver);
            }
        }, g10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ViewGroup viewGroup, Activity activity, AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver) {
        this.f8445a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f8445a.O();
            O.a("InterstitialAdDialogWrapper", "Presenting ad in a containerView(" + viewGroup + ")");
        }
        viewGroup.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        v1.a(this.f8452h, this.f8451g, this.f8449e, this.f8450f, this.f8447c, this.f8445a, activity, new b(activity, appLovinFullscreenAdViewObserver, viewGroup));
    }

    private void a(String str, String str2, AppLovinAd appLovinAd) {
        if (this.f8449e != null) {
            if (this.f8449e instanceof k2) {
                ((k2) this.f8449e).onAdDisplayFailed(str2);
            } else {
                this.f8449e.adHidden(appLovinAd);
            }
        }
        Map a10 = e2.a((AppLovinAdImpl) appLovinAd);
        CollectionUtils.putStringIfValid("source", str, a10);
        CollectionUtils.putStringIfValid("error_message", str2, a10);
        this.f8445a.g().d(c2.f7666s, a10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAd appLovinAd) {
        if (this.f8448d != null) {
            this.f8448d.adReceived(appLovinAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i10) {
        if (this.f8448d != null) {
            this.f8448d.failedToReceiveAd(i10);
        }
    }
}
