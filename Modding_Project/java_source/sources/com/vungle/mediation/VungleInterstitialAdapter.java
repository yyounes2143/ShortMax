package com.vungle.mediation;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.ads.mediation.vungle.VungleInitializer;
import com.google.ads.mediation.vungle.VungleMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.vungle.ads.AdConfig;
import com.vungle.ads.BannerAdListener;
import com.vungle.ads.BaseAd;
import com.vungle.ads.InterstitialAd;
import com.vungle.ads.InterstitialAdListener;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleBannerView;
import com.vungle.ads.VungleError;
@Keep
/* loaded from: classes7.dex */
public class VungleInterstitialAdapter extends VungleMediationAdapter implements MediationInterstitialAdapter, MediationBannerAdapter {
    private VungleBannerView bannerAdView;
    private InterstitialAd interstitialAd;
    private MediationBannerListener mediationBannerListener;
    private MediationInterstitialListener mediationInterstitialListener;

    /* loaded from: classes7.dex */
    class a implements VungleInitializer.VungleInitializationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f49663a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f49664b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AdConfig f49665c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ MediationInterstitialListener f49666d;

        a(Context context, String str, AdConfig adConfig, MediationInterstitialListener mediationInterstitialListener) {
            this.f49663a = context;
            this.f49664b = str;
            this.f49665c = adConfig;
            this.f49666d = mediationInterstitialListener;
        }

        @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
        public void onInitializeError(AdError adError) {
            this.f49666d.onAdFailedToLoad(VungleInterstitialAdapter.this, adError);
            Log.w(VungleMediationAdapter.TAG, adError.toString());
        }

        @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
        public void onInitializeSuccess() {
            VungleInterstitialAdapter.this.interstitialAd = new InterstitialAd(this.f49663a, this.f49664b, this.f49665c);
            VungleInterstitialAdapter.this.interstitialAd.setAdListener(new d());
            VungleInterstitialAdapter.this.interstitialAd.load(null);
        }
    }

    /* loaded from: classes7.dex */
    class b implements VungleInitializer.VungleInitializationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f49668a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f49669b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ VungleAdSize f49670c;

        b(Context context, String str, VungleAdSize vungleAdSize) {
            this.f49668a = context;
            this.f49669b = str;
            this.f49670c = vungleAdSize;
        }

        @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
        public void onInitializeError(AdError adError) {
            Log.w(VungleMediationAdapter.TAG, adError.toString());
            if (VungleInterstitialAdapter.this.mediationBannerListener != null) {
                VungleInterstitialAdapter.this.mediationBannerListener.onAdFailedToLoad(VungleInterstitialAdapter.this, adError);
            }
        }

        @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
        public void onInitializeSuccess() {
            VungleInterstitialAdapter.this.bannerAdView = new VungleBannerView(this.f49668a, this.f49669b, this.f49670c);
            VungleInterstitialAdapter.this.bannerAdView.setAdListener(new c());
            VungleInterstitialAdapter.this.bannerAdView.load(null);
        }
    }

    /* loaded from: classes7.dex */
    private class c implements BannerAdListener {
        @Override // com.vungle.ads.BaseAdListener
        public void onAdClicked(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationBannerListener != null) {
                VungleInterstitialAdapter.this.mediationBannerListener.onAdClicked(VungleInterstitialAdapter.this);
                VungleInterstitialAdapter.this.mediationBannerListener.onAdOpened(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdFailedToLoad(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
            AdError adError = VungleMediationAdapter.getAdError(vungleError);
            Log.w(VungleMediationAdapter.TAG, adError.toString());
            if (VungleInterstitialAdapter.this.mediationBannerListener != null) {
                VungleInterstitialAdapter.this.mediationBannerListener.onAdFailedToLoad(VungleInterstitialAdapter.this, adError);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdFailedToPlay(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
            Log.w(VungleMediationAdapter.TAG, VungleMediationAdapter.getAdError(vungleError).toString());
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdLeftApplication(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationBannerListener != null) {
                VungleInterstitialAdapter.this.mediationBannerListener.onAdLeftApplication(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdLoaded(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationBannerListener != null) {
                VungleInterstitialAdapter.this.mediationBannerListener.onAdLoaded(VungleInterstitialAdapter.this);
            }
        }

        private c() {
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdEnd(@NonNull BaseAd baseAd) {
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdImpression(@NonNull BaseAd baseAd) {
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdStart(@NonNull BaseAd baseAd) {
        }
    }

    /* loaded from: classes7.dex */
    private class d implements InterstitialAdListener {
        @Override // com.vungle.ads.BaseAdListener
        public void onAdClicked(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdClicked(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdEnd(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdClosed(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdFailedToLoad(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
            AdError adError = VungleMediationAdapter.getAdError(vungleError);
            Log.w(VungleMediationAdapter.TAG, adError.toString());
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdFailedToLoad(VungleInterstitialAdapter.this, adError);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdFailedToPlay(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
            Log.w(VungleMediationAdapter.TAG, VungleMediationAdapter.getAdError(vungleError).toString());
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdLeftApplication(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdLeftApplication(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdLoaded(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdLoaded(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdStart(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdOpened(VungleInterstitialAdapter.this);
            }
        }

        private d() {
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdImpression(@NonNull BaseAd baseAd) {
        }
    }

    @NonNull
    public static VungleAdSize getVungleBannerAdSizeFromGoogleAdSize(AdSize adSize, String str) {
        VungleAdSize validAdSizeFromSize = VungleAdSize.getValidAdSizeFromSize(adSize.getWidth(), adSize.getHeight(), str);
        String str2 = VungleMediationAdapter.TAG;
        Log.d(str2, "The requested ad size: " + adSize + "; placementId=" + str + "; vngAdSize=" + validAdSizeFromSize);
        return validAdSizeFromSize;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    @NonNull
    public View getBannerView() {
        String str = VungleMediationAdapter.TAG;
        Log.d(str, "getBannerView # instance: " + hashCode());
        return this.bannerAdView;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        String str = VungleMediationAdapter.TAG;
        Log.d(str, "onDestroy: " + hashCode());
        VungleBannerView vungleBannerView = this.bannerAdView;
        if (vungleBannerView != null) {
            vungleBannerView.finishAd();
            this.bannerAdView = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(@NonNull Context context, @NonNull MediationBannerListener mediationBannerListener, @NonNull Bundle bundle, @NonNull AdSize adSize, @NonNull MediationAdRequest mediationAdRequest, @Nullable Bundle bundle2) {
        this.mediationBannerListener = mediationBannerListener;
        String string = bundle.getString("appid");
        if (TextUtils.isEmpty(string)) {
            AdError adError = new AdError(101, "Failed to load waterfall banner ad from Liftoff Monetize. Missing or invalid App ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.w(VungleMediationAdapter.TAG, adError.toString());
            mediationBannerListener.onAdFailedToLoad(this, adError);
            return;
        }
        VungleInitializer.getInstance().updateCoppaStatus(mediationAdRequest.taggedForChildDirectedTreatment());
        String string2 = bundle.getString(VungleConstants.KEY_PLACEMENT_ID);
        if (TextUtils.isEmpty(string2)) {
            AdError adError2 = new AdError(101, "Failed to load waterfall banner ad from Liftoff Monetize. Missing or invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.w(VungleMediationAdapter.TAG, adError2.toString());
            mediationBannerListener.onAdFailedToLoad(this, adError2);
            return;
        }
        VungleAdSize vungleBannerAdSizeFromGoogleAdSize = getVungleBannerAdSizeFromGoogleAdSize(adSize, string2);
        String str = VungleMediationAdapter.TAG;
        Log.d(str, "requestBannerAd for Placement: " + string2 + " ### Adapter instance: " + hashCode());
        VungleInitializer.getInstance().initialize(string, context, new b(context, string2, vungleBannerAdSizeFromGoogleAdSize));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(@NonNull Context context, @NonNull MediationInterstitialListener mediationInterstitialListener, @NonNull Bundle bundle, @NonNull MediationAdRequest mediationAdRequest, @Nullable Bundle bundle2) {
        this.mediationInterstitialListener = mediationInterstitialListener;
        String string = bundle.getString("appid");
        if (TextUtils.isEmpty(string)) {
            AdError adError = new AdError(101, "Failed to load waterfall interstitial ad from Liftoff Monetize. Missing or invalid App ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.w(VungleMediationAdapter.TAG, adError.toString());
            mediationInterstitialListener.onAdFailedToLoad(this, adError);
            return;
        }
        String string2 = bundle.getString(VungleConstants.KEY_PLACEMENT_ID);
        if (TextUtils.isEmpty(string2)) {
            AdError adError2 = new AdError(101, "Failed to load waterfall interstitial ad from Liftoff Monetize. Missing or invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.w(VungleMediationAdapter.TAG, adError2.toString());
            mediationInterstitialListener.onAdFailedToLoad(this, adError2);
            return;
        }
        VungleInitializer.getInstance().updateCoppaStatus(mediationAdRequest.taggedForChildDirectedTreatment());
        AdConfig adConfig = new AdConfig();
        if (bundle2 != null && bundle2.containsKey(VungleConstants.KEY_ORIENTATION)) {
            adConfig.setAdOrientation(bundle2.getInt(VungleConstants.KEY_ORIENTATION, 2));
        }
        VungleInitializer.getInstance().initialize(string, context, new a(context, string2, adConfig, mediationInterstitialListener));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null) {
            interstitialAd.play(null);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
    }
}
