package com.google.ads.mediation.moloco;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.InterstitialAd;
import com.moloco.sdk.publisher.InterstitialAdShowListener;
import com.moloco.sdk.publisher.MediationInfo;
import com.moloco.sdk.publisher.Moloco;
import com.moloco.sdk.publisher.MolocoAd;
import com.moloco.sdk.publisher.MolocoAdError;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MolocoInterstitialAd.kt */
@Metadata
/* loaded from: classes4.dex */
public final class MolocoInterstitialAd implements MediationInterstitialAd, AdLoad.Listener, InterstitialAdShowListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String adUnitId;
    @NotNull
    private final String bidResponse;
    @Nullable
    private MediationInterstitialAdCallback interstitialAdCallback;
    @NotNull
    private final MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback;
    private InterstitialAd molocoAd;
    @NotNull
    private final String watermark;

    /* compiled from: MolocoInterstitialAd.kt */
    @Metadata
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: newInstance-gIAlu-s  reason: not valid java name */
        public final Object m4664newInstancegIAlus(@NotNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NotNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
            Intrinsics.checkNotNullParameter(mediationInterstitialAdConfiguration, "mediationInterstitialAdConfiguration");
            Intrinsics.checkNotNullParameter(mediationAdLoadCallback, "mediationAdLoadCallback");
            Bundle serverParameters = mediationInterstitialAdConfiguration.getServerParameters();
            Intrinsics.checkNotNullExpressionValue(serverParameters, "getServerParameters(...)");
            String string = serverParameters.getString("ad_unit_id");
            if (string != null && string.length() != 0) {
                String bidResponse = mediationInterstitialAdConfiguration.getBidResponse();
                Intrinsics.checkNotNullExpressionValue(bidResponse, "getBidResponse(...)");
                String watermark = mediationInterstitialAdConfiguration.getWatermark();
                Intrinsics.checkNotNullExpressionValue(watermark, "getWatermark(...)");
                Result.a aVar = Result.f60901b;
                return Result.d(new MolocoInterstitialAd(mediationAdLoadCallback, string, bidResponse, watermark, null));
            }
            AdError adError = new AdError(102, MolocoMediationAdapter.ERROR_MSG_MISSING_AD_UNIT, "com.google.ads.mediation.moloco");
            mediationAdLoadCallback.onFailure(adError);
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(new NoSuchElementException(adError.getMessage())));
        }

        private Companion() {
        }
    }

    public /* synthetic */ MolocoInterstitialAd(MediationAdLoadCallback mediationAdLoadCallback, String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        this(mediationAdLoadCallback, str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadAd$lambda$0(MolocoInterstitialAd molocoInterstitialAd, InterstitialAd interstitialAd, MolocoAdError.AdCreateError adCreateError) {
        if (adCreateError != null) {
            molocoInterstitialAd.mediationAdLoadCallback.onFailure(new AdError(adCreateError.getErrorCode(), adCreateError.getDescription(), "com.moloco.sdk"));
            return Unit.f60915a;
        } else if (interstitialAd == null) {
            molocoInterstitialAd.mediationAdLoadCallback.onFailure(new AdError(103, MolocoMediationAdapter.ERROR_MSG_AD_IS_NULL, "com.google.ads.mediation.moloco"));
            return Unit.f60915a;
        } else {
            molocoInterstitialAd.molocoAd = interstitialAd;
            interstitialAd.load(molocoInterstitialAd.bidResponse, molocoInterstitialAd);
            return Unit.f60915a;
        }
    }

    public final void loadAd() {
        Moloco.createInterstitial(new MediationInfo(MolocoMediationAdapter.MEDIATION_PLATFORM_NAME), this.adUnitId, this.watermark, new Function2() { // from class: com.google.ads.mediation.moloco.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit loadAd$lambda$0;
                loadAd$lambda$0 = MolocoInterstitialAd.loadAd$lambda$0(MolocoInterstitialAd.this, (InterstitialAd) obj, (MolocoAdError.AdCreateError) obj2);
                return loadAd$lambda$0;
            }
        });
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdClicked(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.reportAdClicked();
        }
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdHidden(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdClosed();
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
        this.interstitialAdCallback = this.mediationAdLoadCallback.onSuccess(this);
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdShowFailed(@NotNull MolocoAdError molocoAdError) {
        Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
        AdError adError = new AdError(molocoAdError.getErrorType().getErrorCode(), molocoAdError.getErrorType().getDescription(), "com.moloco.sdk");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdFailedToShow(adError);
        }
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdShowSuccess(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdOpened();
            mediationInterstitialAdCallback.reportAdImpression();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        InterstitialAd interstitialAd = this.molocoAd;
        if (interstitialAd == null) {
            Intrinsics.throwUninitializedPropertyAccessException("molocoAd");
            interstitialAd = null;
        }
        interstitialAd.show(this);
    }

    private MolocoInterstitialAd(MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback, String str, String str2, String str3) {
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.adUnitId = str;
        this.bidResponse = str2;
        this.watermark = str3;
    }
}
