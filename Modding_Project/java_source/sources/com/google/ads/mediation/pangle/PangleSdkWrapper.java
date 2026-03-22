package com.google.ads.mediation.pangle;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.api.PAGConstant;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerRequest;
import com.bytedance.sdk.openadsdk.api.bidding.PAGBiddingRequest;
import com.bytedance.sdk.openadsdk.api.init.BiddingTokenCallback;
import com.bytedance.sdk.openadsdk.api.init.PAGConfig;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialRequest;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeRequest;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenRequest;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedRequest;
/* loaded from: classes4.dex */
public class PangleSdkWrapper {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void getBiddingToken(Context context, PAGBiddingRequest pAGBiddingRequest, BiddingTokenCallback biddingTokenCallback) {
        PAGSdk.getBiddingToken(context, pAGBiddingRequest, biddingTokenCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getSdkVersion() {
        return PAGSdk.getSDKVersion();
    }

    public void init(Context context, PAGConfig pAGConfig, PAGSdk.PAGInitCallback pAGInitCallback) {
        PAGSdk.init(context, pAGConfig, pAGInitCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInitSuccess() {
        return PAGSdk.isInitSuccess();
    }

    public void loadAppOpenAd(@NonNull String str, @NonNull PAGAppOpenRequest pAGAppOpenRequest, @NonNull PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener) {
        PAGAppOpenAd.loadAd(str, pAGAppOpenRequest, pAGAppOpenAdLoadListener);
    }

    public void loadBannerAd(String str, PAGBannerRequest pAGBannerRequest, PAGBannerAdLoadListener pAGBannerAdLoadListener) {
        PAGBannerAd.loadAd(str, pAGBannerRequest, pAGBannerAdLoadListener);
    }

    public void loadInterstitialAd(String str, PAGInterstitialRequest pAGInterstitialRequest, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        PAGInterstitialAd.loadAd(str, pAGInterstitialRequest, pAGInterstitialAdLoadListener);
    }

    public void loadNativeAd(String str, PAGNativeRequest pAGNativeRequest, PAGNativeAdLoadListener pAGNativeAdLoadListener) {
        PAGNativeAd.loadAd(str, pAGNativeRequest, pAGNativeAdLoadListener);
    }

    public void loadRewardedAd(String str, PAGRewardedRequest pAGRewardedRequest, PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        PAGRewardedAd.loadAd(str, pAGRewardedRequest, pAGRewardedAdLoadListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setGdprConsent(@PAGConstant.PAGGDPRConsentType int i10) {
        PAGConfig.setGDPRConsent(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPAConsent(@PAGConstant.PAGPAConsentType int i10) {
        PAGConfig.setPAConsent(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUserData(String str) {
        PAGConfig.setUserData(str);
    }
}
