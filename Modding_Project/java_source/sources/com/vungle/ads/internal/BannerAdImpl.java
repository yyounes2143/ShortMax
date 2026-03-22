package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.AdConfig;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.BaseAd;
import com.vungle.ads.BaseAdListener;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.presenter.AdPlayCallbackWrapper;
import com.vungle.ads.internal.util.ThreadUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BannerAdImpl.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BannerAdImpl extends BaseAd {
    @NotNull
    private final AdPlayCallbackWrapper adPlayCallback;
    @NotNull
    private final VungleAdSize adSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerAdImpl(@NotNull Context context, @NotNull String placementId, @NotNull VungleAdSize adSize, @NotNull AdConfig adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        this.adSize = adSize;
        AdInternal adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal");
        this.adPlayCallback = ((BannerAdInternal) adInternal$vungle_ads_release).wrapCallback$vungle_ads_release(new AdPlayCallback() { // from class: com.vungle.ads.internal.BannerAdImpl$adPlayCallback$1
            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdClick(@Nullable String str) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAdImpl bannerAdImpl = BannerAdImpl.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.BannerAdImpl$adPlayCallback$1$onAdClick$1
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
                        BaseAdListener adListener = BannerAdImpl.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdClicked(BannerAdImpl.this);
                        }
                    }
                });
                BannerAdImpl.this.getDisplayToClickMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BannerAdImpl.this.getDisplayToClickMetric$vungle_ads_release(), BannerAdImpl.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdEnd(@Nullable String str) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAdImpl bannerAdImpl = BannerAdImpl.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.BannerAdImpl$adPlayCallback$1$onAdEnd$1
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
                        BaseAdListener adListener = BannerAdImpl.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdEnd(BannerAdImpl.this);
                        }
                    }
                });
                BannerAdImpl.this.getShowToCloseMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BannerAdImpl.this.getShowToCloseMetric$vungle_ads_release(), BannerAdImpl.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdImpression(@Nullable String str) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAdImpl bannerAdImpl = BannerAdImpl.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.BannerAdImpl$adPlayCallback$1$onAdImpression$1
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
                        BaseAdListener adListener = BannerAdImpl.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdImpression(BannerAdImpl.this);
                        }
                    }
                });
                BannerAdImpl.this.getPresentToDisplayMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BannerAdImpl.this.getPresentToDisplayMetric$vungle_ads_release(), BannerAdImpl.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                BannerAdImpl.this.getDisplayToClickMetric$vungle_ads_release().markStart();
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdLeftApplication(@Nullable String str) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAdImpl bannerAdImpl = BannerAdImpl.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.BannerAdImpl$adPlayCallback$1$onAdLeftApplication$1
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
                        BaseAdListener adListener = BannerAdImpl.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdLeftApplication(BannerAdImpl.this);
                        }
                    }
                });
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BannerAdImpl.this.getLeaveApplicationMetric$vungle_ads_release(), BannerAdImpl.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdStart(@Nullable String str) {
                BannerAdImpl.this.getSignalManager$vungle_ads_release().increaseSessionDepthCounter();
                BannerAdImpl.this.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BannerAdImpl.this.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release(), BannerAdImpl.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                BannerAdImpl.this.getPresentToDisplayMetric$vungle_ads_release().markStart();
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAdImpl bannerAdImpl = BannerAdImpl.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.BannerAdImpl$adPlayCallback$1$onAdStart$1
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
                        BaseAdListener adListener = BannerAdImpl.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdStart(BannerAdImpl.this);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onFailure(@NotNull final VungleError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BannerAdImpl bannerAdImpl = BannerAdImpl.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.BannerAdImpl$adPlayCallback$1$onFailure$1
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
                        BaseAdListener adListener = BannerAdImpl.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdFailedToPlay(BannerAdImpl.this, error);
                        }
                    }
                });
                BannerAdImpl.this.getShowToFailMetric$vungle_ads_release().markEnd();
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(BannerAdImpl.this.getShowToFailMetric$vungle_ads_release(), BannerAdImpl.this.getLogEntry$vungle_ads_release(), String.valueOf(error.getCode()));
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdRewarded(@Nullable String str) {
            }
        });
    }

    @NotNull
    public final AdPlayCallbackWrapper getAdPlayCallback$vungle_ads_release() {
        return this.adPlayCallback;
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

    @Override // com.vungle.ads.BaseAd
    @NotNull
    public BannerAdInternal constructAdInternal$vungle_ads_release(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new BannerAdInternal(context, this.adSize);
    }
}
