package com.google.ads.mediation.vungle.rtb;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.ads.mediation.vungle.VungleFactory;
import com.google.ads.mediation.vungle.VungleInitializer;
import com.google.ads.mediation.vungle.VungleMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.vungle.ads.BannerAdListener;
import com.vungle.ads.BaseAd;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleBannerView;
import com.vungle.ads.VungleError;
import com.vungle.mediation.VungleInterstitialAdapter;
/* loaded from: classes4.dex */
public class VungleRtbBannerAd implements MediationBannerAd, BannerAdListener {
    private VungleBannerView bannerAdView;
    private final MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback;
    private MediationBannerAdCallback mediationBannerAdCallback;
    private final MediationBannerAdConfiguration mediationBannerAdConfiguration;
    private final VungleFactory vungleFactory;

    public VungleRtbBannerAd(@NonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NonNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback, VungleFactory vungleFactory) {
        this.mediationBannerAdConfiguration = mediationBannerAdConfiguration;
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.vungleFactory = vungleFactory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadBanner(Context context, String str, VungleAdSize vungleAdSize, String str2, String str3) {
        VungleBannerView createBannerAd = this.vungleFactory.createBannerAd(context, str, vungleAdSize);
        this.bannerAdView = createBannerAd;
        createBannerAd.setAdListener(this);
        if (!TextUtils.isEmpty(str3)) {
            this.bannerAdView.getAdConfig().setWatermark(str3);
        }
        this.bannerAdView.load(str2);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    @NonNull
    public View getView() {
        return this.bannerAdView;
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdClicked(@NonNull BaseAd baseAd) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.reportAdClicked();
            this.mediationBannerAdCallback.onAdOpened();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdFailedToLoad(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
        AdError adError = VungleMediationAdapter.getAdError(vungleError);
        Log.w(VungleMediationAdapter.TAG, adError.toString());
        this.mediationAdLoadCallback.onFailure(adError);
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdFailedToPlay(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
        Log.w(VungleMediationAdapter.TAG, VungleMediationAdapter.getAdError(vungleError).toString());
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdImpression(@NonNull BaseAd baseAd) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.reportAdImpression();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdLeftApplication(@NonNull BaseAd baseAd) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.onAdLeftApplication();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdLoaded(@NonNull BaseAd baseAd) {
        this.mediationBannerAdCallback = this.mediationAdLoadCallback.onSuccess(this);
    }

    public void render() {
        Bundle serverParameters = this.mediationBannerAdConfiguration.getServerParameters();
        String string = serverParameters.getString("appid");
        if (TextUtils.isEmpty(string)) {
            AdError adError = new AdError(101, "Failed to load bidding banner ad from Liftoff Monetize. Missing or invalid App ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.e(VungleMediationAdapter.TAG, adError.getMessage());
            this.mediationAdLoadCallback.onFailure(adError);
            return;
        }
        final String string2 = serverParameters.getString(VungleConstants.KEY_PLACEMENT_ID);
        if (TextUtils.isEmpty(string2)) {
            AdError adError2 = new AdError(101, "Failed to load bidding banner ad from Liftoff Monetize. Missing or Invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.e(VungleMediationAdapter.TAG, adError2.getMessage());
            this.mediationAdLoadCallback.onFailure(adError2);
            return;
        }
        final Context context = this.mediationBannerAdConfiguration.getContext();
        final VungleAdSize vungleBannerAdSizeFromGoogleAdSize = VungleInterstitialAdapter.getVungleBannerAdSizeFromGoogleAdSize(this.mediationBannerAdConfiguration.getAdSize(), string2);
        final String bidResponse = this.mediationBannerAdConfiguration.getBidResponse();
        final String watermark = this.mediationBannerAdConfiguration.getWatermark();
        VungleInitializer.getInstance().initialize(string, context, new VungleInitializer.VungleInitializationListener() { // from class: com.google.ads.mediation.vungle.rtb.VungleRtbBannerAd.1
            @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
            public void onInitializeError(AdError adError3) {
                Log.w(VungleMediationAdapter.TAG, adError3.toString());
                VungleRtbBannerAd.this.mediationAdLoadCallback.onFailure(adError3);
            }

            @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
            public void onInitializeSuccess() {
                VungleRtbBannerAd.this.loadBanner(context, string2, vungleBannerAdSizeFromGoogleAdSize, bidResponse, watermark);
            }
        });
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdEnd(@NonNull BaseAd baseAd) {
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdStart(@NonNull BaseAd baseAd) {
    }
}
