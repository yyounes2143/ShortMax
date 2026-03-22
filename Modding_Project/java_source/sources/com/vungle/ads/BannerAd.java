package com.vungle.ads;

import android.content.Context;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.BannerAdInternal;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.presenter.AdPlayCallbackWrapper;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.ThreadUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BannerAd.kt */
@ms.c
@Metadata
/* loaded from: classes7.dex */
public final class BannerAd extends BaseAd {
    @NotNull
    private final AdPlayCallbackWrapper adPlayCallback;
    @NotNull
    private final VungleAdSize adSize;
    @Nullable
    private BannerView bannerView;

    /* compiled from: BannerAd.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BannerAdSize.values().length];
            iArr[BannerAdSize.BANNER.ordinal()] = 1;
            iArr[BannerAdSize.BANNER_SHORT.ordinal()] = 2;
            iArr[BannerAdSize.BANNER_LEADERBOARD.ordinal()] = 3;
            iArr[BannerAdSize.VUNGLE_MREC.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private BannerAd(Context context, String str, VungleAdSize vungleAdSize, AdConfig adConfig) {
        super(context, str, adConfig);
        this.adSize = vungleAdSize;
        AdInternal adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal");
        this.adPlayCallback = ((BannerAdInternal) adInternal$vungle_ads_release).wrapCallback$vungle_ads_release(new AdPlayCallback() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1
            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdClick(@Nullable String str2) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAd bannerAd = BannerAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onAdClick$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = BannerAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdClicked(BannerAd.this);
                        }
                    }
                });
                BannerAd.this.getDisplayToClickMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BannerAd.this.getDisplayToClickMetric$vungle_ads_release(), BannerAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdEnd(@Nullable String str2) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAd bannerAd = BannerAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onAdEnd$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = BannerAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdEnd(BannerAd.this);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdImpression(@Nullable String str2) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAd bannerAd = BannerAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onAdImpression$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = BannerAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdImpression(BannerAd.this);
                        }
                    }
                });
                BannerAd.this.getPresentToDisplayMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BannerAd.this.getPresentToDisplayMetric$vungle_ads_release(), BannerAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                BannerAd.this.getDisplayToClickMetric$vungle_ads_release().markStart();
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdLeftApplication(@Nullable String str2) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAd bannerAd = BannerAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onAdLeftApplication$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = BannerAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdLeftApplication(BannerAd.this);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdStart(@Nullable String str2) {
                BannerAd.this.getSignalManager$vungle_ads_release().increaseSessionDepthCounter();
                BannerAd.this.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BannerAd.this.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release(), BannerAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                BannerAd.this.getPresentToDisplayMetric$vungle_ads_release().markStart();
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAd bannerAd = BannerAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onAdStart$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = BannerAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdStart(BannerAd.this);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onFailure(@NotNull final VungleError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                BannerAd.this.getShowToFailMetric$vungle_ads_release().markEnd();
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(BannerAd.this.getShowToFailMetric$vungle_ads_release(), BannerAd.this.getLogEntry$vungle_ads_release(), String.valueOf(error.getCode()));
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAd bannerAd = BannerAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onFailure$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = BannerAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdFailedToPlay(BannerAd.this, error);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdRewarded(@Nullable String str2) {
            }
        });
    }

    public final void finishAd() {
        ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$finishAd$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                BannerView bannerView;
                bannerView = BannerAd.this.bannerView;
                if (bannerView != null) {
                    bannerView.finishAdInternal(true);
                }
            }
        });
    }

    @NotNull
    public final VungleAdSize getAdViewSize() {
        AdInternal adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal");
        VungleAdSize updatedAdSize$vungle_ads_release = ((BannerAdInternal) adInternal$vungle_ads_release).getUpdatedAdSize$vungle_ads_release();
        if (updatedAdSize$vungle_ads_release == null) {
            return this.adSize;
        }
        return updatedAdSize$vungle_ads_release;
    }

    @Nullable
    public final BannerView getBannerView() {
        Placement placement;
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.PLAY_AD_API), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        BannerView bannerView = this.bannerView;
        if (bannerView != null) {
            return bannerView;
        }
        getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markStart();
        final VungleError canPlayAd = getAdInternal$vungle_ads_release().canPlayAd(true);
        if (canPlayAd != null) {
            if (getAdInternal$vungle_ads_release().isErrorTerminal$vungle_ads_release(canPlayAd.getCode())) {
                getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.ERROR);
            }
            ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$getBannerView$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    BaseAdListener adListener = BannerAd.this.getAdListener();
                    if (adListener != null) {
                        adListener.onAdFailedToPlay(BannerAd.this, canPlayAd);
                    }
                }
            });
            return null;
        }
        AdPayload advertisement = getAdInternal$vungle_ads_release().getAdvertisement();
        if (advertisement == null || (placement = getAdInternal$vungle_ads_release().getPlacement()) == null) {
            return null;
        }
        getAdInternal$vungle_ads_release().cancelDownload$vungle_ads_release();
        try {
            try {
                this.bannerView = new BannerView(getContext(), placement, advertisement, getAdViewSize(), getAdConfig(), this.adPlayCallback, getAdInternal$vungle_ads_release().getBidPayload());
                getResponseToShowMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, getResponseToShowMetric$vungle_ads_release(), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release(), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release().markStart();
                return this.bannerView;
            } catch (InstantiationException e10) {
                Logger.Companion companion = Logger.Companion;
                companion.e("BannerAd", "Can not create banner view: " + e10.getMessage(), e10);
                getResponseToShowMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, getResponseToShowMetric$vungle_ads_release(), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                return null;
            }
        } catch (Throwable th2) {
            getResponseToShowMetric$vungle_ads_release().markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, getResponseToShowMetric$vungle_ads_release(), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            throw th2;
        }
    }

    @Override // com.vungle.ads.BaseAd
    @NotNull
    public BannerAdInternal constructAdInternal$vungle_ads_release(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new BannerAdInternal(context, this.adSize);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerAd(@NotNull Context context, @NotNull String placementId, @NotNull VungleAdSize adSize) {
        this(context, placementId, adSize, new AdConfig());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @ms.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BannerAd(@org.jetbrains.annotations.NotNull android.content.Context r2, @org.jetbrains.annotations.NotNull java.lang.String r3, @org.jetbrains.annotations.NotNull com.vungle.ads.BannerAdSize r4) {
        /*
            r1 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "placementId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "adSize"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            com.vungle.ads.VungleAdSize$Companion r0 = com.vungle.ads.VungleAdSize.Companion
            int[] r0 = com.vungle.ads.BannerAd.WhenMappings.$EnumSwitchMapping$0
            int r4 = r4.ordinal()
            r4 = r0[r4]
            r0 = 1
            if (r4 == r0) goto L34
            r0 = 2
            if (r4 == r0) goto L31
            r0 = 3
            if (r4 == r0) goto L2e
            r0 = 4
            if (r4 != r0) goto L28
            com.vungle.ads.VungleAdSize r4 = com.vungle.ads.VungleAdSize.MREC
            goto L36
        L28:
            kotlin.NoWhenBranchMatchedException r2 = new kotlin.NoWhenBranchMatchedException
            r2.<init>()
            throw r2
        L2e:
            com.vungle.ads.VungleAdSize r4 = com.vungle.ads.VungleAdSize.BANNER_LEADERBOARD
            goto L36
        L31:
            com.vungle.ads.VungleAdSize r4 = com.vungle.ads.VungleAdSize.BANNER_SHORT
            goto L36
        L34:
            com.vungle.ads.VungleAdSize r4 = com.vungle.ads.VungleAdSize.BANNER
        L36:
            com.vungle.ads.AdConfig r0 = new com.vungle.ads.AdConfig
            r0.<init>()
            r1.<init>(r2, r3, r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.BannerAd.<init>(android.content.Context, java.lang.String, com.vungle.ads.BannerAdSize):void");
    }
}
