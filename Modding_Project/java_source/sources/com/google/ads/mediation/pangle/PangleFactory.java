package com.google.ads.mediation.pangle;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerRequest;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.api.init.PAGConfig;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialRequest;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeRequest;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenRequest;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedRequest;
import com.google.ads.mediation.pangle.renderer.PangleAppOpenAd;
import com.google.ads.mediation.pangle.renderer.PangleBannerAd;
import com.google.ads.mediation.pangle.renderer.PangleInterstitialAd;
import com.google.ads.mediation.pangle.renderer.PangleNativeAd;
import com.google.ads.mediation.pangle.renderer.PangleRewardedAd;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* loaded from: classes4.dex */
public class PangleFactory {
    /* JADX INFO: Access modifiers changed from: package-private */
    public PAGConfig.Builder createPAGConfigBuilder() {
        return new PAGConfig.Builder();
    }

    public PAGAppOpenRequest createPagAppOpenRequest() {
        return new PAGAppOpenRequest();
    }

    public PAGBannerRequest createPagBannerRequest(PAGBannerSize pAGBannerSize) {
        return new PAGBannerRequest(pAGBannerSize);
    }

    public PAGInterstitialRequest createPagInterstitialRequest() {
        return new PAGInterstitialRequest();
    }

    public PAGNativeRequest createPagNativeRequest() {
        return new PAGNativeRequest();
    }

    public PAGRewardedRequest createPagRewardedRequest() {
        return new PAGRewardedRequest();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PangleAppOpenAd createPangleAppOpenAd(@NonNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration, @NonNull MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback, @NonNull PangleInitializer pangleInitializer, @NonNull PangleSdkWrapper pangleSdkWrapper) {
        return new PangleAppOpenAd(mediationAppOpenAdConfiguration, mediationAdLoadCallback, pangleInitializer, pangleSdkWrapper, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PangleBannerAd createPangleBannerAd(@NonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NonNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback, @NonNull PangleInitializer pangleInitializer, @NonNull PangleSdkWrapper pangleSdkWrapper) {
        return new PangleBannerAd(mediationBannerAdConfiguration, mediationAdLoadCallback, pangleInitializer, pangleSdkWrapper, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PangleInterstitialAd createPangleInterstitialAd(@NonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback, @NonNull PangleInitializer pangleInitializer, PangleSdkWrapper pangleSdkWrapper) {
        return new PangleInterstitialAd(mediationInterstitialAdConfiguration, mediationAdLoadCallback, pangleInitializer, pangleSdkWrapper, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PangleNativeAd createPangleNativeAd(@NonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback, @NonNull PangleInitializer pangleInitializer, PangleSdkWrapper pangleSdkWrapper) {
        return new PangleNativeAd(mediationNativeAdConfiguration, mediationAdLoadCallback, pangleInitializer, pangleSdkWrapper, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PangleRewardedAd createPangleRewardedAd(@NonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @NonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback, @NonNull PangleInitializer pangleInitializer, PangleSdkWrapper pangleSdkWrapper) {
        return new PangleRewardedAd(mediationRewardedAdConfiguration, mediationAdLoadCallback, pangleInitializer, pangleSdkWrapper, this);
    }
}
