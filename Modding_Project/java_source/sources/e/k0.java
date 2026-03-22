package e;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import ca.f;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.hades.aar.admanager.activity.FullScreenAdActivity;
import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.hades.aar.admanager.core.AdFormat;
import com.hades.aar.admanager.view.nativead.AdmobNativeAdView;
import com.hades.aar.admanager.view.nativead.DetachableContainer;
import java.lang.ref.WeakReference;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import p000admanager.d.n0;
import p000admanager.d.o0;
/* loaded from: classes.dex */
public final class k0 implements d.g {

    /* renamed from: a  reason: collision with root package name */
    public final t f50658a;

    /* renamed from: b  reason: collision with root package name */
    public final ms.i f50659b;

    public k0(t adLoader) {
        Intrinsics.checkNotNullParameter(adLoader, "adLoader");
        this.f50658a = adLoader;
        this.f50659b = kotlin.c.b(new p000admanager.d.k0(this));
    }

    public static final void i(AdView adView) {
        adView.resume();
    }

    public static final void j(k0 k0Var, ca.d dVar, ca.f fVar, AdValue p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        String valueOf = String.valueOf(p02.getPrecisionType());
        long valueMicros = p02.getValueMicros();
        String currencyCode = p02.getCurrencyCode();
        Intrinsics.checkNotNullExpressionValue(currencyCode, "p0.currencyCode");
        ((d.a) k0Var.f50659b.getValue()).d(dVar, fVar, new ca.h(valueOf, valueMicros, currencyCode));
    }

    public static final void k(Ref.BooleanRef booleanRef, RewardItem it) {
        Intrinsics.checkNotNullParameter(it, "it");
        ga.a.f52235a.d("AdManagerAdmobShower", "AdmobRewardVideoAd -> onUserEarnedReward");
        booleanRef.element = true;
    }

    public static final void l(k0 k0Var, ca.d dVar, ca.f fVar, AdValue it) {
        Intrinsics.checkNotNullParameter(it, "it");
        String valueOf = String.valueOf(it.getPrecisionType());
        long valueMicros = it.getValueMicros();
        String currencyCode = it.getCurrencyCode();
        Intrinsics.checkNotNullExpressionValue(currencyCode, "it.currencyCode");
        ((d.a) k0Var.f50659b.getValue()).d(dVar, fVar, new ca.h(valueOf, valueMicros, currencyCode));
    }

    public static final void m(k0 k0Var, ca.d dVar, ca.f fVar, AdValue p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        String valueOf = String.valueOf(p02.getPrecisionType());
        long valueMicros = p02.getValueMicros();
        String currencyCode = p02.getCurrencyCode();
        Intrinsics.checkNotNullExpressionValue(currencyCode, "p0.currencyCode");
        ((d.a) k0Var.f50659b.getValue()).d(dVar, fVar, new ca.h(valueOf, valueMicros, currencyCode));
    }

    public static final void n(k0 k0Var, ca.d dVar, ca.f fVar, AdValue p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        String valueOf = String.valueOf(p02.getPrecisionType());
        long valueMicros = p02.getValueMicros();
        String currencyCode = p02.getCurrencyCode();
        Intrinsics.checkNotNullExpressionValue(currencyCode, "p0.currencyCode");
        ((d.a) k0Var.f50659b.getValue()).d(dVar, fVar, new ca.h(valueOf, valueMicros, currencyCode));
    }

    public static final void o(k0 k0Var, ca.d dVar, ca.f fVar, AdValue p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        String valueOf = String.valueOf(p02.getPrecisionType());
        long valueMicros = p02.getValueMicros();
        String currencyCode = p02.getCurrencyCode();
        Intrinsics.checkNotNullExpressionValue(currencyCode, "p0.currencyCode");
        ((d.a) k0Var.f50659b.getValue()).d(dVar, fVar, new ca.h(valueOf, valueMicros, currencyCode));
    }

    @Override // d.g
    public final void a(final ca.d adInfo, final ca.f adRequestParam) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        InterstitialAd interstitialAd = (InterstitialAd) g(adInfo, InterstitialAd.class, adRequestParam);
        if (interstitialAd == null) {
            return;
        }
        ((d.a) this.f50659b.getValue()).getClass();
        Activity a10 = d.a.a(adInfo, adRequestParam);
        if (a10 == null) {
            return;
        }
        interstitialAd.setOnPaidEventListener(new OnPaidEventListener() { // from class: e.i0
            @Override // com.google.android.gms.ads.OnPaidEventListener
            public final void onPaidEvent(AdValue adValue) {
                k0.m(k0.this, adInfo, adRequestParam, adValue);
            }
        });
        interstitialAd.setFullScreenContentCallback(new u(this, adInfo, adRequestParam, interstitialAd));
        interstitialAd.show(a10);
    }

    @Override // d.g
    public final void b(final ca.d adInfo, final ca.f adRequestParam) {
        ViewGroup parent;
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        final AdView adView = (AdView) g(adInfo, AdView.class, adRequestParam);
        if (adView == null) {
            return;
        }
        ((d.a) this.f50659b.getValue()).getClass();
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        WeakReference<ViewGroup> c10 = adRequestParam.c();
        if (c10 != null) {
            parent = c10.get();
        } else {
            parent = null;
        }
        if (parent == null) {
            ga.a.f52235a.c("AdManagerAdmobShower", "showBannerAd -> container is null");
            h(adInfo);
            ((d.a) this.f50659b.getValue()).getClass();
            d.a.f(adInfo, "container is null", adRequestParam);
            return;
        }
        adView.setOnPaidEventListener(new OnPaidEventListener() { // from class: e.d0
            @Override // com.google.android.gms.ads.OnPaidEventListener
            public final void onPaidEvent(AdValue adValue) {
                k0.l(k0.this, adInfo, adRequestParam, adValue);
            }
        });
        adView.setAdListener(new q(this, adInfo, adRequestParam, adView));
        n0 onDetachedFromParent = n0.f482d;
        o0 onVisibleChange = new o0(adView);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(onDetachedFromParent, "onDetachedFromParent");
        Intrinsics.checkNotNullParameter(onVisibleChange, "onVisibleChange");
        if (parent.getChildCount() > 0) {
            int childCount = parent.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = parent.getChildAt(i10);
                if (childAt instanceof AdmobNativeAdView) {
                    ((AdmobNativeAdView) childAt).b();
                }
            }
            parent.removeAllViews();
        }
        Context context = parent.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "parent.context");
        DetachableContainer detachableContainer = new DetachableContainer(context, null, 0, 6, null);
        detachableContainer.setOnDetachFromParent(new p000admanager.c.l(onDetachedFromParent));
        detachableContainer.setOnVisibilityChangeListener(new p000admanager.c.m(onVisibleChange));
        parent.addView(detachableContainer);
        d.d.c(detachableContainer);
        detachableContainer.b(adView);
        try {
            detachableContainer.post(new Runnable() { // from class: e.e0
                @Override // java.lang.Runnable
                public final void run() {
                    k0.i(AdView.this);
                }
            });
        } catch (Exception unused) {
            ga.a.f52235a.c("AdManagerAdmobShower", "showBannerAd -> resume error");
        }
    }

    @Override // d.g
    public final void c(final ca.d adInfo, final ca.f adRequestParam) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        AppOpenAd appOpenAd = (AppOpenAd) g(adInfo, AppOpenAd.class, adRequestParam);
        if (appOpenAd == null) {
            return;
        }
        ((d.a) this.f50659b.getValue()).getClass();
        Activity a10 = d.a.a(adInfo, adRequestParam);
        if (a10 == null) {
            return;
        }
        appOpenAd.setOnPaidEventListener(new OnPaidEventListener() { // from class: e.j0
            @Override // com.google.android.gms.ads.OnPaidEventListener
            public final void onPaidEvent(AdValue adValue) {
                k0.j(k0.this, adInfo, adRequestParam, adValue);
            }
        });
        appOpenAd.setFullScreenContentCallback(new p(this, adInfo, adRequestParam, appOpenAd));
        appOpenAd.show(a10);
    }

    @Override // d.g
    public final void d(ca.d adInfo, ca.f adRequestParam) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        f.e n10 = adRequestParam.n();
        if (n10 != null) {
            n10.a(adInfo, "not support");
        }
        ga.a.f52235a.c("AdManagerAdmobShower", "showMediaVideoAd -> not support");
    }

    @Override // d.g
    public final void e(final ca.d adInfo, final ca.f adRequestParam) {
        ViewGroup viewGroup;
        int i10;
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        NativeAd nativeAd = (NativeAd) g(adInfo, NativeAd.class, adRequestParam);
        if (nativeAd == null) {
            return;
        }
        ((d.a) this.f50659b.getValue()).getClass();
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        WeakReference<ViewGroup> c10 = adRequestParam.c();
        if (c10 != null) {
            viewGroup = c10.get();
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            ((d.a) this.f50659b.getValue()).getClass();
            Activity context = d.a.a(adInfo, adRequestParam);
            if (context == null) {
                return;
            }
            ConcurrentHashMap concurrentHashMap = FullScreenAdActivity.f21715f;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            Intrinsics.checkNotNullParameter(adRequestParam, "param");
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
            ga.a.f52235a.d("AdManagerFullScreenAdActivity", "show -> id=" + uuid + ", info=" + adInfo);
            FullScreenAdActivity.f21715f.put(uuid, new Pair(adInfo, adRequestParam));
            Intent intent = new Intent(context, FullScreenAdActivity.class);
            intent.putExtra("extra_ad_show_id", uuid);
            context.startActivity(intent);
            return;
        }
        nativeAd.setOnPaidEventListener(new OnPaidEventListener() { // from class: e.f0
            @Override // com.google.android.gms.ads.OnPaidEventListener
            public final void onPaidEvent(AdValue adValue) {
                k0.n(k0.this, adInfo, adRequestParam, adValue);
            }
        });
        Context context2 = viewGroup.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "adContainer.context");
        AdAggregatedSdk aggregatedSdk = adInfo.d();
        ((d.a) this.f50659b.getValue()).getClass();
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        Intrinsics.checkNotNullParameter(aggregatedSdk, "aggregatedSdk");
        Integer e10 = adRequestParam.e();
        if (e10 != null) {
            i10 = e10.intValue();
        } else if (aggregatedSdk == AdAggregatedSdk.ADMOB) {
            i10 = ba.b.f2587c;
        } else {
            i10 = ba.b.f2588d;
        }
        AdmobNativeAdView admobNativeAdView = new AdmobNativeAdView(context2, i10);
        admobNativeAdView.setId(ba.a.f2574b);
        admobNativeAdView.setMOnDestroyListener(new y(adInfo, this, adRequestParam));
        admobNativeAdView.setMVideoLifecycleCallbacks(new a0(adInfo, adRequestParam));
        this.f50658a.h(adInfo.i(), new w(this, adRequestParam));
        if (viewGroup.getChildCount() > 0) {
            int childCount = viewGroup.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = viewGroup.getChildAt(i11);
                if (childAt instanceof AdmobNativeAdView) {
                    ((AdmobNativeAdView) childAt).b();
                }
            }
            viewGroup.removeAllViews();
        }
        viewGroup.addView(admobNativeAdView);
        d.d.c(admobNativeAdView);
        AdmobNativeAdView.setNativeAd$default(admobNativeAdView, nativeAd, null, adRequestParam.k(), 2, null);
    }

    @Override // d.g
    public final void f(final ca.d adInfo, final ca.f adRequestParam) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        RewardedAd rewardedAd = (RewardedAd) g(adInfo, RewardedAd.class, adRequestParam);
        if (rewardedAd == null) {
            return;
        }
        ((d.a) this.f50659b.getValue()).getClass();
        Activity a10 = d.a.a(adInfo, adRequestParam);
        if (a10 == null) {
            return;
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        rewardedAd.setOnPaidEventListener(new OnPaidEventListener() { // from class: e.g0
            @Override // com.google.android.gms.ads.OnPaidEventListener
            public final void onPaidEvent(AdValue adValue) {
                k0.o(k0.this, adInfo, adRequestParam, adValue);
            }
        });
        rewardedAd.setFullScreenContentCallback(new b0(this, adInfo, adRequestParam, rewardedAd, booleanRef));
        if (ca.k.f3414a.i(AdFormat.REWARDED_VIDEO)) {
            ga.a.f52235a.d("AdManagerAdmobShower", "AdmobRewardVideoAd -> onUserEarnedReward");
            booleanRef.element = true;
            return;
        }
        rewardedAd.show(a10, new OnUserEarnedRewardListener() { // from class: e.h0
            @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
            public final void onUserEarnedReward(RewardItem rewardItem) {
                k0.k(Ref.BooleanRef.this, rewardItem);
            }
        });
    }

    public final Object g(ca.d dVar, Class cls, ca.f fVar) {
        if (cls.isInstance(dVar.m())) {
            return cls.cast(dVar.m());
        }
        h(dVar);
        ((d.a) this.f50659b.getValue()).getClass();
        d.a.f(dVar, "realAd is null", fVar);
        return null;
    }

    public final void h(ca.d dVar) {
        ga.a aVar = ga.a.f52235a;
        aVar.d("AdManagerAdmobShower", "removeAd from AdCachePools -> adInfo=" + dVar);
        this.f50658a.M(dVar.i());
    }
}
