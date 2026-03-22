package com.google.ads.mediation.moloco;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.MediationInfo;
import com.moloco.sdk.publisher.Moloco;
import com.moloco.sdk.publisher.MolocoAd;
import com.moloco.sdk.publisher.MolocoAdError;
import com.moloco.sdk.publisher.RewardedInterstitialAd;
import com.moloco.sdk.publisher.RewardedInterstitialAdShowListener;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MolocoRewardedAd.kt */
@Metadata
/* loaded from: classes4.dex */
public final class MolocoRewardedAd implements MediationRewardedAd, AdLoad.Listener, RewardedInterstitialAdShowListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String adUnitId;
    @NotNull
    private final String bidResponse;
    @NotNull
    private final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback;
    private RewardedInterstitialAd molocoAd;
    @Nullable
    private MediationRewardedAdCallback rewardedAdCallback;
    @NotNull
    private final String watermark;

    /* compiled from: MolocoRewardedAd.kt */
    @Metadata
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: newInstance-gIAlu-s  reason: not valid java name */
        public final Object m4666newInstancegIAlus(@NotNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @NotNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
            Intrinsics.checkNotNullParameter(mediationRewardedAdConfiguration, "mediationRewardedAdConfiguration");
            Intrinsics.checkNotNullParameter(mediationAdLoadCallback, "mediationAdLoadCallback");
            Bundle serverParameters = mediationRewardedAdConfiguration.getServerParameters();
            Intrinsics.checkNotNullExpressionValue(serverParameters, "getServerParameters(...)");
            String string = serverParameters.getString("ad_unit_id");
            if (string != null && string.length() != 0) {
                String bidResponse = mediationRewardedAdConfiguration.getBidResponse();
                Intrinsics.checkNotNullExpressionValue(bidResponse, "getBidResponse(...)");
                String watermark = mediationRewardedAdConfiguration.getWatermark();
                Intrinsics.checkNotNullExpressionValue(watermark, "getWatermark(...)");
                Result.a aVar = Result.f60901b;
                return Result.d(new MolocoRewardedAd(mediationAdLoadCallback, string, bidResponse, watermark, null));
            }
            AdError adError = new AdError(102, MolocoMediationAdapter.ERROR_MSG_MISSING_AD_UNIT, "com.google.ads.mediation.moloco");
            mediationAdLoadCallback.onFailure(adError);
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(new NoSuchElementException(adError.getMessage())));
        }

        private Companion() {
        }
    }

    public /* synthetic */ MolocoRewardedAd(MediationAdLoadCallback mediationAdLoadCallback, String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        this(mediationAdLoadCallback, str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadAd$lambda$0(MolocoRewardedAd molocoRewardedAd, RewardedInterstitialAd rewardedInterstitialAd, MolocoAdError.AdCreateError adCreateError) {
        if (adCreateError != null) {
            molocoRewardedAd.mediationAdLoadCallback.onFailure(new AdError(adCreateError.getErrorCode(), adCreateError.getDescription(), "com.moloco.sdk"));
            return Unit.f60915a;
        } else if (rewardedInterstitialAd == null) {
            molocoRewardedAd.mediationAdLoadCallback.onFailure(new AdError(103, MolocoMediationAdapter.ERROR_MSG_AD_IS_NULL, "com.google.ads.mediation.moloco"));
            return Unit.f60915a;
        } else {
            molocoRewardedAd.molocoAd = rewardedInterstitialAd;
            rewardedInterstitialAd.load(molocoRewardedAd.bidResponse, molocoRewardedAd);
            return Unit.f60915a;
        }
    }

    public final void loadAd() {
        Moloco.createRewardedInterstitial(new MediationInfo(MolocoMediationAdapter.MEDIATION_PLATFORM_NAME), this.adUnitId, this.watermark, new Function2() { // from class: com.google.ads.mediation.moloco.g
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit loadAd$lambda$0;
                loadAd$lambda$0 = MolocoRewardedAd.loadAd$lambda$0(MolocoRewardedAd.this, (RewardedInterstitialAd) obj, (MolocoAdError.AdCreateError) obj2);
                return loadAd$lambda$0;
            }
        });
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdClicked(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationRewardedAdCallback mediationRewardedAdCallback = this.rewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.reportAdClicked();
        }
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdHidden(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationRewardedAdCallback mediationRewardedAdCallback = this.rewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onAdClosed();
        }
    }

    @Override // com.moloco.sdk.publisher.AdLoad.Listener
    public void onAdLoadFailed(@NotNull MolocoAdError molocoAdError) {
        Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
        this.mediationAdLoadCallback.onFailure(new AdError(molocoAdError.getErrorType().getErrorCode(), molocoAdError.getErrorType().getDescription(), "com.moloco.sdk"));
    }

    @Override // com.moloco.sdk.publisher.AdLoad.Listener
    public void onAdLoadSuccess(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        this.rewardedAdCallback = this.mediationAdLoadCallback.onSuccess(this);
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdShowFailed(@NotNull MolocoAdError molocoAdError) {
        Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
        AdError adError = new AdError(molocoAdError.getErrorType().getErrorCode(), molocoAdError.getErrorType().getDescription(), "com.moloco.sdk");
        MediationRewardedAdCallback mediationRewardedAdCallback = this.rewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onAdFailedToShow(adError);
        }
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdShowSuccess(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationRewardedAdCallback mediationRewardedAdCallback = this.rewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onAdOpened();
            mediationRewardedAdCallback.reportAdImpression();
        }
    }

    @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
    public void onRewardedVideoCompleted(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationRewardedAdCallback mediationRewardedAdCallback = this.rewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onVideoComplete();
        }
    }

    @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
    public void onRewardedVideoStarted(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationRewardedAdCallback mediationRewardedAdCallback = this.rewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onVideoStart();
        }
    }

    @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
    public void onUserRewarded(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationRewardedAdCallback mediationRewardedAdCallback = this.rewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onUserEarnedReward();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        RewardedInterstitialAd rewardedInterstitialAd = this.molocoAd;
        if (rewardedInterstitialAd == null) {
            Intrinsics.throwUninitializedPropertyAccessException("molocoAd");
            rewardedInterstitialAd = null;
        }
        rewardedInterstitialAd.show(this);
    }

    private MolocoRewardedAd(MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback, String str, String str2, String str3) {
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.adUnitId = str;
        this.bidResponse = str2;
        this.watermark = str3;
    }
}
