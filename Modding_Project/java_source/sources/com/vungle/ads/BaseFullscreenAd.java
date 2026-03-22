package com.vungle.ads;

import android.content.Context;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.signals.SignaledAd;
import com.vungle.ads.internal.util.ThreadUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseFullscreenAd.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class BaseFullscreenAd extends BaseAd implements FullscreenAd {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseFullscreenAd(@NotNull Context context, @NotNull String placementId, @NotNull AdConfig adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
    }

    @Override // com.vungle.ads.BaseAd, com.vungle.ads.Ad
    public void load(@Nullable String str) {
        setSignaledAd$vungle_ads_release(getSignalManager$vungle_ads_release().getSignaledAd(getPlacementId()));
        super.load(str);
    }

    @Override // com.vungle.ads.BaseAd
    public void onAdLoaded$vungle_ads_release(@NotNull AdPayload advertisement) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        super.onAdLoaded$vungle_ads_release(advertisement);
        SignaledAd signaledAd$vungle_ads_release = getSignaledAd$vungle_ads_release();
        if (signaledAd$vungle_ads_release != null) {
            signaledAd$vungle_ads_release.setAdAvailabilityCallbackTime(System.currentTimeMillis());
        }
    }

    @Override // com.vungle.ads.FullscreenAd
    public void play(@Nullable Context context) {
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.PLAY_AD_API), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        getResponseToShowMetric$vungle_ads_release().markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, getResponseToShowMetric$vungle_ads_release(), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        getShowToFailMetric$vungle_ads_release().markStart();
        getShowToCloseMetric$vungle_ads_release().markStart();
        SignaledAd signaledAd$vungle_ads_release = getSignaledAd$vungle_ads_release();
        if (signaledAd$vungle_ads_release != null) {
            signaledAd$vungle_ads_release.setPlayAdTime(System.currentTimeMillis());
            signaledAd$vungle_ads_release.calculateTimeBetweenAdAvailabilityAndPlayAd();
            getSignalManager$vungle_ads_release().registerSignaledAd(context, signaledAd$vungle_ads_release);
        }
        getAdInternal$vungle_ads_release().play(context, new AdPlayCallback() { // from class: com.vungle.ads.BaseFullscreenAd$play$2
            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdClick(@Nullable String str) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BaseFullscreenAd$play$2$onAdClick$1
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
                        BaseAdListener adListener = BaseFullscreenAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdClicked(BaseFullscreenAd.this);
                        }
                    }
                });
                BaseFullscreenAd.this.getDisplayToClickMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BaseFullscreenAd.this.getDisplayToClickMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdEnd(@Nullable String str) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BaseFullscreenAd$play$2$onAdEnd$1
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
                        BaseAdListener adListener = BaseFullscreenAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdEnd(BaseFullscreenAd.this);
                        }
                    }
                });
                BaseFullscreenAd.this.getShowToCloseMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BaseFullscreenAd.this.getShowToCloseMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdImpression(@Nullable String str) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BaseFullscreenAd$play$2$onAdImpression$1
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
                        BaseAdListener adListener = BaseFullscreenAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdImpression(BaseFullscreenAd.this);
                        }
                    }
                });
                BaseFullscreenAd.this.getPresentToDisplayMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BaseFullscreenAd.this.getPresentToDisplayMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                BaseFullscreenAd.this.getDisplayToClickMetric$vungle_ads_release().markStart();
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdLeftApplication(@Nullable String str) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BaseFullscreenAd$play$2$onAdLeftApplication$1
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
                        BaseAdListener adListener = BaseFullscreenAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdLeftApplication(BaseFullscreenAd.this);
                        }
                    }
                });
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BaseFullscreenAd.this.getLeaveApplicationMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdRewarded(@Nullable String str) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BaseFullscreenAd$play$2$onAdRewarded$1
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
                        BaseAdListener adListener = BaseFullscreenAd.this.getAdListener();
                        RewardedAdListener rewardedAdListener = adListener instanceof RewardedAdListener ? (RewardedAdListener) adListener : null;
                        if (rewardedAdListener != null) {
                            rewardedAdListener.onAdRewarded(BaseFullscreenAd.this);
                        }
                    }
                });
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BaseFullscreenAd.this.getRewardedMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdStart(@Nullable String str) {
                BaseFullscreenAd.this.getSignalManager$vungle_ads_release().increaseSessionDepthCounter();
                BaseFullscreenAd.this.getPresentToDisplayMetric$vungle_ads_release().markStart();
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BaseFullscreenAd$play$2$onAdStart$1
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
                        BaseAdListener adListener = BaseFullscreenAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdStart(BaseFullscreenAd.this);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onFailure(@NotNull final VungleError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BaseFullscreenAd$play$2$onFailure$1
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
                        BaseAdListener adListener = BaseFullscreenAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdFailedToPlay(BaseFullscreenAd.this, error);
                        }
                    }
                });
                BaseFullscreenAd.this.getShowToFailMetric$vungle_ads_release().markEnd();
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(BaseFullscreenAd.this.getShowToFailMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), String.valueOf(error.getCode()));
            }
        });
    }
}
