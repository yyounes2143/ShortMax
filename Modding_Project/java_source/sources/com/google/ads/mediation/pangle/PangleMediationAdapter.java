package com.google.ads.mediation.pangle;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bytedance.sdk.openadsdk.api.PAGConstant;
import com.bytedance.sdk.openadsdk.api.bidding.PAGBiddingRequest;
import com.bytedance.sdk.openadsdk.api.init.BiddingTokenCallback;
import com.bytedance.sdk.openadsdk.api.init.PAGConfig;
import com.google.ads.mediation.pangle.PangleInitializer;
import com.google.ads.mediation.pangle.renderer.PangleAppOpenAd;
import com.google.ads.mediation.pangle.renderer.PangleBannerAd;
import com.google.ads.mediation.pangle.renderer.PangleInterstitialAd;
import com.google.ads.mediation.pangle.renderer.PangleNativeAd;
import com.google.ads.mediation.pangle.renderer.PangleRewardedAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.VersionInfo;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes4.dex */
public class PangleMediationAdapter extends RtbAdapter {
    @VisibleForTesting
    static final String ERROR_MESSAGE_MISSING_OR_INVALID_APP_ID = "Missing or invalid App ID.";
    public static final String TAG = "PangleMediationAdapter";
    private static int gdpr = -1;
    private PangleAppOpenAd appOpenAd;
    private PangleBannerAd bannerAd;
    private PangleInterstitialAd interstitialAd;
    private PangleNativeAd nativeAd;
    private final PangleFactory pangleFactory;
    private final PangleInitializer pangleInitializer;
    private final PangleSdkWrapper pangleSdkWrapper;
    private PangleRewardedAd rewardedAd;

    public PangleMediationAdapter() {
        this.pangleInitializer = PangleInitializer.getInstance();
        this.pangleSdkWrapper = new PangleSdkWrapper();
        this.pangleFactory = new PangleFactory();
    }

    public static int getGDPRConsent() {
        return gdpr;
    }

    public static int getPAConsent() {
        return PAGConfig.getPAConsent();
    }

    public static void setGDPRConsent(@PAGConstant.PAGGDPRConsentType int i10) {
        setGDPRConsent(i10, new PangleSdkWrapper());
    }

    public static void setPAConsent(@PAGConstant.PAGPAConsentType int i10) {
        setPAConsent(i10, new PangleSdkWrapper());
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void collectSignals(@NonNull RtbSignalData rtbSignalData, @NonNull final SignalCallbacks signalCallbacks) {
        if (PangleConstants.isChildUser()) {
            signalCallbacks.onFailure(PangleConstants.createChildUserError());
            return;
        }
        Bundle networkExtras = rtbSignalData.getNetworkExtras();
        if (networkExtras != null && networkExtras.containsKey("user_data")) {
            this.pangleSdkWrapper.setUserData(networkExtras.getString("user_data", ""));
        }
        PAGBiddingRequest pAGBiddingRequest = new PAGBiddingRequest();
        pAGBiddingRequest.setAdxId(PangleConstants.ADX_ID);
        this.pangleSdkWrapper.getBiddingToken(rtbSignalData.getContext(), pAGBiddingRequest, new BiddingTokenCallback() { // from class: com.google.ads.mediation.pangle.PangleMediationAdapter.1
            @Override // com.bytedance.sdk.openadsdk.api.init.BiddingTokenCallback
            public void onBiddingTokenCollected(String str) {
                signalCallbacks.onSuccess(str);
            }
        });
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    @NonNull
    public VersionInfo getSDKVersionInfo() {
        String sdkVersion = this.pangleSdkWrapper.getSdkVersion();
        String[] split = sdkVersion.split("\\.");
        if (split.length >= 3) {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            int parseInt3 = Integer.parseInt(split[2]);
            if (split.length >= 4) {
                parseInt3 = (parseInt3 * 100) + Integer.parseInt(split[3]);
            }
            return new VersionInfo(parseInt, parseInt2, parseInt3);
        }
        Log.w(TAG, String.format("Unexpected SDK version format: %s. Returning 0.0.0 for SDK version.", sdkVersion));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    @NonNull
    public VersionInfo getVersionInfo() {
        return getVersionInfo("7.5.0.4.0");
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(@NonNull Context context, @NonNull final InitializationCompleteCallback initializationCompleteCallback, @NonNull List<MediationConfiguration> list) {
        if (PangleConstants.isChildUser()) {
            initializationCompleteCallback.onInitializationFailed(PangleConstants.ERROR_MSG_CHILD_USER);
            return;
        }
        HashSet hashSet = new HashSet();
        for (MediationConfiguration mediationConfiguration : list) {
            String string = mediationConfiguration.getServerParameters().getString("appid");
            if (!TextUtils.isEmpty(string)) {
                hashSet.add(string);
            }
        }
        int size = hashSet.size();
        if (size <= 0) {
            AdError createAdapterError = PangleConstants.createAdapterError(101, ERROR_MESSAGE_MISSING_OR_INVALID_APP_ID);
            Log.w(TAG, createAdapterError.toString());
            initializationCompleteCallback.onInitializationFailed(createAdapterError.toString());
            return;
        }
        String str = (String) hashSet.iterator().next();
        if (size > 1) {
            Log.w(TAG, String.format("Found multiple app IDs in %s. Using %s to initialize Pangle SDK.", hashSet, str));
        }
        this.pangleInitializer.initialize(context, str, new PangleInitializer.Listener() { // from class: com.google.ads.mediation.pangle.PangleMediationAdapter.2
            @Override // com.google.ads.mediation.pangle.PangleInitializer.Listener
            public void onInitializeError(@NonNull AdError adError) {
                Log.w(PangleMediationAdapter.TAG, adError.toString());
                initializationCompleteCallback.onInitializationFailed(adError.getMessage());
            }

            @Override // com.google.ads.mediation.pangle.PangleInitializer.Listener
            public void onInitializeSuccess() {
                initializationCompleteCallback.onInitializationSucceeded();
            }
        });
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadAppOpenAd(@NonNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration, @NonNull MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback) {
        if (PangleConstants.isChildUser()) {
            mediationAdLoadCallback.onFailure(PangleConstants.createChildUserError());
            return;
        }
        PangleAppOpenAd createPangleAppOpenAd = this.pangleFactory.createPangleAppOpenAd(mediationAppOpenAdConfiguration, mediationAdLoadCallback, this.pangleInitializer, this.pangleSdkWrapper);
        this.appOpenAd = createPangleAppOpenAd;
        createPangleAppOpenAd.render();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadBannerAd(@NonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NonNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        if (PangleConstants.isChildUser()) {
            mediationAdLoadCallback.onFailure(PangleConstants.createChildUserError());
            return;
        }
        PangleBannerAd createPangleBannerAd = this.pangleFactory.createPangleBannerAd(mediationBannerAdConfiguration, mediationAdLoadCallback, this.pangleInitializer, this.pangleSdkWrapper);
        this.bannerAd = createPangleBannerAd;
        createPangleBannerAd.render();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadInterstitialAd(@NonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        if (PangleConstants.isChildUser()) {
            mediationAdLoadCallback.onFailure(PangleConstants.createChildUserError());
            return;
        }
        PangleInterstitialAd createPangleInterstitialAd = this.pangleFactory.createPangleInterstitialAd(mediationInterstitialAdConfiguration, mediationAdLoadCallback, this.pangleInitializer, this.pangleSdkWrapper);
        this.interstitialAd = createPangleInterstitialAd;
        createPangleInterstitialAd.render();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadNativeAd(@NonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        if (PangleConstants.isChildUser()) {
            mediationAdLoadCallback.onFailure(PangleConstants.createChildUserError());
            return;
        }
        PangleNativeAd createPangleNativeAd = this.pangleFactory.createPangleNativeAd(mediationNativeAdConfiguration, mediationAdLoadCallback, this.pangleInitializer, this.pangleSdkWrapper);
        this.nativeAd = createPangleNativeAd;
        createPangleNativeAd.render();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(@NonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @NonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        if (PangleConstants.isChildUser()) {
            mediationAdLoadCallback.onFailure(PangleConstants.createChildUserError());
            return;
        }
        PangleRewardedAd createPangleRewardedAd = this.pangleFactory.createPangleRewardedAd(mediationRewardedAdConfiguration, mediationAdLoadCallback, this.pangleInitializer, this.pangleSdkWrapper);
        this.rewardedAd = createPangleRewardedAd;
        createPangleRewardedAd.render();
    }

    @VisibleForTesting
    static void setGDPRConsent(@PAGConstant.PAGGDPRConsentType int i10, PangleSdkWrapper pangleSdkWrapper) {
        if (i10 != 1 && i10 != 0 && i10 != -1) {
            Log.w(TAG, "Invalid GDPR value. Pangle SDK only accepts -1, 0 or 1.");
            return;
        }
        if (pangleSdkWrapper.isInitSuccess() && !PangleConstants.isChildUser()) {
            pangleSdkWrapper.setGdprConsent(i10);
        }
        gdpr = i10;
    }

    @VisibleForTesting
    static void setPAConsent(@PAGConstant.PAGPAConsentType int i10, PangleSdkWrapper pangleSdkWrapper) {
        if (i10 != 1 && i10 != 0) {
            Log.w(TAG, "Invalid PA value. Pangle SDK only accepts 0 or 1.");
        } else {
            pangleSdkWrapper.setPAConsent(i10);
        }
    }

    @NonNull
    @VisibleForTesting
    VersionInfo getVersionInfo(String str) {
        String[] split = str.split("\\.");
        if (split.length >= 4) {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            int parseInt3 = (Integer.parseInt(split[2]) * 100) + Integer.parseInt(split[3]);
            if (split.length >= 5) {
                parseInt3 = (parseInt3 * 100) + Integer.parseInt(split[4]);
            }
            return new VersionInfo(parseInt, parseInt2, parseInt3);
        }
        Log.w(TAG, String.format("Unexpected adapter version format: %s. Returning 0.0.0 for adapter version.", str));
        return new VersionInfo(0, 0, 0);
    }

    @VisibleForTesting
    PangleMediationAdapter(PangleInitializer pangleInitializer, PangleSdkWrapper pangleSdkWrapper, PangleFactory pangleFactory) {
        this.pangleInitializer = pangleInitializer;
        this.pangleSdkWrapper = pangleSdkWrapper;
        this.pangleFactory = pangleFactory;
    }
}
