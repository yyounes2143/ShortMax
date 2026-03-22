package com.applovin.mediation.adapters;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
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
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.listeners.BannerAdEventListener;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import com.inmobi.ads.listeners.NativeAdEventListener;
import com.inmobi.compliance.InMobiPrivacyCompliance;
import com.inmobi.sdk.InMobiSdk;
import com.inmobi.sdk.SdkInitializationListener;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class InMobiMediationAdapter extends MediationAdapterBase implements MaxAdViewAdapter, MaxInterstitialAdapter, MaxRewardedAdapter, MaxSignalProvider {
    private static final int DEFAULT_IMAGE_TASK_TIMEOUT_SECONDS = 5;
    private static final float DEFAULT_MEDIA_CONTENT_ASPECT_RATIO = 1.9050859f;
    private static final String KEY_PARTNER_GDPR_APPLIES = "partner_gdpr_applies";
    private static final String KEY_PARTNER_GDPR_CONSENT = "partner_gdpr_consent_available";
    private static final AtomicBoolean initialized = new AtomicBoolean();
    private static MaxAdapter.InitializationStatus status;
    private InMobiBanner adView;
    private InMobiInterstitial interstitialAd;
    private InMobiNative nativeAd;
    private InMobiInterstitial rewardedAd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applovin.mediation.adapters.InMobiMediationAdapter$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode;

        static {
            int[] iArr = new int[InMobiAdRequestStatus.StatusCode.values().length];
            $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode = iArr;
            try {
                iArr[InMobiAdRequestStatus.StatusCode.NO_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.NO_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.REQUEST_INVALID.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.GET_SIGNALS_CALLED_WHILE_LOADING.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.CALLED_FROM_WRONG_THREAD.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.LOW_MEMORY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.INVALID_RESPONSE_IN_LOAD.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.SERVER_ERROR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.AD_ACTIVE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.LOAD_WITH_RESPONSE_CALLED_WHILE_LOADING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.REQUEST_PENDING.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.CONFIGURATION_ERROR.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    /* loaded from: classes2.dex */
    private class AdViewListener extends BannerAdEventListener {
        final MaxAdViewAdapterListener listener;

        AdViewListener(MaxAdViewAdapterListener maxAdViewAdapterListener) {
            this.listener = maxAdViewAdapterListener;
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public /* bridge */ /* synthetic */ void onAdClicked(@NonNull InMobiBanner inMobiBanner, Map map) {
            onAdClicked2(inMobiBanner, (Map<Object, Object>) map);
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdDismissed(@NonNull InMobiBanner inMobiBanner) {
            InMobiMediationAdapter.this.log("AdView collapsed");
            this.listener.onAdViewAdCollapsed();
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdDisplayed(@NonNull InMobiBanner inMobiBanner) {
            InMobiMediationAdapter.this.log("AdView expanded");
            this.listener.onAdViewAdExpanded();
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onUserLeftApplication(@NonNull InMobiBanner inMobiBanner) {
            InMobiMediationAdapter.this.log("AdView will leave application");
        }

        /* renamed from: onAdClicked  reason: avoid collision after fix types in other method */
        public void onAdClicked2(@NonNull InMobiBanner inMobiBanner, Map<Object, Object> map) {
            InMobiMediationAdapter.this.log("AdView clicked");
            this.listener.onAdViewAdClicked();
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdImpression(@NonNull InMobiBanner inMobiBanner) {
            InMobiMediationAdapter.this.log("AdView impression tracked");
            this.listener.onAdViewAdDisplayed();
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdLoadFailed(@NonNull InMobiBanner inMobiBanner, InMobiAdRequestStatus inMobiAdRequestStatus) {
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("AdView failed to load with error code " + inMobiAdRequestStatus.getStatusCode() + " and message: " + inMobiAdRequestStatus.getMessage());
            this.listener.onAdViewAdLoadFailed(InMobiMediationAdapter.toMaxError(inMobiAdRequestStatus));
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdLoadSucceeded(@NonNull InMobiBanner inMobiBanner, @NonNull AdMetaInfo adMetaInfo) {
            InMobiMediationAdapter.this.log("AdView loaded");
            if (!TextUtils.isEmpty(adMetaInfo.getCreativeID())) {
                Bundle bundle = new Bundle(1);
                bundle.putString(CampaignEx.JSON_KEY_CREATIVE_ID, adMetaInfo.getCreativeID());
                this.listener.onAdViewAdLoaded(inMobiBanner, bundle);
                return;
            }
            this.listener.onAdViewAdLoaded(inMobiBanner);
        }
    }

    /* loaded from: classes2.dex */
    private class InterstitialListener extends InterstitialAdEventListener {
        final MaxInterstitialAdapterListener listener;

        InterstitialListener(MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
            this.listener = maxInterstitialAdapterListener;
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public /* bridge */ /* synthetic */ void onAdClicked(@NonNull InMobiInterstitial inMobiInterstitial, Map map) {
            onAdClicked2(inMobiInterstitial, (Map<Object, Object>) map);
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDismissed(@NonNull InMobiInterstitial inMobiInterstitial) {
            InMobiMediationAdapter.this.log("Interstitial hidden");
            this.listener.onInterstitialAdHidden();
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDisplayFailed(@NonNull InMobiInterstitial inMobiInterstitial) {
            InMobiMediationAdapter.this.log("Interstitial failed to display");
            this.listener.onInterstitialAdDisplayFailed(MaxAdapterError.AD_DISPLAY_FAILED);
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDisplayed(@NonNull InMobiInterstitial inMobiInterstitial, @NonNull AdMetaInfo adMetaInfo) {
            InMobiMediationAdapter.this.log("Interstitial did show");
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdWillDisplay(@NonNull InMobiInterstitial inMobiInterstitial) {
            InMobiMediationAdapter.this.log("Interstitial will show");
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onUserLeftApplication(@NonNull InMobiInterstitial inMobiInterstitial) {
            InMobiMediationAdapter.this.log("Interstitial will leave application");
        }

        /* renamed from: onAdClicked  reason: avoid collision after fix types in other method */
        public void onAdClicked2(@NonNull InMobiInterstitial inMobiInterstitial, Map<Object, Object> map) {
            InMobiMediationAdapter.this.log("Interstitial clicked");
            this.listener.onInterstitialAdClicked();
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdFetchSuccessful(@NonNull InMobiInterstitial inMobiInterstitial, @NonNull AdMetaInfo adMetaInfo) {
            InMobiMediationAdapter.this.log("Interstitial request succeeded");
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdImpression(@NonNull InMobiInterstitial inMobiInterstitial) {
            InMobiMediationAdapter.this.log("Interstitial impression tracked");
            this.listener.onInterstitialAdDisplayed();
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdLoadFailed(@NonNull InMobiInterstitial inMobiInterstitial, InMobiAdRequestStatus inMobiAdRequestStatus) {
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("Interstitial failed to load with error code " + inMobiAdRequestStatus.getStatusCode() + " and message: " + inMobiAdRequestStatus.getMessage());
            this.listener.onInterstitialAdLoadFailed(InMobiMediationAdapter.toMaxError(inMobiAdRequestStatus));
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdLoadSucceeded(@NonNull InMobiInterstitial inMobiInterstitial, @NonNull AdMetaInfo adMetaInfo) {
            InMobiMediationAdapter.this.log("Interstitial loaded");
            if (!TextUtils.isEmpty(adMetaInfo.getCreativeID())) {
                Bundle bundle = new Bundle(1);
                bundle.putString(CampaignEx.JSON_KEY_CREATIVE_ID, adMetaInfo.getCreativeID());
                this.listener.onInterstitialAdLoaded(bundle);
                return;
            }
            this.listener.onInterstitialAdLoaded();
        }
    }

    /* loaded from: classes2.dex */
    private class MaxInMobiNativeAd extends MaxNativeAd {
        private final MaxAdFormat format;
        private final MaxAdapterListener listener;

        public MaxInMobiNativeAd(MaxAdapterListener maxAdapterListener, MaxNativeAd.Builder builder, MaxAdFormat maxAdFormat) {
            super(builder);
            this.listener = maxAdapterListener;
            this.format = maxAdFormat;
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAd
        public boolean prepareForInteraction(List<View> list, ViewGroup viewGroup) {
            final InMobiNative inMobiNative = InMobiMediationAdapter.this.nativeAd;
            if (inMobiNative == null) {
                InMobiMediationAdapter.this.e("Failed to register native ad views: native ad is null.");
                return false;
            }
            final FrameLayout frameLayout = (FrameLayout) getMediaView();
            frameLayout.post(new Runnable() { // from class: com.applovin.mediation.adapters.InMobiMediationAdapter.MaxInMobiNativeAd.1
                @Override // java.lang.Runnable
                public void run() {
                    int i10;
                    int width = frameLayout.getWidth();
                    int height = frameLayout.getHeight();
                    MaxAdFormat unused = MaxInMobiNativeAd.this.format;
                    MaxAdFormat maxAdFormat = MaxAdFormat.BANNER;
                    ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                    if (width == 0 && layoutParams != null && ((i10 = layoutParams.width) == -2 || i10 == -1)) {
                        width = (int) (height * MaxInMobiNativeAd.this.getMediaContentAspectRatio());
                    }
                    View primaryViewOfWidth = inMobiNative.getPrimaryViewOfWidth(frameLayout.getContext(), null, frameLayout, width);
                    if (primaryViewOfWidth == null) {
                        return;
                    }
                    frameLayout.addView(primaryViewOfWidth);
                }
            });
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.applovin.mediation.adapters.InMobiMediationAdapter.MaxInMobiNativeAd.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InMobiMediationAdapter.this.log("Native ad clicked from click listener");
                    inMobiNative.reportAdClickAndOpenLandingPage();
                }
            };
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(onClickListener);
                }
            }
            return true;
        }
    }

    /* loaded from: classes2.dex */
    private class NativeAdListener extends NativeAdEventListener {
        private final Context context;
        private final MaxNativeAdAdapterListener listener;
        private final float mediaContentAspectRatio;
        private final String placementId;
        private final Bundle serverParameters;

        NativeAdListener(MaxAdapterResponseParameters maxAdapterResponseParameters, Context context, MaxNativeAdAdapterListener maxNativeAdAdapterListener) {
            this.placementId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
            this.serverParameters = maxAdapterResponseParameters.getServerParameters();
            this.mediaContentAspectRatio = InMobiMediationAdapter.this.getNativeAdMediaContentAspectRatio(maxAdapterResponseParameters);
            this.context = context;
            this.listener = maxNativeAdAdapterListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleNativeAdLoaded(@NonNull final InMobiNative inMobiNative, @NonNull final AdMetaInfo adMetaInfo, final Drawable drawable, final Context context) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.mediation.adapters.InMobiMediationAdapter.NativeAdListener.2
                @Override // java.lang.Runnable
                public void run() {
                    new ImageView(context).setImageDrawable(drawable);
                    FrameLayout frameLayout = new FrameLayout(context);
                    MaxNativeAd.Builder builder = new MaxNativeAd.Builder();
                    MaxAdFormat maxAdFormat = MaxAdFormat.NATIVE;
                    MaxNativeAd.Builder starRating = builder.setAdFormat(maxAdFormat).setTitle(inMobiNative.getAdTitle()).setBody(inMobiNative.getAdDescription()).setCallToAction(inMobiNative.getAdCtaText()).setIcon(new MaxNativeAd.MaxNativeAdImage(drawable)).setMediaView(frameLayout).setMediaContentAspectRatio(NativeAdListener.this.mediaContentAspectRatio).setStarRating(Double.valueOf(inMobiNative.getAdRating()));
                    NativeAdListener nativeAdListener = NativeAdListener.this;
                    MaxInMobiNativeAd maxInMobiNativeAd = new MaxInMobiNativeAd(nativeAdListener.listener, starRating, maxAdFormat);
                    if (AppLovinSdkUtils.isValidString(adMetaInfo.getCreativeID())) {
                        Bundle bundle = new Bundle(1);
                        bundle.putString(CampaignEx.JSON_KEY_CREATIVE_ID, adMetaInfo.getCreativeID());
                        NativeAdListener.this.listener.onNativeAdLoaded(maxInMobiNativeAd, bundle);
                        return;
                    }
                    NativeAdListener.this.listener.onNativeAdLoaded(maxInMobiNativeAd, null);
                }
            });
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdClicked(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter.this.log("Native ad clicked");
            this.listener.onNativeAdClicked();
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdFullScreenDismissed(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter.this.log("Native ad fullscreen dismissed");
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdFullScreenDisplayed(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter.this.log("Native ad fullscreen displayed");
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdFullScreenWillDisplay(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter.this.log("Native ad fullscreen will display");
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdStatusChanged(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter.this.log("Native ad status changed");
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onUserWillLeaveApplication(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter.this.log("Native ad user will leave application");
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdImpression(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter.this.log("Native ad shown");
            this.listener.onNativeAdDisplayed(null);
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdLoadFailed(@NonNull InMobiNative inMobiNative, @NonNull InMobiAdRequestStatus inMobiAdRequestStatus) {
            MaxAdapterError maxError = InMobiMediationAdapter.toMaxError(inMobiAdRequestStatus);
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("Native ad failed to load with error " + maxError);
            this.listener.onNativeAdLoadFailed(maxError);
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdLoadSucceeded(final InMobiNative inMobiNative, @NonNull final AdMetaInfo adMetaInfo) {
            if (InMobiMediationAdapter.this.nativeAd != null && inMobiNative != null && InMobiMediationAdapter.this.nativeAd == inMobiNative) {
                if (AppLovinSdkUtils.isValidString(BundleUtils.getString("template", "", this.serverParameters)) && TextUtils.isEmpty(inMobiNative.getAdTitle())) {
                    InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
                    inMobiMediationAdapter.e("Native ad (" + inMobiNative + ") does not have required assets.");
                    this.listener.onNativeAdLoadFailed(MaxAdapterError.MISSING_REQUIRED_NATIVE_AD_ASSETS);
                    return;
                }
                InMobiMediationAdapter inMobiMediationAdapter2 = InMobiMediationAdapter.this;
                inMobiMediationAdapter2.log("Native ad loaded: " + this.placementId);
                InMobiMediationAdapter.this.getCachingExecutorService().execute(new Runnable() { // from class: com.applovin.mediation.adapters.InMobiMediationAdapter.NativeAdListener.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Drawable fetchNativeAdIcon = InMobiMediationAdapter.this.fetchNativeAdIcon(inMobiNative.getAdIconUrl(), NativeAdListener.this.serverParameters, NativeAdListener.this.context);
                        NativeAdListener nativeAdListener = NativeAdListener.this;
                        nativeAdListener.handleNativeAdLoaded(inMobiNative, adMetaInfo, fetchNativeAdIcon, nativeAdListener.context);
                    }
                });
                return;
            }
            InMobiMediationAdapter.this.log("Native ad failed to load: no fill");
            this.listener.onNativeAdLoadFailed(MaxAdapterError.NO_FILL);
        }
    }

    /* loaded from: classes2.dex */
    private class NativeAdViewListener extends NativeAdEventListener {
        private final WeakReference<Activity> activityRef;
        private final MaxAdFormat adFormat;
        private final MaxAdViewAdapterListener listener;
        private final float mediaContentAspectRatio;
        private final String placementId;
        private final Bundle serverParameters;

        NativeAdViewListener(MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, @Nullable Activity activity, MaxAdViewAdapterListener maxAdViewAdapterListener) {
            this.placementId = maxAdapterResponseParameters.getThirdPartyAdPlacementId();
            this.serverParameters = maxAdapterResponseParameters.getServerParameters();
            this.mediaContentAspectRatio = InMobiMediationAdapter.this.getNativeAdMediaContentAspectRatio(maxAdapterResponseParameters);
            this.adFormat = maxAdFormat;
            this.activityRef = new WeakReference<>(activity);
            this.listener = maxAdViewAdapterListener;
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdClicked(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad clicked");
            this.listener.onAdViewAdClicked();
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdFullScreenDismissed(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad fullscreen dismissed");
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdFullScreenDisplayed(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad fullscreen displayed");
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdFullScreenWillDisplay(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad fullscreen will display");
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdStatusChanged(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad status changed");
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onUserWillLeaveApplication(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad user will leave application");
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdImpression(@NonNull InMobiNative inMobiNative) {
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad shown");
            this.listener.onAdViewAdDisplayed();
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdLoadFailed(@NonNull InMobiNative inMobiNative, @NonNull InMobiAdRequestStatus inMobiAdRequestStatus) {
            MaxAdapterError maxError = InMobiMediationAdapter.toMaxError(inMobiAdRequestStatus);
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad failed to load with error " + maxError);
            this.listener.onAdViewAdLoadFailed(maxError);
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdLoadSucceeded(final InMobiNative inMobiNative, @NonNull final AdMetaInfo adMetaInfo) {
            if (InMobiMediationAdapter.this.nativeAd != null && inMobiNative != null && InMobiMediationAdapter.this.nativeAd == inMobiNative) {
                InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
                inMobiMediationAdapter.log("Native " + this.adFormat.getLabel() + " ad loaded: " + this.placementId);
                final Context context = InMobiMediationAdapter.this.getContext(this.activityRef.get());
                InMobiMediationAdapter.this.getCachingExecutorService().execute(new Runnable() { // from class: com.applovin.mediation.adapters.InMobiMediationAdapter.NativeAdViewListener.1
                    @Override // java.lang.Runnable
                    public void run() {
                        final Drawable fetchNativeAdIcon = InMobiMediationAdapter.this.fetchNativeAdIcon(inMobiNative.getAdIconUrl(), NativeAdViewListener.this.serverParameters, context);
                        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.mediation.adapters.InMobiMediationAdapter.NativeAdViewListener.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MaxNativeAdView createMaxNativeAdView;
                                String str;
                                new ImageView(context).setImageDrawable(fetchNativeAdIcon);
                                MaxNativeAd.Builder mediaContentAspectRatio = new MaxNativeAd.Builder().setAdFormat(NativeAdViewListener.this.adFormat).setTitle(inMobiNative.getAdTitle()).setBody(inMobiNative.getAdDescription()).setCallToAction(inMobiNative.getAdCtaText()).setIcon(new MaxNativeAd.MaxNativeAdImage(fetchNativeAdIcon)).setMediaView(new FrameLayout(context)).setMediaContentAspectRatio(NativeAdViewListener.this.mediaContentAspectRatio);
                                NativeAdViewListener nativeAdViewListener = NativeAdViewListener.this;
                                MaxInMobiNativeAd maxInMobiNativeAd = new MaxInMobiNativeAd(nativeAdViewListener.listener, mediaContentAspectRatio, NativeAdViewListener.this.adFormat);
                                String string = BundleUtils.getString("template", "", NativeAdViewListener.this.serverParameters);
                                if (string.contains("vertical")) {
                                    if (!string.equals("vertical")) {
                                        createMaxNativeAdView = InMobiMediationAdapter.this.createMaxNativeAdView(maxInMobiNativeAd, string);
                                    } else {
                                        if (NativeAdViewListener.this.adFormat == MaxAdFormat.LEADER) {
                                            str = "vertical_leader_template";
                                        } else {
                                            str = "vertical_media_banner_template";
                                        }
                                        createMaxNativeAdView = InMobiMediationAdapter.this.createMaxNativeAdView(maxInMobiNativeAd, str);
                                    }
                                } else {
                                    InMobiMediationAdapter inMobiMediationAdapter2 = InMobiMediationAdapter.this;
                                    if (!AppLovinSdkUtils.isValidString(string)) {
                                        string = "media_banner_template";
                                    }
                                    createMaxNativeAdView = inMobiMediationAdapter2.createMaxNativeAdView(maxInMobiNativeAd, string);
                                }
                                maxInMobiNativeAd.prepareForInteraction(InMobiMediationAdapter.this.getClickableViews(createMaxNativeAdView), createMaxNativeAdView);
                                if (AppLovinSdkUtils.isValidString(adMetaInfo.getCreativeID())) {
                                    Bundle bundle = new Bundle(1);
                                    bundle.putString(CampaignEx.JSON_KEY_CREATIVE_ID, adMetaInfo.getCreativeID());
                                    NativeAdViewListener.this.listener.onAdViewAdLoaded(createMaxNativeAdView, bundle);
                                    return;
                                }
                                NativeAdViewListener.this.listener.onAdViewAdLoaded(createMaxNativeAdView);
                            }
                        });
                    }
                });
                return;
            }
            InMobiMediationAdapter inMobiMediationAdapter2 = InMobiMediationAdapter.this;
            inMobiMediationAdapter2.log("Native " + this.adFormat.getLabel() + " ad failed to load: no fill");
            this.listener.onAdViewAdLoadFailed(MaxAdapterError.NO_FILL);
        }
    }

    /* loaded from: classes2.dex */
    private class RewardedAdListener extends InterstitialAdEventListener {
        private boolean hasGrantedReward;
        final MaxRewardedAdapterListener listener;

        RewardedAdListener(MaxRewardedAdapterListener maxRewardedAdapterListener) {
            this.listener = maxRewardedAdapterListener;
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public /* bridge */ /* synthetic */ void onAdClicked(@NonNull InMobiInterstitial inMobiInterstitial, Map map) {
            onAdClicked2(inMobiInterstitial, (Map<Object, Object>) map);
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDismissed(@NonNull InMobiInterstitial inMobiInterstitial) {
            InMobiMediationAdapter.this.log("Rewarded ad hidden");
            if (this.hasGrantedReward || InMobiMediationAdapter.this.shouldAlwaysRewardUser()) {
                MaxReward reward = InMobiMediationAdapter.this.getReward();
                InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
                inMobiMediationAdapter.log("Rewarded user with reward: " + reward);
                this.listener.onUserRewarded(reward);
            }
            this.listener.onRewardedAdHidden();
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDisplayFailed(@NonNull InMobiInterstitial inMobiInterstitial) {
            InMobiMediationAdapter.this.log("Rewarded ad failed to display");
            this.listener.onRewardedAdDisplayFailed(MaxAdapterError.AD_DISPLAY_FAILED);
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDisplayed(@NonNull InMobiInterstitial inMobiInterstitial, @NonNull AdMetaInfo adMetaInfo) {
            InMobiMediationAdapter.this.log("Rewarded ad did show");
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdWillDisplay(@NonNull InMobiInterstitial inMobiInterstitial) {
            InMobiMediationAdapter.this.log("Rewarded ad did show");
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onRewardsUnlocked(@NonNull InMobiInterstitial inMobiInterstitial, Map<Object, Object> map) {
            InMobiMediationAdapter.this.log("Rewarded ad granted reward");
            this.hasGrantedReward = true;
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onUserLeftApplication(@NonNull InMobiInterstitial inMobiInterstitial) {
            InMobiMediationAdapter.this.log("Rewarded ad will leave application");
        }

        /* renamed from: onAdClicked  reason: avoid collision after fix types in other method */
        public void onAdClicked2(@NonNull InMobiInterstitial inMobiInterstitial, Map<Object, Object> map) {
            InMobiMediationAdapter.this.log("Rewarded ad clicked");
            this.listener.onRewardedAdClicked();
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdFetchSuccessful(@NonNull InMobiInterstitial inMobiInterstitial, @NonNull AdMetaInfo adMetaInfo) {
            InMobiMediationAdapter.this.log("Rewarded ad request succeeded");
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdImpression(@NonNull InMobiInterstitial inMobiInterstitial) {
            InMobiMediationAdapter.this.log("Rewarded ad impression tracked");
            this.listener.onRewardedAdDisplayed();
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdLoadFailed(@NonNull InMobiInterstitial inMobiInterstitial, InMobiAdRequestStatus inMobiAdRequestStatus) {
            InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
            inMobiMediationAdapter.log("Rewarded ad failed to load with error code " + inMobiAdRequestStatus.getStatusCode() + " and message: " + inMobiAdRequestStatus.getMessage());
            this.listener.onRewardedAdLoadFailed(InMobiMediationAdapter.toMaxError(inMobiAdRequestStatus));
        }

        @Override // com.inmobi.ads.listeners.AdEventListener
        public void onAdLoadSucceeded(@NonNull InMobiInterstitial inMobiInterstitial, @NonNull AdMetaInfo adMetaInfo) {
            InMobiMediationAdapter.this.log("Rewarded ad loaded");
            if (!TextUtils.isEmpty(adMetaInfo.getCreativeID())) {
                Bundle bundle = new Bundle(1);
                bundle.putString(CampaignEx.JSON_KEY_CREATIVE_ID, adMetaInfo.getCreativeID());
                this.listener.onRewardedAdLoaded(bundle);
                return;
            }
            this.listener.onRewardedAdLoaded();
        }
    }

    public InMobiMediationAdapter(AppLovinSdk appLovinSdk) {
        super(appLovinSdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MaxNativeAdView createMaxNativeAdView(MaxNativeAd maxNativeAd, String str) {
        return new MaxNativeAdView(maxNativeAd, str, getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable fetchNativeAdIcon(@NonNull String str, Bundle bundle, Context context) {
        if (TextUtils.isEmpty(str)) {
            log("Native ad icon url " + str + " is not valid");
            return null;
        }
        log("Adding native ad icon (" + str + ") to queue to be fetched");
        try {
            return createDrawableFuture(str, context.getResources()).get(BundleUtils.getInt("image_task_timeout_seconds", 5, bundle), TimeUnit.SECONDS);
        } catch (Throwable th2) {
            e("Failed to fetch icon image from URL: " + str, th2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<View> getClickableViews(MaxNativeAdView maxNativeAdView) {
        return maxNativeAdView.getClickableViews();
    }

    private JSONObject getConsentJSONObject(MaxAdapterParameters maxAdapterParameters) {
        JSONObject jSONObject = new JSONObject();
        try {
            Boolean hasUserConsent = maxAdapterParameters.hasUserConsent();
            if (hasUserConsent != null) {
                jSONObject.put(KEY_PARTNER_GDPR_CONSENT, hasUserConsent);
            }
        } catch (JSONException e10) {
            log("Failed to create consent JSON object", e10);
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext(@Nullable Activity activity) {
        if (activity != null) {
            return activity.getApplicationContext();
        }
        return getApplicationContext();
    }

    private Map<String, String> getExtras() {
        HashMap hashMap = new HashMap(2);
        hashMap.put("tp", "c_applovin");
        hashMap.put("tp-ver", AppLovinSdk.VERSION);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getNativeAdMediaContentAspectRatio(MaxAdapterParameters maxAdapterParameters) {
        Object obj = maxAdapterParameters.getLocalExtraParameters().get("native_ad_media_content_aspect_ratio");
        if (obj instanceof Number) {
            return ((Number) obj).floatValue();
        }
        return DEFAULT_MEDIA_CONTENT_ASPECT_RATIO;
    }

    private InMobiInterstitial loadFullscreenAd(long j10, MaxAdapterResponseParameters maxAdapterResponseParameters, InterstitialAdEventListener interstitialAdEventListener, @Nullable Activity activity) {
        InMobiInterstitial inMobiInterstitial = new InMobiInterstitial(getContext(activity), j10, interstitialAdEventListener);
        inMobiInterstitial.setExtras(getExtras());
        updatePrivacySettings(maxAdapterResponseParameters);
        String bidResponse = maxAdapterResponseParameters.getBidResponse();
        if (!TextUtils.isEmpty(bidResponse)) {
            inMobiInterstitial.load(bidResponse.getBytes());
        } else {
            inMobiInterstitial.load();
        }
        return inMobiInterstitial;
    }

    private boolean showFullscreenAd(InMobiInterstitial inMobiInterstitial) {
        if (inMobiInterstitial.isReady()) {
            inMobiInterstitial.show();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MaxAdapterError toMaxError(InMobiAdRequestStatus inMobiAdRequestStatus) {
        InMobiAdRequestStatus.StatusCode statusCode = inMobiAdRequestStatus.getStatusCode();
        MaxAdapterError maxAdapterError = MaxAdapterError.UNSPECIFIED;
        switch (AnonymousClass2.$SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[statusCode.ordinal()]) {
            case 2:
                maxAdapterError = MaxAdapterError.NO_CONNECTION;
                break;
            case 3:
                maxAdapterError = MaxAdapterError.NO_FILL;
                break;
            case 4:
                maxAdapterError = MaxAdapterError.BAD_REQUEST;
                break;
            case 5:
                maxAdapterError = MaxAdapterError.TIMEOUT;
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                maxAdapterError = MaxAdapterError.INTERNAL_ERROR;
                break;
            case 13:
                maxAdapterError = MaxAdapterError.SERVER_ERROR;
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                maxAdapterError = MaxAdapterError.INVALID_LOAD_STATE;
                break;
            case 19:
                maxAdapterError = MaxAdapterError.AD_EXPIRED;
                break;
            case 20:
            case 21:
                maxAdapterError = MaxAdapterError.INVALID_CONFIGURATION;
                break;
        }
        return new MaxAdapterError(maxAdapterError, statusCode.ordinal(), inMobiAdRequestStatus.getMessage());
    }

    private void updatePrivacySettings(MaxAdapterParameters maxAdapterParameters) {
        InMobiSdk.setPartnerGDPRConsent(getConsentJSONObject(maxAdapterParameters));
        Boolean isDoNotSell = maxAdapterParameters.isDoNotSell();
        if (isDoNotSell != null) {
            InMobiPrivacyCompliance.setDoNotSell(isDoNotSell.booleanValue());
        }
    }

    @Override // com.applovin.mediation.adapter.MaxSignalProvider
    public void collectSignal(MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, @Nullable Activity activity, MaxSignalCollectionListener maxSignalCollectionListener) {
        if (!InMobiSdk.isSDKInitialized()) {
            maxSignalCollectionListener.onSignalCollectionFailed("InMobi SDK initialization failed.");
            return;
        }
        updatePrivacySettings(maxAdapterSignalCollectionParameters);
        maxSignalCollectionListener.onSignalCollected(InMobiSdk.getToken(getExtras(), null));
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public String getAdapterVersion() {
        return "10.8.7.0";
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public String getSdkVersion() {
        return InMobiSdk.getVersion();
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public void initialize(MaxAdapterInitializationParameters maxAdapterInitializationParameters, @Nullable Activity activity, final MaxAdapter.OnCompletionListener onCompletionListener) {
        InMobiSdk.LogLevel logLevel;
        if (initialized.compareAndSet(false, true)) {
            String string = maxAdapterInitializationParameters.getServerParameters().getString("account_id");
            log("Initializing InMobi SDK with account id: " + string + "...");
            Context context = getContext(activity);
            status = MaxAdapter.InitializationStatus.INITIALIZING;
            JSONObject consentJSONObject = getConsentJSONObject(maxAdapterInitializationParameters);
            if (string == null) {
                log("InMobi SDK initialization failed with null account id");
                MaxAdapter.InitializationStatus initializationStatus = MaxAdapter.InitializationStatus.INITIALIZED_FAILURE;
                status = initializationStatus;
                onCompletionListener.onCompletion(initializationStatus, "Account id is null");
                return;
            }
            InMobiSdk.init(context, string, consentJSONObject, new SdkInitializationListener() { // from class: com.applovin.mediation.adapters.InMobiMediationAdapter.1
                @Override // com.inmobi.sdk.SdkInitializationListener
                public void onInitializationComplete(@Nullable Error error) {
                    if (error != null) {
                        InMobiMediationAdapter inMobiMediationAdapter = InMobiMediationAdapter.this;
                        inMobiMediationAdapter.log("InMobi SDK initialization failed with error: " + error.getMessage());
                        MaxAdapter.InitializationStatus unused = InMobiMediationAdapter.status = MaxAdapter.InitializationStatus.INITIALIZED_FAILURE;
                        onCompletionListener.onCompletion(InMobiMediationAdapter.status, error.getMessage());
                        return;
                    }
                    InMobiMediationAdapter.this.log("InMobi SDK successfully initialized.");
                    MaxAdapter.InitializationStatus unused2 = InMobiMediationAdapter.status = MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS;
                    onCompletionListener.onCompletion(InMobiMediationAdapter.status, null);
                }
            });
            if (maxAdapterInitializationParameters.isTesting()) {
                logLevel = InMobiSdk.LogLevel.DEBUG;
            } else {
                logLevel = InMobiSdk.LogLevel.ERROR;
            }
            InMobiSdk.setLogLevel(logLevel);
            return;
        }
        onCompletionListener.onCompletion(status, null);
    }

    @Override // com.applovin.mediation.adapter.MaxAdViewAdapter
    public void loadAdViewAd(MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, @Nullable Activity activity, MaxAdViewAdapterListener maxAdViewAdapterListener) {
        String str;
        int i10;
        int i11;
        long parseLong = Long.parseLong(maxAdapterResponseParameters.getThirdPartyAdPlacementId());
        boolean z10 = maxAdapterResponseParameters.getServerParameters().getBoolean("is_native");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Loading");
        if (z10) {
            str = " native ";
        } else {
            str = " ";
        }
        sb2.append(str);
        sb2.append(maxAdFormat.getLabel());
        sb2.append(" AdView ad for placement: ");
        sb2.append(parseLong);
        sb2.append("...");
        log(sb2.toString());
        if (!InMobiSdk.isSDKInitialized()) {
            log("InMobi SDK not successfully initialized: failing " + maxAdFormat.getLabel() + " ad load...");
            maxAdViewAdapterListener.onAdViewAdLoadFailed(MaxAdapterError.NOT_INITIALIZED);
            return;
        }
        updatePrivacySettings(maxAdapterResponseParameters);
        String bidResponse = maxAdapterResponseParameters.getBidResponse();
        boolean isValidString = AppLovinSdkUtils.isValidString(bidResponse);
        Context context = getContext(activity);
        if (z10) {
            InMobiNative inMobiNative = new InMobiNative(context, parseLong, new NativeAdViewListener(maxAdapterResponseParameters, maxAdFormat, activity, maxAdViewAdapterListener));
            this.nativeAd = inMobiNative;
            inMobiNative.setExtras(getExtras());
            if (isValidString) {
                this.nativeAd.load(bidResponse.getBytes());
                return;
            } else {
                this.nativeAd.load();
                return;
            }
        }
        InMobiBanner inMobiBanner = new InMobiBanner(context, parseLong);
        this.adView = inMobiBanner;
        inMobiBanner.setExtras(getExtras());
        this.adView.setAnimationType(InMobiBanner.AnimationType.ANIMATION_OFF);
        this.adView.setEnableAutoRefresh(false);
        this.adView.setListener(new AdViewListener(maxAdViewAdapterListener));
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        if (maxAdFormat == MaxAdFormat.BANNER) {
            i10 = 320;
            i11 = 50;
        } else if (maxAdFormat == MaxAdFormat.LEADER) {
            i10 = 728;
            i11 = 90;
        } else if (maxAdFormat == MaxAdFormat.MREC) {
            i10 = 300;
            i11 = 250;
        } else {
            throw new IllegalArgumentException("Unsupported ad format: " + maxAdFormat);
        }
        this.adView.setLayoutParams(new LinearLayout.LayoutParams(Math.round(i10 * displayMetrics.density), Math.round(i11 * displayMetrics.density)));
        if (isValidString) {
            this.adView.load(bidResponse.getBytes());
        } else {
            this.adView.load();
        }
    }

    @Override // com.applovin.mediation.adapter.MaxInterstitialAdapter
    public void loadInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
        long parseLong = Long.parseLong(maxAdapterResponseParameters.getThirdPartyAdPlacementId());
        log("Loading interstitial ad for placement: " + parseLong + "...");
        if (!InMobiSdk.isSDKInitialized()) {
            log("InMobi SDK not successfully initialized: failing interstitial ad load...");
            maxInterstitialAdapterListener.onInterstitialAdLoadFailed(MaxAdapterError.NOT_INITIALIZED);
            return;
        }
        this.interstitialAd = loadFullscreenAd(parseLong, maxAdapterResponseParameters, new InterstitialListener(maxInterstitialAdapterListener), activity);
    }

    @Override // com.applovin.mediation.adapters.MediationAdapterBase, com.applovin.mediation.adapter.MaxNativeAdAdapter
    public void loadNativeAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxNativeAdAdapterListener maxNativeAdAdapterListener) {
        String str;
        if (!InMobiSdk.isSDKInitialized()) {
            log("InMobi SDK not successfully initialized: failing native ad load...");
            maxNativeAdAdapterListener.onNativeAdLoadFailed(MaxAdapterError.NOT_INITIALIZED);
            return;
        }
        updatePrivacySettings(maxAdapterResponseParameters);
        long parseLong = Long.parseLong(maxAdapterResponseParameters.getThirdPartyAdPlacementId());
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
        sb2.append("native ad for placement: ");
        sb2.append(parseLong);
        sb2.append("...");
        log(sb2.toString());
        Context context = getContext(activity);
        InMobiNative inMobiNative = new InMobiNative(context, parseLong, new NativeAdListener(maxAdapterResponseParameters, context, maxNativeAdAdapterListener));
        this.nativeAd = inMobiNative;
        inMobiNative.setExtras(getExtras());
        if (isValidString) {
            this.nativeAd.load(bidResponse.getBytes());
        } else {
            this.nativeAd.load();
        }
    }

    @Override // com.applovin.mediation.adapter.MaxRewardedAdapter
    public void loadRewardedAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxRewardedAdapterListener maxRewardedAdapterListener) {
        long parseLong = Long.parseLong(maxAdapterResponseParameters.getThirdPartyAdPlacementId());
        log("Loading rewarded ad for placement: " + parseLong + "...");
        if (!InMobiSdk.isSDKInitialized()) {
            log("InMobi SDK not successfully initialized: failing rewarded ad load...");
            maxRewardedAdapterListener.onRewardedAdLoadFailed(MaxAdapterError.NOT_INITIALIZED);
            return;
        }
        this.rewardedAd = loadFullscreenAd(parseLong, maxAdapterResponseParameters, new RewardedAdListener(maxRewardedAdapterListener), activity);
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public void onDestroy() {
        InMobiBanner inMobiBanner = this.adView;
        if (inMobiBanner != null) {
            inMobiBanner.destroy();
            this.adView = null;
        }
        InMobiNative inMobiNative = this.nativeAd;
        if (inMobiNative != null) {
            inMobiNative.destroy();
            this.nativeAd = null;
        }
        this.interstitialAd = null;
        this.rewardedAd = null;
    }

    @Override // com.applovin.mediation.adapters.MediationAdapterBase, com.applovin.mediation.adapter.MaxAdapter
    public Boolean shouldInitializeOnUiThread() {
        return Boolean.TRUE;
    }

    @Override // com.applovin.mediation.adapter.MaxInterstitialAdapter
    public void showInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
        log("Showing interstitial ad...");
        if (!showFullscreenAd(this.interstitialAd)) {
            log("Interstitial ad not ready");
            MaxAdapterError maxAdapterError = MaxAdapterError.AD_DISPLAY_FAILED;
            MaxAdapterError maxAdapterError2 = MaxAdapterError.AD_NOT_READY;
            maxInterstitialAdapterListener.onInterstitialAdDisplayFailed(new MaxAdapterError(maxAdapterError, maxAdapterError2.getCode(), maxAdapterError2.getMessage()));
        }
    }

    @Override // com.applovin.mediation.adapter.MaxRewardedAdapter
    public void showRewardedAd(MaxAdapterResponseParameters maxAdapterResponseParameters, @Nullable Activity activity, MaxRewardedAdapterListener maxRewardedAdapterListener) {
        log("Showing rewarded ad...");
        configureReward(maxAdapterResponseParameters);
        if (!showFullscreenAd(this.rewardedAd)) {
            log("Rewarded ad not ready");
            MaxAdapterError maxAdapterError = MaxAdapterError.AD_DISPLAY_FAILED;
            MaxAdapterError maxAdapterError2 = MaxAdapterError.AD_NOT_READY;
            maxRewardedAdapterListener.onRewardedAdDisplayFailed(new MaxAdapterError(maxAdapterError, maxAdapterError2.getCode(), maxAdapterError2.getMessage()));
        }
    }
}
