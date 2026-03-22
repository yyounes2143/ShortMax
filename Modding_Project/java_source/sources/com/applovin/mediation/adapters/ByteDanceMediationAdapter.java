package com.applovin.mediation.adapters;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxSignalProvider;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerRequest;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.api.bidding.PAGBiddingRequest;
import com.bytedance.sdk.openadsdk.api.init.BiddingTokenCallback;
import com.bytedance.sdk.openadsdk.api.init.PAGConfig;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialRequest;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeRequest;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenRequest;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardItem;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedRequest;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class ByteDanceMediationAdapter extends MediationAdapterBase implements MaxSignalProvider, MaxInterstitialAdapter, MaxRewardedAdapter, MaxAdViewAdapter {
    private static final int ABNORMAL_MATERIAL_DATA_ERROR = 104;
    private static final int ADSLOT_EMPTY = 40004;
    private static final int ADSLOT_ID_ERROR = 40006;
    private static final int ADSLOT_SIZE_EMPTY = 40005;
    private static final int AD_DATA_ERROR = -4;
    private static final int APP_EMPTY = 40002;
    private static final int BANNER_AD_LOAD_IMAGE_ERROR = -5;
    private static final int CONTENT_TYPE = 40000;
    private static final int DEFAULT_IMAGE_TASK_TIMEOUT_SECONDS = 10;
    private static final int ERROR_ACCESS_METHOD_API_SDK = 40017;
    private static final int ERROR_ACCESS_METHOD_PASS = 40012;
    private static final int ERROR_ADTYPE_DIFFER = 40019;
    private static final int ERROR_AD_TYPE = 40011;
    private static final int ERROR_APK_SIGN_CHECK_ERROR = 40021;
    private static final int ERROR_CODE_ADCOUNT_ERROR = 40007;
    private static final int ERROR_CODE_CLICK_EVENT_ERROR = 60002;
    private static final int ERROR_IMAGE_SIZE = 40008;
    private static final int ERROR_MEDIA_ID = 40009;
    private static final int ERROR_MEDIA_TYPE = 40010;
    private static final int ERROR_NEW_REGISTER_LIMIT = 40020;
    private static final int ERROR_ORIGIN_AD_ERROR = 40022;
    private static final int ERROR_PACKAGE_NAME = 40018;
    private static final int ERROR_REDIRECT = 40014;
    private static final int ERROR_REQUEST_INVALID = 40015;
    private static final int ERROR_SLOT_ID_APP_ID_DIFFER = 40016;
    private static final int ERROR_SPLASH_AD_TYPE = 40013;
    private static final int ERROR_TEMPLATE_METHODS = 40029;
    private static final int ERROR_UNION_OS_ERROR = 40023;
    private static final int ERROR_UNION_SDK_NOT_INSTALLED = 40025;
    private static final int ERROR_UNION_SDK_TOO_OLD = 40024;
    private static final int ERROR_VERIFY_REWARD = 60007;
    private static final int FAIL_PARSE_RENDERING_RESULT_DATA_ERROR = 101;
    private static final int FREQUENT_CALL_ERROR = -8;
    private static final int INSERT_AD_LOAD_IMAGE_ERROR = -6;
    private static final int INVALID_MAIN_TEMPLATE_ERROR = 102;
    private static final int INVALID_TEMPLATE_DIFFERENCE_ERROR = 103;
    private static final String MAX_EXCHANGE_ID = "105";
    private static final int NET_ERROR = -2;
    private static final int NO_AD = 20001;
    private static final int NO_AD_PARSE = -3;
    private static final int OK = 20000;
    private static final int PARSE_FAIL = -1;
    private static final int RENDERING_ERROR = 106;
    private static final int RENDERING_TIMEOUT_ERROR = 107;
    private static final int REQUEST_BODY_ERROR = -9;
    private static final int REQUEST_PB_ERROR = 40001;
    private static final int ROR_CODE_SHOW_EVENT_ERROR = 60001;
    private static final int SPLASH_AD_LOAD_IMAGE_ERROR = -7;
    private static final int SPLASH_CACHE_EXPIRED_ERROR = -11;
    private static final int SPLASH_CACHE_PARSE_ERROR = -10;
    private static final int SPLASH_NOT_HAVE_CACHE_ERROR = -12;
    private static final int SYS_ERROR = 50001;
    private static final int TEMPLATE_DATA_PARSING_ERROR = 105;
    private static final int WAP_EMPTY = 40003;
    private static MaxAdapter.InitializationStatus status;
    private PAGBannerAd adViewAd;
    private PAGAppOpenAd appOpenAd;
    private AppOpenAdListener appOpenAdListener;
    private PAGInterstitialAd interstitialAd;
    private InterstitialAdListener interstitialAdListener;
    private PAGNativeAd nativeAd;
    private NativeAdListener nativeAdListener;
    private PAGRewardedAd rewardedAd;
    private RewardedAdListener rewardedAdListener;
    private static final AtomicBoolean initialized = new AtomicBoolean();
    private static final ExecutorService executor = Executors.newCachedThreadPool();

    /* loaded from: classes2.dex */
    private class AdViewListener implements PAGBannerAdLoadListener, PAGBannerAdInteractionListener {
        private final MaxAdFormat adFormat;
        private final String codeId;
        private final MaxAdViewAdapterListener listener;

        AdViewListener(String str, MaxAdFormat maxAdFormat, MaxAdViewAdapterListener maxAdViewAdapterListener) {
            this.codeId = str;
            this.adFormat = maxAdFormat;
            this.listener = maxAdViewAdapterListener;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdClicked() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log(this.adFormat.getLabel() + " ad clicked: " + this.codeId);
            this.listener.onAdViewAdClicked();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdDismissed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log(this.adFormat.getLabel() + " ad hidden: " + this.codeId);
            this.listener.onAdViewAdHidden();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdShowed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log(this.adFormat.getLabel() + " ad displayed: " + this.codeId);
            this.listener.onAdViewAdDisplayed();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
        public void onError(int i10, String str) {
            MaxAdapterError maxError = ByteDanceMediationAdapter.toMaxError(i10, str);
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log(this.adFormat.getLabel() + " ad (" + this.codeId + ") failed to load with error: " + maxError);
            this.listener.onAdViewAdLoadFailed(maxError);
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        public void onAdLoaded(PAGBannerAd pAGBannerAd) {
            if (pAGBannerAd == null) {
                ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
                byteDanceMediationAdapter.log(this.adFormat.getLabel() + " ad(" + this.codeId + ") NO FILL'd");
                this.listener.onAdViewAdLoadFailed(MaxAdapterError.NO_FILL);
                return;
            }
            ByteDanceMediationAdapter byteDanceMediationAdapter2 = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter2.log(this.adFormat.getLabel() + " ad (" + this.codeId + ") loaded");
            ByteDanceMediationAdapter.this.adViewAd = pAGBannerAd;
            Bundle bundle = new Bundle(2);
            PAGBannerSize bannerSize = ByteDanceMediationAdapter.this.adViewAd.getBannerSize();
            bundle.putInt("ad_width", bannerSize.getWidth());
            bundle.putInt("ad_height", bannerSize.getHeight());
            ByteDanceMediationAdapter.this.adViewAd.setAdInteractionListener(this);
            this.listener.onAdViewAdLoaded(pAGBannerAd.getBannerView(), bundle);
        }
    }

    /* loaded from: classes2.dex */
    private class AppOpenAdListener implements PAGAppOpenAdLoadListener, PAGAppOpenAdInteractionListener {
        private final String codeId;
        private final MaxAppOpenAdapterListener listener;

        AppOpenAdListener(String str, MaxAppOpenAdapterListener maxAppOpenAdapterListener) {
            this.codeId = str;
            this.listener = maxAppOpenAdapterListener;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdClicked() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("App open ad clicked: " + this.codeId);
            this.listener.onAppOpenAdClicked();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdDismissed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("App open ad hidden: " + this.codeId);
            this.listener.onAppOpenAdHidden();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdShowed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("App open ad displayed: " + this.codeId);
            this.listener.onAppOpenAdDisplayed();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
        public void onError(int i10, String str) {
            MaxAdapterError maxError = ByteDanceMediationAdapter.toMaxError(i10, str);
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("App open ad (" + this.codeId + ") failed to load with error: " + maxError);
            this.listener.onAppOpenAdLoadFailed(maxError);
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        public void onAdLoaded(PAGAppOpenAd pAGAppOpenAd) {
            if (pAGAppOpenAd == null) {
                ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
                byteDanceMediationAdapter.log("App open ad(" + this.codeId + ") NO FILL'd");
                this.listener.onAppOpenAdLoadFailed(MaxAdapterError.NO_FILL);
                return;
            }
            ByteDanceMediationAdapter byteDanceMediationAdapter2 = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter2.log("App open ad loaded: " + this.codeId);
            ByteDanceMediationAdapter.this.appOpenAd = pAGAppOpenAd;
            this.listener.onAppOpenAdLoaded();
        }
    }

    /* loaded from: classes2.dex */
    private class InterstitialAdListener implements PAGInterstitialAdLoadListener, PAGInterstitialAdInteractionListener {
        private final String codeId;
        private final MaxInterstitialAdapterListener listener;

        InterstitialAdListener(String str, MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
            this.codeId = str;
            this.listener = maxInterstitialAdapterListener;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdClicked() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Interstitial ad clicked: " + this.codeId);
            this.listener.onInterstitialAdClicked();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdDismissed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Interstitial ad hidden: " + this.codeId);
            this.listener.onInterstitialAdHidden();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdShowed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Interstitial ad displayed: " + this.codeId);
            this.listener.onInterstitialAdDisplayed();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
        public void onError(int i10, String str) {
            MaxAdapterError maxError = ByteDanceMediationAdapter.toMaxError(i10, str);
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Interstitial ad (" + this.codeId + ") failed to load with error: " + maxError);
            this.listener.onInterstitialAdLoadFailed(maxError);
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        public void onAdLoaded(PAGInterstitialAd pAGInterstitialAd) {
            if (pAGInterstitialAd == null) {
                ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
                byteDanceMediationAdapter.log("Interstitial ad(" + this.codeId + ") NO FILL'd");
                this.listener.onInterstitialAdLoadFailed(MaxAdapterError.NO_FILL);
                return;
            }
            ByteDanceMediationAdapter byteDanceMediationAdapter2 = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter2.log("Interstitial ad loaded: " + this.codeId);
            ByteDanceMediationAdapter.this.interstitialAd = pAGInterstitialAd;
            this.listener.onInterstitialAdLoaded();
        }
    }

    /* loaded from: classes2.dex */
    private class MaxByteDanceNativeAd extends MaxNativeAd {
        public MaxByteDanceNativeAd(MaxNativeAd.Builder builder) {
            super(builder);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAd
        public boolean prepareForInteraction(List<View> list, ViewGroup viewGroup) {
            PAGNativeAd pAGNativeAd = ByteDanceMediationAdapter.this.nativeAd;
            if (pAGNativeAd == null) {
                ByteDanceMediationAdapter.this.e("Failed to register native ad view for interaction. Native ad is null");
                return false;
            }
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.d("Preparing views for interaction: " + list + " with container: " + viewGroup);
            pAGNativeAd.registerViewForInteraction(viewGroup, list, (List<View>) null, (View) null, ByteDanceMediationAdapter.this.nativeAdListener);
            return true;
        }
    }

    /* loaded from: classes2.dex */
    private class NativeAdListener implements PAGNativeAdLoadListener, PAGNativeAdInteractionListener, PAGVideoAdListener {
        final String codeId;
        final Context context;
        final MaxNativeAdAdapterListener listener;
        final Bundle serverParameters;

        NativeAdListener(MaxAdapterResponseParameters maxAdapterResponseParameters, Context context, MaxNativeAdAdapterListener maxNativeAdAdapterListener) {
            this.codeId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
            this.serverParameters = maxAdapterResponseParameters.getServerParameters();
            this.context = context;
            this.listener = maxNativeAdAdapterListener;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdClicked() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native ad clicked: " + this.codeId);
            this.listener.onNativeAdClicked();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdDismissed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native ad hidden: " + this.codeId);
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdShowed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native ad displayed: " + this.codeId);
            this.listener.onNativeAdDisplayed(null);
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
        public void onError(int i10, String str) {
            MaxAdapterError maxError = ByteDanceMediationAdapter.toMaxError(i10, str);
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native ad (" + this.codeId + ") failed to load with error: " + maxError);
            this.listener.onNativeAdLoadFailed(maxError);
        }

        @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
        public void onVideoAdComplete() {
            ByteDanceMediationAdapter.this.log("Native ad video completed");
        }

        @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
        public void onVideoAdPaused() {
            ByteDanceMediationAdapter.this.log("Native ad video paused");
        }

        @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
        public void onVideoAdPlay() {
            ByteDanceMediationAdapter.this.log("Native ad video started playing");
        }

        @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
        public void onVideoError() {
            ByteDanceMediationAdapter.this.log("Native ad video error");
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        public void onAdLoaded(PAGNativeAd pAGNativeAd) {
            if (pAGNativeAd == null) {
                ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
                byteDanceMediationAdapter.log("Native ad(" + this.codeId + ") NO FILL'd");
                this.listener.onNativeAdLoadFailed(MaxAdapterError.NO_FILL);
                return;
            }
            ByteDanceMediationAdapter byteDanceMediationAdapter2 = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter2.log("Native ad loaded: " + this.codeId + ". Preparing assets...");
            final PAGNativeAdData nativeAdData = pAGNativeAd.getNativeAdData();
            ByteDanceMediationAdapter.this.nativeAd = pAGNativeAd;
            if (AppLovinSdkUtils.isValidString(BundleUtils.getString("template", "", this.serverParameters)) && TextUtils.isEmpty(nativeAdData.getTitle())) {
                ByteDanceMediationAdapter byteDanceMediationAdapter3 = ByteDanceMediationAdapter.this;
                byteDanceMediationAdapter3.e("Native ad (" + pAGNativeAd + ") does not have required assets.");
                this.listener.onNativeAdLoadFailed(MaxAdapterError.MISSING_REQUIRED_NATIVE_AD_ASSETS);
                return;
            }
            ByteDanceMediationAdapter.this.getCachingExecutorService().execute(new Runnable() { // from class: com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdListener.1
                /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        r5 = this;
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData r0 = r2
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem r0 = r0.getIcon()
                        r1 = 0
                        if (r0 == 0) goto L4f
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData r0 = r2
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem r0 = r0.getIcon()
                        java.lang.String r0 = r0.getImageUrl()
                        boolean r0 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r0)
                        if (r0 == 0) goto L4f
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData r0 = r2
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem r0 = r0.getIcon()
                        java.lang.String r0 = r0.getImageUrl()
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdListener r2 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdListener.this
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter r2 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.this
                        java.lang.StringBuilder r3 = new java.lang.StringBuilder
                        r3.<init>()
                        java.lang.String r4 = "Adding native ad icon ("
                        r3.append(r4)
                        r3.append(r0)
                        java.lang.String r4 = ") to queue to be fetched"
                        r3.append(r4)
                        java.lang.String r3 = r3.toString()
                        r2.log(r3)
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdListener r2 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdListener.this
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter r3 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.this
                        android.content.Context r2 = r2.context
                        android.content.res.Resources r2 = r2.getResources()
                        java.util.concurrent.Future r0 = r3.createDrawableFuture(r0, r2)
                        goto L50
                    L4f:
                        r0 = r1
                    L50:
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdListener r2 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdListener.this
                        android.os.Bundle r2 = r2.serverParameters
                        java.lang.String r3 = "image_task_timeout_seconds"
                        r4 = 10
                        int r2 = com.applovin.impl.sdk.utils.BundleUtils.getInt(r3, r4, r2)
                        if (r0 == 0) goto L72
                        long r2 = (long) r2
                        java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L68
                        java.lang.Object r0 = r0.get(r2, r4)     // Catch: java.lang.Throwable -> L68
                        android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0     // Catch: java.lang.Throwable -> L68
                        goto L73
                    L68:
                        r0 = move-exception
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdListener r2 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdListener.this
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter r2 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.this
                        java.lang.String r3 = "Image fetching tasks failed"
                        r2.e(r3, r0)
                    L72:
                        r0 = r1
                    L73:
                        if (r0 == 0) goto L7a
                        com.applovin.mediation.nativeAds.MaxNativeAd$MaxNativeAdImage r1 = new com.applovin.mediation.nativeAds.MaxNativeAd$MaxNativeAdImage
                        r1.<init>(r0)
                    L7a:
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdListener$1$1 r0 = new com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdListener$1$1
                        r0.<init>()
                        com.applovin.sdk.AppLovinSdkUtils.runOnUiThread(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdListener.AnonymousClass1.run():void");
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    private class NativeAdViewListener implements PAGNativeAdLoadListener, PAGNativeAdInteractionListener, PAGVideoAdListener {
        final WeakReference<Activity> activityRef;
        final MaxAdFormat adFormat;
        final String codeId;
        final MaxAdViewAdapterListener listener;
        final Bundle serverParameters;

        NativeAdViewListener(MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, @Nullable Activity activity, MaxAdViewAdapterListener maxAdViewAdapterListener) {
            this.codeId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
            this.serverParameters = maxAdapterResponseParameters.getServerParameters();
            this.adFormat = maxAdFormat;
            this.activityRef = new WeakReference<>(activity);
            this.listener = maxAdViewAdapterListener;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdClicked() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad clicked: " + this.codeId);
            this.listener.onAdViewAdClicked();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdDismissed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad hidden: " + this.codeId);
            this.listener.onAdViewAdHidden();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdShowed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad displayed: " + this.codeId);
            this.listener.onAdViewAdDisplayed();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
        public void onError(int i10, String str) {
            MaxAdapterError maxError = ByteDanceMediationAdapter.toMaxError(i10, str);
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad (" + this.codeId + ") failed to load with error: " + maxError);
            this.listener.onAdViewAdLoadFailed(maxError);
        }

        @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
        public void onVideoAdComplete() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad video completed");
        }

        @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
        public void onVideoAdPaused() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad video paused");
        }

        @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
        public void onVideoAdPlay() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad video loaded");
        }

        @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
        public void onVideoError() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad video error");
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        public void onAdLoaded(final PAGNativeAd pAGNativeAd) {
            if (pAGNativeAd == null) {
                ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
                byteDanceMediationAdapter.log("Native " + this.adFormat.getLabel() + "ad(" + this.codeId + ") NO FILL'd");
                this.listener.onAdViewAdLoadFailed(MaxAdapterError.NO_FILL);
                return;
            }
            ByteDanceMediationAdapter byteDanceMediationAdapter2 = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter2.log("Native " + this.adFormat.getLabel() + " ad loaded: " + this.codeId + ". Preparing assets...");
            final PAGNativeAdData nativeAdData = pAGNativeAd.getNativeAdData();
            ExecutorService cachingExecutorService = ByteDanceMediationAdapter.this.getCachingExecutorService();
            final Context context = ByteDanceMediationAdapter.this.getContext(this.activityRef.get());
            cachingExecutorService.execute(new Runnable() { // from class: com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdViewListener.1
                /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        r6 = this;
                        android.content.Context r0 = r2
                        android.content.res.Resources r0 = r0.getResources()
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData r1 = r3
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem r1 = r1.getIcon()
                        r2 = 0
                        if (r1 == 0) goto L4f
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData r1 = r3
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem r1 = r1.getIcon()
                        java.lang.String r1 = r1.getImageUrl()
                        boolean r1 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r1)
                        if (r1 == 0) goto L4f
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData r1 = r3
                        com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem r1 = r1.getIcon()
                        java.lang.String r1 = r1.getImageUrl()
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdViewListener r3 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdViewListener.this
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter r3 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.this
                        java.lang.StringBuilder r4 = new java.lang.StringBuilder
                        r4.<init>()
                        java.lang.String r5 = "Adding native ad icon ("
                        r4.append(r5)
                        r4.append(r1)
                        java.lang.String r5 = ") to queue to be fetched"
                        r4.append(r5)
                        java.lang.String r4 = r4.toString()
                        r3.log(r4)
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdViewListener r3 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdViewListener.this
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter r3 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.this
                        java.util.concurrent.Future r0 = r3.createDrawableFuture(r1, r0)
                        goto L50
                    L4f:
                        r0 = r2
                    L50:
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdViewListener r1 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdViewListener.this
                        android.os.Bundle r1 = r1.serverParameters
                        java.lang.String r3 = "image_task_timeout_seconds"
                        r4 = 10
                        int r1 = com.applovin.impl.sdk.utils.BundleUtils.getInt(r3, r4, r1)
                        if (r0 == 0) goto L72
                        long r3 = (long) r1
                        java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L68
                        java.lang.Object r0 = r0.get(r3, r1)     // Catch: java.lang.Throwable -> L68
                        android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0     // Catch: java.lang.Throwable -> L68
                        goto L73
                    L68:
                        r0 = move-exception
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdViewListener r1 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdViewListener.this
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter r1 = com.applovin.mediation.adapters.ByteDanceMediationAdapter.this
                        java.lang.String r3 = "Image fetching tasks failed"
                        r1.e(r3, r0)
                    L72:
                        r0 = r2
                    L73:
                        if (r0 == 0) goto L7a
                        com.applovin.mediation.nativeAds.MaxNativeAd$MaxNativeAdImage r2 = new com.applovin.mediation.nativeAds.MaxNativeAd$MaxNativeAdImage
                        r2.<init>(r0)
                    L7a:
                        com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdViewListener$1$1 r0 = new com.applovin.mediation.adapters.ByteDanceMediationAdapter$NativeAdViewListener$1$1
                        r0.<init>()
                        com.applovin.sdk.AppLovinSdkUtils.runOnUiThread(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.applovin.mediation.adapters.ByteDanceMediationAdapter.NativeAdViewListener.AnonymousClass1.run():void");
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    private class RewardedAdListener implements PAGRewardedAdLoadListener, PAGRewardedAdInteractionListener {
        private final String codeId;
        private boolean hasGrantedReward;
        private final MaxRewardedAdapterListener listener;

        RewardedAdListener(String str, MaxRewardedAdapterListener maxRewardedAdapterListener) {
            this.codeId = str;
            this.listener = maxRewardedAdapterListener;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdClicked() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Rewarded ad clicked: " + this.codeId);
            this.listener.onRewardedAdClicked();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdDismissed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Rewarded ad hidden: " + this.codeId);
            if (this.hasGrantedReward || ByteDanceMediationAdapter.this.shouldAlwaysRewardUser()) {
                MaxReward reward = ByteDanceMediationAdapter.this.getReward();
                ByteDanceMediationAdapter byteDanceMediationAdapter2 = ByteDanceMediationAdapter.this;
                byteDanceMediationAdapter2.log("Rewarded user with reward: " + reward);
                this.listener.onUserRewarded(reward);
            }
            this.listener.onRewardedAdHidden();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
        public void onAdShowed() {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Rewarded ad displayed: " + this.codeId);
            this.listener.onRewardedAdDisplayed();
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
        public void onError(int i10, String str) {
            MaxAdapterError maxError = ByteDanceMediationAdapter.toMaxError(i10, str);
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Rewarded ad (" + this.codeId + ") failed to load with error: " + maxError);
            this.listener.onRewardedAdLoadFailed(maxError);
        }

        @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener
        public void onUserEarnedReward(PAGRewardItem pAGRewardItem) {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Rewarded user with reward: " + pAGRewardItem.getRewardAmount() + " " + pAGRewardItem.getRewardName());
            this.hasGrantedReward = true;
        }

        @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener
        public void onUserEarnedRewardFail(int i10, String str) {
            ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter.log("Failed to reward user with error: " + i10 + " " + str);
            this.hasGrantedReward = false;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        public void onAdLoaded(PAGRewardedAd pAGRewardedAd) {
            if (pAGRewardedAd == null) {
                ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
                byteDanceMediationAdapter.log("Rewarded ad(" + this.codeId + ") NO FILL'd");
                this.listener.onRewardedAdLoadFailed(MaxAdapterError.NO_FILL);
                return;
            }
            ByteDanceMediationAdapter byteDanceMediationAdapter2 = ByteDanceMediationAdapter.this;
            byteDanceMediationAdapter2.log("Rewarded ad loaded: " + this.codeId);
            ByteDanceMediationAdapter.this.rewardedAd = pAGRewardedAd;
            this.listener.onRewardedAdLoaded();
        }
    }

    public ByteDanceMediationAdapter(AppLovinSdk appLovinSdk) {
        super(appLovinSdk);
    }

    private String createAdConfigData(Bundle bundle, Boolean bool) {
        if (bool.booleanValue()) {
            return String.format("[{\"name\":\"mediation\",\"value\":\"MAX\"},{\"name\":\"adapter_version\",\"value\":\"%s\"}]", getAdapterVersion());
        }
        return String.format("[{\"name\":\"mediation\",\"value\":\"MAX\"},{\"name\":\"adapter_version\",\"value\":\"%s\"},{\"name\":\"hybrid_id\",\"value\":\"%s\"}]", getAdapterVersion(), BundleUtils.getString("event_id", bundle));
    }

    private PAGBiddingRequest createBiddingRequestWithParameters(MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, Context context) {
        boolean z10;
        PAGBiddingRequest pAGBiddingRequest = new PAGBiddingRequest();
        if (maxAdapterSignalCollectionParameters.getAdFormat().isAdViewAd()) {
            Object obj = maxAdapterSignalCollectionParameters.getLocalExtraParameters().get("adaptive_banner");
            if ((obj instanceof String) && "true".equalsIgnoreCase((String) obj)) {
                z10 = true;
            } else {
                z10 = false;
            }
            pAGBiddingRequest.setBannerSize(toPAGBannerSize(maxAdapterSignalCollectionParameters.getAdFormat(), z10, maxAdapterSignalCollectionParameters, context));
        }
        pAGBiddingRequest.setAdxId(MAX_EXCHANGE_ID);
        String adUnitId = maxAdapterSignalCollectionParameters.getAdUnitId();
        Bundle bundle = BundleUtils.getBundle("placement_ids", Bundle.EMPTY, maxAdapterSignalCollectionParameters.getServerParameters());
        if (AppLovinSdkUtils.isValidString(adUnitId)) {
            String string = bundle.getString(adUnitId);
            if (AppLovinSdkUtils.isValidString(string)) {
                pAGBiddingRequest.setSlotId(string);
            } else {
                log("No valid slot ID found during signal collection");
            }
        }
        return pAGBiddingRequest;
    }

    private Callable<Drawable> createDrawableTask(final String str, final Resources resources) {
        return new Callable<Drawable>() { // from class: com.applovin.mediation.adapters.ByteDanceMediationAdapter.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Drawable call() throws Exception {
                return new BitmapDrawable(resources, BitmapFactory.decodeStream(new URL(str).openStream()));
            }
        };
    }

    private PAGBannerSize getAdaptiveAdSize(MaxAdapterParameters maxAdapterParameters, Context context) {
        int adaptiveAdViewWidth = getAdaptiveAdViewWidth(maxAdapterParameters, context);
        if (isInlineAdaptiveAdView(maxAdapterParameters)) {
            int inlineAdaptiveAdViewMaximumHeight = getInlineAdaptiveAdViewMaximumHeight(maxAdapterParameters);
            if (inlineAdaptiveAdViewMaximumHeight > 0) {
                return PAGBannerSize.getInlineAdaptiveBannerAdSize(adaptiveAdViewWidth, inlineAdaptiveAdViewMaximumHeight);
            }
            return PAGBannerSize.getCurrentOrientationInlineAdaptiveBannerAdSize(context, adaptiveAdViewWidth);
        }
        return PAGBannerSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(context, adaptiveAdViewWidth);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext(@Nullable Activity activity) {
        if (activity != null) {
            return activity.getApplicationContext();
        }
        return getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002c A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.applovin.mediation.adapter.MaxAdapterError toMaxError(int r2, java.lang.String r3) {
        /*
            com.applovin.mediation.adapter.MaxAdapterError r0 = com.applovin.mediation.adapter.MaxAdapterError.UNSPECIFIED
            r1 = 20000(0x4e20, float:2.8026E-41)
            if (r2 == r1) goto L37
            r1 = 20001(0x4e21, float:2.8027E-41)
            if (r2 == r1) goto L2f
            r1 = 40029(0x9c5d, float:5.6093E-41)
            if (r2 == r1) goto L2c
            r1 = 50001(0xc351, float:7.0066E-41)
            if (r2 == r1) goto L2c
            r1 = 60007(0xea67, float:8.4088E-41)
            if (r2 == r1) goto L2c
            switch(r2) {
                case -12: goto L2c;
                case -11: goto L29;
                case -10: goto L2c;
                case -9: goto L2c;
                case -8: goto L2c;
                case -7: goto L2c;
                case -6: goto L2c;
                case -5: goto L2c;
                case -4: goto L2c;
                case -3: goto L2c;
                case -2: goto L26;
                case -1: goto L2c;
                default: goto L1c;
            }
        L1c:
            switch(r2) {
                case 101: goto L2c;
                case 102: goto L2c;
                case 103: goto L2c;
                case 104: goto L2c;
                case 105: goto L2c;
                case 106: goto L2c;
                case 107: goto L2c;
                default: goto L1f;
            }
        L1f:
            switch(r2) {
                case 40000: goto L2c;
                case 40001: goto L2c;
                case 40002: goto L2c;
                case 40003: goto L2c;
                case 40004: goto L2c;
                case 40005: goto L2c;
                case 40006: goto L2c;
                case 40007: goto L2c;
                case 40008: goto L2c;
                case 40009: goto L2c;
                case 40010: goto L2c;
                case 40011: goto L2c;
                case 40012: goto L2c;
                case 40013: goto L2c;
                case 40014: goto L2c;
                case 40015: goto L2c;
                case 40016: goto L2c;
                case 40017: goto L2c;
                case 40018: goto L2c;
                case 40019: goto L2c;
                case 40020: goto L2c;
                case 40021: goto L2c;
                case 40022: goto L2c;
                case 40023: goto L2c;
                case 40024: goto L2c;
                case 40025: goto L2c;
                default: goto L22;
            }
        L22:
            switch(r2) {
                case 60001: goto L2c;
                case 60002: goto L2c;
                default: goto L25;
            }
        L25:
            goto L31
        L26:
            com.applovin.mediation.adapter.MaxAdapterError r0 = com.applovin.mediation.adapter.MaxAdapterError.NO_CONNECTION
            goto L31
        L29:
            com.applovin.mediation.adapter.MaxAdapterError r0 = com.applovin.mediation.adapter.MaxAdapterError.AD_EXPIRED
            goto L31
        L2c:
            com.applovin.mediation.adapter.MaxAdapterError r0 = com.applovin.mediation.adapter.MaxAdapterError.INVALID_CONFIGURATION
            goto L31
        L2f:
            com.applovin.mediation.adapter.MaxAdapterError r0 = com.applovin.mediation.adapter.MaxAdapterError.NO_FILL
        L31:
            com.applovin.mediation.adapter.MaxAdapterError r1 = new com.applovin.mediation.adapter.MaxAdapterError
            r1.<init>(r0, r2, r3)
            return r1
        L37:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.String r3 = "Returned error code for success"
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.mediation.adapters.ByteDanceMediationAdapter.toMaxError(int, java.lang.String):com.applovin.mediation.adapter.MaxAdapterError");
    }

    private PAGBannerSize toPAGBannerSize(MaxAdFormat maxAdFormat, boolean z10, MaxAdapterParameters maxAdapterParameters, Context context) {
        if (z10 && isAdaptiveAdViewFormat(maxAdFormat, maxAdapterParameters)) {
            return getAdaptiveAdSize(maxAdapterParameters, context);
        }
        if (maxAdFormat == MaxAdFormat.BANNER) {
            return PAGBannerSize.BANNER_W_320_H_50;
        }
        if (maxAdFormat == MaxAdFormat.LEADER) {
            return PAGBannerSize.BANNER_W_728_H_90;
        }
        if (maxAdFormat == MaxAdFormat.MREC) {
            return PAGBannerSize.BANNER_W_300_H_250;
        }
        throw new IllegalArgumentException("Unsupported ad view ad format: " + maxAdFormat.getLabel());
    }

    @Override // com.applovin.mediation.adapter.MaxSignalProvider
    public void collectSignal(MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, @Nullable Activity activity, final MaxSignalCollectionListener maxSignalCollectionListener) {
        log("Collecting signal...");
        Context context = getContext(activity);
        PAGSdk.getBiddingToken(context, createBiddingRequestWithParameters(maxAdapterSignalCollectionParameters, context), new BiddingTokenCallback() { // from class: com.applovin.mediation.adapters.ByteDanceMediationAdapter.2
            @Override // com.bytedance.sdk.openadsdk.api.init.BiddingTokenCallback
            public void onBiddingTokenCollected(String str) {
                ByteDanceMediationAdapter.this.log("Signal collection successful");
                maxSignalCollectionListener.onSignalCollected(str);
            }
        });
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public String getAdapterVersion() {
        return "7.5.0.4.0";
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public String getSdkVersion() {
        return PAGSdk.getSDKVersion();
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public void initialize(MaxAdapterInitializationParameters maxAdapterInitializationParameters, @Nullable Activity activity, final MaxAdapter.OnCompletionListener onCompletionListener) {
        if (initialized.compareAndSet(false, true)) {
            status = MaxAdapter.InitializationStatus.INITIALIZING;
            Bundle serverParameters = maxAdapterInitializationParameters.getServerParameters();
            String string = serverParameters.getString("app_id");
            log("Initializing SDK with app id: " + string + "...");
            PAGConfig.Builder builder = new PAGConfig.Builder();
            builder.setUserData(createAdConfigData(serverParameters, Boolean.TRUE));
            Boolean hasUserConsent = maxAdapterInitializationParameters.hasUserConsent();
            if (hasUserConsent != null) {
                builder.setGDPRConsent(hasUserConsent.booleanValue() ? 1 : 0);
            }
            Boolean isDoNotSell = maxAdapterInitializationParameters.isDoNotSell();
            if (isDoNotSell != null) {
                builder.setPAConsent(!isDoNotSell.booleanValue());
            }
            PAGSdk.init(getContext(activity), builder.appId(string).debugLog(maxAdapterInitializationParameters.isTesting()).setAdxId(MAX_EXCHANGE_ID).supportMultiProcess(false).build(), new PAGSdk.PAGInitCallback() { // from class: com.applovin.mediation.adapters.ByteDanceMediationAdapter.1
                @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
                public void fail(int i10, String str) {
                    ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
                    byteDanceMediationAdapter.log("SDK failed to initialize with code: " + i10 + " and message: " + str);
                    MaxAdapter.InitializationStatus unused = ByteDanceMediationAdapter.status = MaxAdapter.InitializationStatus.INITIALIZED_FAILURE;
                    onCompletionListener.onCompletion(ByteDanceMediationAdapter.status, str);
                }

                @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
                public void success() {
                    ByteDanceMediationAdapter.this.log("SDK initialized");
                    MaxAdapter.InitializationStatus unused = ByteDanceMediationAdapter.status = MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS;
                    onCompletionListener.onCompletion(ByteDanceMediationAdapter.status, null);
                }
            });
            return;
        }
        onCompletionListener.onCompletion(status, null);
    }

    @Override // com.applovin.mediation.adapter.MaxAdViewAdapter
    public void loadAdViewAd(MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, @Nullable Activity activity, MaxAdViewAdapterListener maxAdViewAdapterListener) {
        String str;
        boolean z10 = maxAdapterResponseParameters.getServerParameters().getBoolean("is_native");
        String bidResponse = maxAdapterResponseParameters.getBidResponse();
        String thirdPartyAdPlacementId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
        boolean isValidString = AppLovinSdkUtils.isValidString(bidResponse);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Loading ");
        String str2 = "";
        if (!isValidString) {
            str = "";
        } else {
            str = "bidding ";
        }
        sb2.append(str);
        if (z10) {
            str2 = "native ";
        }
        sb2.append(str2);
        sb2.append(maxAdFormat.getLabel());
        sb2.append(" ad for code id \"");
        sb2.append(thirdPartyAdPlacementId);
        sb2.append("\"...");
        log(sb2.toString());
        PAGConfig.setUserData(createAdConfigData(maxAdapterResponseParameters.getServerParameters(), Boolean.FALSE));
        if (z10) {
            PAGNativeRequest pAGNativeRequest = new PAGNativeRequest();
            if (isValidString) {
                pAGNativeRequest.setAdString(bidResponse);
            }
            PAGNativeAd.loadAd(thirdPartyAdPlacementId, pAGNativeRequest, new NativeAdViewListener(maxAdapterResponseParameters, maxAdFormat, activity, maxAdViewAdapterListener));
            return;
        }
        PAGBannerRequest pAGBannerRequest = new PAGBannerRequest(toPAGBannerSize(maxAdFormat, maxAdapterResponseParameters.getServerParameters().getBoolean("adaptive_banner", false), maxAdapterResponseParameters, getContext(activity)));
        if (isValidString) {
            pAGBannerRequest.setAdString(bidResponse);
        }
        PAGBannerAd.loadAd(thirdPartyAdPlacementId, pAGBannerRequest, new AdViewListener(thirdPartyAdPlacementId, maxAdFormat, maxAdViewAdapterListener));
    }

    @Override // com.applovin.mediation.adapters.MediationAdapterBase, com.applovin.mediation.adapter.MaxAppOpenAdapter
    public void loadAppOpenAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxAppOpenAdapterListener maxAppOpenAdapterListener) {
        String str;
        String thirdPartyAdPlacementId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
        String bidResponse = maxAdapterResponseParameters.getBidResponse();
        boolean isValidString = AppLovinSdkUtils.isValidString(bidResponse);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Loading ");
        if (isValidString) {
            str = "bidding ";
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append("app open ad for code id \"");
        sb2.append(thirdPartyAdPlacementId);
        sb2.append("\"...");
        log(sb2.toString());
        PAGConfig.setUserData(createAdConfigData(maxAdapterResponseParameters.getServerParameters(), Boolean.FALSE));
        int i10 = getContext(activity).getApplicationInfo().icon;
        if (i10 <= 0) {
            log("App icon resource id could not be found");
        } else {
            PAGConfig.setAppIconId(i10);
        }
        PAGAppOpenRequest pAGAppOpenRequest = new PAGAppOpenRequest();
        if (isValidString) {
            pAGAppOpenRequest.setAdString(bidResponse);
        }
        AppOpenAdListener appOpenAdListener = new AppOpenAdListener(thirdPartyAdPlacementId, maxAppOpenAdapterListener);
        this.appOpenAdListener = appOpenAdListener;
        PAGAppOpenAd.loadAd(thirdPartyAdPlacementId, pAGAppOpenRequest, appOpenAdListener);
    }

    @Override // com.applovin.mediation.adapter.MaxInterstitialAdapter
    public void loadInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
        String str;
        String thirdPartyAdPlacementId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
        String bidResponse = maxAdapterResponseParameters.getBidResponse();
        boolean isValidString = AppLovinSdkUtils.isValidString(bidResponse);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Loading ");
        if (isValidString) {
            str = "bidding ";
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append("interstitial ad for code id \"");
        sb2.append(thirdPartyAdPlacementId);
        sb2.append("\"...");
        log(sb2.toString());
        PAGConfig.setUserData(createAdConfigData(maxAdapterResponseParameters.getServerParameters(), Boolean.FALSE));
        PAGInterstitialRequest pAGInterstitialRequest = new PAGInterstitialRequest();
        if (isValidString) {
            pAGInterstitialRequest.setAdString(bidResponse);
        }
        InterstitialAdListener interstitialAdListener = new InterstitialAdListener(thirdPartyAdPlacementId, maxInterstitialAdapterListener);
        this.interstitialAdListener = interstitialAdListener;
        PAGInterstitialAd.loadAd(thirdPartyAdPlacementId, pAGInterstitialRequest, interstitialAdListener);
    }

    @Override // com.applovin.mediation.adapters.MediationAdapterBase, com.applovin.mediation.adapter.MaxNativeAdAdapter
    public void loadNativeAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxNativeAdAdapterListener maxNativeAdAdapterListener) {
        String str;
        String bidResponse = maxAdapterResponseParameters.getBidResponse();
        boolean isValidString = AppLovinSdkUtils.isValidString(bidResponse);
        String thirdPartyAdPlacementId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Loading ");
        if (isValidString) {
            str = "bidding ";
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append("native ad for code id \"");
        sb2.append(thirdPartyAdPlacementId);
        sb2.append("\"...");
        log(sb2.toString());
        PAGConfig.setUserData(createAdConfigData(maxAdapterResponseParameters.getServerParameters(), Boolean.FALSE));
        PAGNativeRequest pAGNativeRequest = new PAGNativeRequest();
        if (isValidString) {
            pAGNativeRequest.setAdString(bidResponse);
        }
        NativeAdListener nativeAdListener = new NativeAdListener(maxAdapterResponseParameters, getContext(activity), maxNativeAdAdapterListener);
        this.nativeAdListener = nativeAdListener;
        PAGNativeAd.loadAd(thirdPartyAdPlacementId, pAGNativeRequest, nativeAdListener);
    }

    @Override // com.applovin.mediation.adapter.MaxRewardedAdapter
    public void loadRewardedAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxRewardedAdapterListener maxRewardedAdapterListener) {
        String str;
        String thirdPartyAdPlacementId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
        String bidResponse = maxAdapterResponseParameters.getBidResponse();
        boolean isValidString = AppLovinSdkUtils.isValidString(bidResponse);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Loading ");
        if (isValidString) {
            str = "bidding ";
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append("rewarded ad for code id \"");
        sb2.append(thirdPartyAdPlacementId);
        sb2.append("\"...");
        log(sb2.toString());
        PAGConfig.setUserData(createAdConfigData(maxAdapterResponseParameters.getServerParameters(), Boolean.FALSE));
        PAGRewardedRequest pAGRewardedRequest = new PAGRewardedRequest();
        if (isValidString) {
            pAGRewardedRequest.setAdString(bidResponse);
        }
        RewardedAdListener rewardedAdListener = new RewardedAdListener(thirdPartyAdPlacementId, maxRewardedAdapterListener);
        this.rewardedAdListener = rewardedAdListener;
        PAGRewardedAd.loadAd(thirdPartyAdPlacementId, pAGRewardedRequest, rewardedAdListener);
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public void onDestroy() {
        this.interstitialAdListener = null;
        this.interstitialAd = null;
        this.appOpenAdListener = null;
        this.appOpenAd = null;
        this.rewardedAdListener = null;
        this.rewardedAd = null;
        PAGBannerAd pAGBannerAd = this.adViewAd;
        if (pAGBannerAd != null) {
            pAGBannerAd.destroy();
            this.adViewAd = null;
        }
        this.nativeAd = null;
        this.nativeAdListener = null;
    }

    @Override // com.applovin.mediation.adapters.MediationAdapterBase, com.applovin.mediation.adapter.MaxAdapter
    @Nullable
    public Boolean shouldLoadAdsOnUiThread(MaxAdFormat maxAdFormat) {
        return Boolean.FALSE;
    }

    @Override // com.applovin.mediation.adapters.MediationAdapterBase, com.applovin.mediation.adapter.MaxAdapter
    @Nullable
    public Boolean shouldShowAdsOnUiThread(MaxAdFormat maxAdFormat) {
        return Boolean.TRUE;
    }

    @Override // com.applovin.mediation.adapters.MediationAdapterBase, com.applovin.mediation.adapter.MaxAppOpenAdapter
    public void showAppOpenAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxAppOpenAdapterListener maxAppOpenAdapterListener) {
        String thirdPartyAdPlacementId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
        log("Showing app open ad for code id \"" + thirdPartyAdPlacementId + "\"...");
        this.appOpenAd.setAdInteractionListener(this.appOpenAdListener);
        this.appOpenAd.show(activity);
    }

    @Override // com.applovin.mediation.adapter.MaxInterstitialAdapter
    public void showInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
        String thirdPartyAdPlacementId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
        log("Showing interstitial ad for code id \"" + thirdPartyAdPlacementId + "\"...");
        this.interstitialAd.setAdInteractionListener(this.interstitialAdListener);
        this.interstitialAd.show(activity);
    }

    @Override // com.applovin.mediation.adapter.MaxRewardedAdapter
    public void showRewardedAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxRewardedAdapterListener maxRewardedAdapterListener) {
        String thirdPartyAdPlacementId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
        log("Showing rewarded ad for code id \"" + thirdPartyAdPlacementId + "\"...");
        configureReward(maxAdapterResponseParameters);
        this.rewardedAd.setAdInteractionListener(this.rewardedAdListener);
        this.rewardedAd.show(activity);
    }
}
