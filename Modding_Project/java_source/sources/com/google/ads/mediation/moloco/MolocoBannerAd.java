package com.google.ads.mediation.moloco;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.Banner;
import com.moloco.sdk.publisher.BannerAdShowListener;
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
/* compiled from: MolocoBannerAd.kt */
@Metadata
/* loaded from: classes4.dex */
public final class MolocoBannerAd implements MediationBannerAd, AdLoad.Listener, BannerAdShowListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final AdSize adSize;
    @NotNull
    private final String adUnitId;
    @Nullable
    private MediationBannerAdCallback bannerAdCallback;
    @NotNull
    private final String bidResponse;
    @NotNull
    private final MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback;
    private Banner molocoAd;
    @NotNull
    private final String watermark;

    /* compiled from: MolocoBannerAd.kt */
    @Metadata
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: newInstance-gIAlu-s  reason: not valid java name */
        public final Object m4663newInstancegIAlus(@NotNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NotNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
            Intrinsics.checkNotNullParameter(mediationBannerAdConfiguration, "mediationBannerAdConfiguration");
            Intrinsics.checkNotNullParameter(mediationAdLoadCallback, "mediationAdLoadCallback");
            Bundle serverParameters = mediationBannerAdConfiguration.getServerParameters();
            Intrinsics.checkNotNullExpressionValue(serverParameters, "getServerParameters(...)");
            AdSize adSize = mediationBannerAdConfiguration.getAdSize();
            Intrinsics.checkNotNullExpressionValue(adSize, "getAdSize(...)");
            String string = serverParameters.getString("ad_unit_id");
            if (string != null && string.length() != 0) {
                String bidResponse = mediationBannerAdConfiguration.getBidResponse();
                Intrinsics.checkNotNullExpressionValue(bidResponse, "getBidResponse(...)");
                String watermark = mediationBannerAdConfiguration.getWatermark();
                Intrinsics.checkNotNullExpressionValue(watermark, "getWatermark(...)");
                Result.a aVar = Result.f60901b;
                return Result.d(new MolocoBannerAd(mediationAdLoadCallback, adSize, string, bidResponse, watermark, null));
            }
            AdError adError = new AdError(102, MolocoMediationAdapter.ERROR_MSG_MISSING_AD_UNIT, "com.google.ads.mediation.moloco");
            mediationAdLoadCallback.onFailure(adError);
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(new NoSuchElementException(adError.getMessage())));
        }

        private Companion() {
        }
    }

    public /* synthetic */ MolocoBannerAd(MediationAdLoadCallback mediationAdLoadCallback, AdSize adSize, String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        this(mediationAdLoadCallback, adSize, str, str2, str3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    @NotNull
    public View getView() {
        Banner banner = this.molocoAd;
        if (banner == null) {
            Intrinsics.throwUninitializedPropertyAccessException("molocoAd");
            return null;
        }
        return banner;
    }

    public final void loadAd() {
        Function2<Banner, MolocoAdError.AdCreateError, Unit> function2 = new Function2<Banner, MolocoAdError.AdCreateError, Unit>() { // from class: com.google.ads.mediation.moloco.MolocoBannerAd$loadAd$createBannerCallback$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Banner banner, MolocoAdError.AdCreateError adCreateError) {
                invoke2(banner, adCreateError);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public void invoke2(Banner banner, MolocoAdError.AdCreateError adCreateError) {
                Banner banner2;
                Banner banner3;
                String str;
                MediationAdLoadCallback mediationAdLoadCallback;
                MediationAdLoadCallback mediationAdLoadCallback2;
                if (adCreateError != null) {
                    AdError adError = new AdError(adCreateError.getErrorCode(), adCreateError.getDescription(), "com.moloco.sdk");
                    mediationAdLoadCallback2 = MolocoBannerAd.this.mediationAdLoadCallback;
                    mediationAdLoadCallback2.onFailure(adError);
                } else if (banner != null) {
                    MolocoBannerAd.this.molocoAd = banner;
                    banner2 = MolocoBannerAd.this.molocoAd;
                    Banner banner4 = null;
                    if (banner2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("molocoAd");
                        banner2 = null;
                    }
                    banner2.setAdShowListener(MolocoBannerAd.this);
                    banner3 = MolocoBannerAd.this.molocoAd;
                    if (banner3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("molocoAd");
                    } else {
                        banner4 = banner3;
                    }
                    str = MolocoBannerAd.this.bidResponse;
                    banner4.load(str, MolocoBannerAd.this);
                } else {
                    AdError adError2 = new AdError(103, MolocoMediationAdapter.ERROR_MSG_AD_IS_NULL, "com.google.ads.mediation.moloco");
                    mediationAdLoadCallback = MolocoBannerAd.this.mediationAdLoadCallback;
                    mediationAdLoadCallback.onFailure(adError2);
                }
            }
        };
        MediationInfo mediationInfo = new MediationInfo(MolocoMediationAdapter.MEDIATION_PLATFORM_NAME);
        AdSize adSize = this.adSize;
        if (Intrinsics.areEqual(adSize, AdSize.LEADERBOARD)) {
            Moloco.createBannerTablet(mediationInfo, this.adUnitId, this.watermark, function2);
        } else if (Intrinsics.areEqual(adSize, AdSize.MEDIUM_RECTANGLE)) {
            Moloco.createMREC(mediationInfo, this.adUnitId, this.watermark, function2);
        } else {
            Moloco.createBanner(mediationInfo, this.adUnitId, this.watermark, function2);
        }
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdClicked(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationBannerAdCallback mediationBannerAdCallback = this.bannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.reportAdClicked();
            mediationBannerAdCallback.onAdLeftApplication();
        }
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdHidden(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationBannerAdCallback mediationBannerAdCallback = this.bannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.onAdClosed();
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
        this.bannerAdCallback = this.mediationAdLoadCallback.onSuccess(this);
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdShowFailed(@NotNull MolocoAdError molocoAdError) {
        Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
        this.mediationAdLoadCallback.onFailure(new AdError(molocoAdError.getErrorType().getErrorCode(), molocoAdError.getErrorType().getDescription(), "com.moloco.sdk"));
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdShowSuccess(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MediationBannerAdCallback mediationBannerAdCallback = this.bannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.onAdOpened();
            mediationBannerAdCallback.reportAdImpression();
        }
    }

    private MolocoBannerAd(MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback, AdSize adSize, String str, String str2, String str3) {
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.adSize = adSize;
        this.adUnitId = str;
        this.bidResponse = str2;
        this.watermark = str3;
    }
}
