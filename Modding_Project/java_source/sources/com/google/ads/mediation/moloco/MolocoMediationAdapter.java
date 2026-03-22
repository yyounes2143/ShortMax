package com.google.ads.mediation.moloco;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.VersionInfo;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
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
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import com.moloco.sdk.publisher.Initialization;
import com.moloco.sdk.publisher.MediationInfo;
import com.moloco.sdk.publisher.Moloco;
import com.moloco.sdk.publisher.MolocoAdError;
import com.moloco.sdk.publisher.MolocoBidTokenListener;
import com.moloco.sdk.publisher.MolocoInitStatus;
import com.moloco.sdk.publisher.MolocoInitializationListener;
import com.moloco.sdk.publisher.init.MolocoInitParams;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MolocoMediationAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMolocoMediationAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MolocoMediationAdapter.kt\ncom/google/ads/mediation/moloco/MolocoMediationAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n739#2,9:208\n1611#2,9:221\n1863#2:230\n1864#2:232\n1620#2:233\n37#3:217\n36#3,3:218\n1#4:231\n*S KotlinDebug\n*F\n+ 1 MolocoMediationAdapter.kt\ncom/google/ads/mediation/moloco/MolocoMediationAdapter\n*L\n69#1:208,9\n101#1:221,9\n101#1:230\n101#1:232\n101#1:233\n69#1:217\n69#1:218,3\n101#1:231\n*E\n"})
/* loaded from: classes4.dex */
public final class MolocoMediationAdapter extends RtbAdapter {
    @NotNull
    public static final String ADAPTER_ERROR_DOMAIN = "com.google.ads.mediation.moloco";
    public static final int ERROR_CODE_AD_IS_NULL = 103;
    public static final int ERROR_CODE_MISSING_AD_UNIT = 102;
    public static final int ERROR_CODE_MISSING_APP_KEY = 101;
    @NotNull
    public static final String ERROR_MSG_AD_IS_NULL = "Moloco ad object returned was null.";
    @NotNull
    public static final String ERROR_MSG_MISSING_AD_UNIT = "Missing or invalid Ad Unit configured for this ad source instance in the AdMob or Ad Manager UI.";
    @NotNull
    public static final String ERROR_MSG_MISSING_APP_KEY = "Missing or invalid App Key configured for this ad source instance in the AdMob or Ad Manager UI.";
    @NotNull
    public static final String KEY_AD_UNIT_ID = "ad_unit_id";
    @NotNull
    public static final String KEY_APP_KEY = "app_key";
    @NotNull
    public static final String MEDIATION_PLATFORM_NAME = "AdMob";
    @NotNull
    public static final String SDK_ERROR_DOMAIN = "com.moloco.sdk";
    private MolocoBannerAd bannerAd;
    private MolocoInterstitialAd interstitialAd;
    private MolocoNativeAd nativeAd;
    private MolocoRewardedAd rewardedAd;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private static final String TAG = Reflection.getOrCreateKotlinClass(MolocoMediationAdapter.class).getSimpleName();

    /* compiled from: MolocoMediationAdapter.kt */
    @Metadata
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void collectSignals$lambda$3(SignalCallbacks signalCallbacks, String bidToken, MolocoAdError.ErrorType errorType) {
        Intrinsics.checkNotNullParameter(bidToken, "bidToken");
        if (errorType != null) {
            signalCallbacks.onFailure(new AdError(errorType.getErrorCode(), errorType.getDescription(), "com.moloco.sdk"));
        } else {
            signalCallbacks.onSuccess(bidToken);
        }
    }

    private final void configurePrivacy() {
        boolean z10 = true;
        if (MobileAds.getRequestConfiguration().getTagForChildDirectedTreatment() != 1 && MobileAds.getRequestConfiguration().getTagForUnderAgeOfConsent() != 1) {
            z10 = false;
        }
        MolocoAdapterUtils.setMolocoIsAgeRestricted(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initialize$lambda$2(MolocoMediationAdapter molocoMediationAdapter, InitializationCompleteCallback initializationCompleteCallback, MolocoInitStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        if (status.getInitialization() == Initialization.SUCCESS) {
            molocoMediationAdapter.configurePrivacy();
            initializationCompleteCallback.onInitializationSucceeded();
            return;
        }
        String description = status.getDescription();
        initializationCompleteCallback.onInitializationFailed("Moloco SDK failed to initialize: " + description + ".");
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void collectSignals(@NotNull RtbSignalData signalData, @NotNull final SignalCallbacks callback) {
        Intrinsics.checkNotNullParameter(signalData, "signalData");
        Intrinsics.checkNotNullParameter(callback, "callback");
        MediationInfo mediationInfo = new MediationInfo(MEDIATION_PLATFORM_NAME);
        Context context = signalData.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        Moloco.getBidToken(mediationInfo, context, new MolocoBidTokenListener() { // from class: com.google.ads.mediation.moloco.b
            @Override // com.moloco.sdk.publisher.MolocoBidTokenListener
            public final void onBidTokenResult(String str, MolocoAdError.ErrorType errorType) {
                MolocoMediationAdapter.collectSignals$lambda$3(SignalCallbacks.this, str, errorType);
            }
        });
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    @NotNull
    public VersionInfo getSDKVersionInfo() {
        return new VersionInfo(4, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    @NotNull
    public VersionInfo getVersionInfo() {
        List n10;
        String adapterVersion = MolocoAdapterUtils.getAdapterVersion();
        List<String> q10 = new Regex("\\.").q(adapterVersion, 0);
        if (!q10.isEmpty()) {
            ListIterator<String> listIterator = q10.listIterator(q10.size());
            while (listIterator.hasPrevious()) {
                if (listIterator.previous().length() != 0) {
                    n10 = CollectionsKt.V0(q10, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        n10 = CollectionsKt.n();
        String[] strArr = (String[]) n10.toArray(new String[0]);
        if (strArr.length >= 4) {
            return new VersionInfo(Integer.parseInt(strArr[0]), Integer.parseInt(strArr[1]), (Integer.parseInt(strArr[2]) * 100) + Integer.parseInt(strArr[3]));
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("Unexpected adapter version format: %s. Returning 0.0.0 for adapter version.", Arrays.copyOf(new Object[]{adapterVersion}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        Log.w(TAG, format);
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(@NotNull Context context, @NotNull final InitializationCompleteCallback initializationCompleteCallback, @NotNull List<? extends MediationConfiguration> mediationConfigurations) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initializationCompleteCallback, "initializationCompleteCallback");
        Intrinsics.checkNotNullParameter(mediationConfigurations, "mediationConfigurations");
        ArrayList arrayList = new ArrayList();
        for (MediationConfiguration mediationConfiguration : mediationConfigurations) {
            String string = mediationConfiguration.getServerParameters().getString("app_key");
            string = (string == null || string.length() == 0) ? null : null;
            if (string != null) {
                arrayList.add(string);
            }
        }
        if (arrayList.isEmpty()) {
            initializationCompleteCallback.onInitializationFailed(ERROR_MSG_MISSING_APP_KEY);
            return;
        }
        String str = (String) arrayList.get(0);
        if (arrayList.size() > 1) {
            Log.w(TAG, "Multiple app_key entries found: " + arrayList + ". Using '" + str + "' to initialize the Moloco SDK");
        }
        Moloco.initialize(new MolocoInitParams(context, str, new MediationInfo(MEDIATION_PLATFORM_NAME)), new MolocoInitializationListener() { // from class: com.google.ads.mediation.moloco.c
            @Override // com.moloco.sdk.publisher.MolocoInitializationListener
            public final void onMolocoInitializationStatus(MolocoInitStatus molocoInitStatus) {
                MolocoMediationAdapter.initialize$lambda$2(MolocoMediationAdapter.this, initializationCompleteCallback, molocoInitStatus);
            }
        });
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void loadRtbBannerAd(@NotNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NotNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> callback) {
        Intrinsics.checkNotNullParameter(mediationBannerAdConfiguration, "mediationBannerAdConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Object m4663newInstancegIAlus = MolocoBannerAd.Companion.m4663newInstancegIAlus(mediationBannerAdConfiguration, callback);
        if (Result.j(m4663newInstancegIAlus)) {
            MolocoBannerAd molocoBannerAd = (MolocoBannerAd) m4663newInstancegIAlus;
            this.bannerAd = molocoBannerAd;
            if (molocoBannerAd == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bannerAd");
                molocoBannerAd = null;
            }
            molocoBannerAd.loadAd();
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void loadRtbInterstitialAd(@NotNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NotNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> callback) {
        Intrinsics.checkNotNullParameter(mediationInterstitialAdConfiguration, "mediationInterstitialAdConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Object m4664newInstancegIAlus = MolocoInterstitialAd.Companion.m4664newInstancegIAlus(mediationInterstitialAdConfiguration, callback);
        if (Result.j(m4664newInstancegIAlus)) {
            MolocoInterstitialAd molocoInterstitialAd = (MolocoInterstitialAd) m4664newInstancegIAlus;
            this.interstitialAd = molocoInterstitialAd;
            if (molocoInterstitialAd == null) {
                Intrinsics.throwUninitializedPropertyAccessException("interstitialAd");
                molocoInterstitialAd = null;
            }
            molocoInterstitialAd.loadAd();
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void loadRtbNativeAdMapper(@NotNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NotNull MediationAdLoadCallback<NativeAdMapper, MediationNativeAdCallback> callback) {
        Intrinsics.checkNotNullParameter(mediationNativeAdConfiguration, "mediationNativeAdConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Object m4665newInstancegIAlus = MolocoNativeAd.Companion.m4665newInstancegIAlus(mediationNativeAdConfiguration, callback);
        if (Result.j(m4665newInstancegIAlus)) {
            MolocoNativeAd molocoNativeAd = (MolocoNativeAd) m4665newInstancegIAlus;
            this.nativeAd = molocoNativeAd;
            if (molocoNativeAd == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nativeAd");
                molocoNativeAd = null;
            }
            molocoNativeAd.loadAd();
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void loadRtbRewardedAd(@NotNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @NotNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> callback) {
        Intrinsics.checkNotNullParameter(mediationRewardedAdConfiguration, "mediationRewardedAdConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Object m4666newInstancegIAlus = MolocoRewardedAd.Companion.m4666newInstancegIAlus(mediationRewardedAdConfiguration, callback);
        if (Result.j(m4666newInstancegIAlus)) {
            MolocoRewardedAd molocoRewardedAd = (MolocoRewardedAd) m4666newInstancegIAlus;
            this.rewardedAd = molocoRewardedAd;
            if (molocoRewardedAd == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rewardedAd");
                molocoRewardedAd = null;
            }
            molocoRewardedAd.loadAd();
        }
    }
}
