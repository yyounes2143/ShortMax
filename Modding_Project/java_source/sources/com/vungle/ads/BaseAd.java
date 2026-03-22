package com.vungle.ads;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.load.AdLoaderCallback;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.signals.SignaledAd;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.ThreadUtil;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseAd.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class BaseAd implements Ad {
    @NotNull
    private final AdConfig adConfig;
    @NotNull
    private final i adInternal$delegate;
    @Nullable
    private BaseAdListener adListener;
    @NotNull
    private final Context context;
    @Nullable
    private String creativeId;
    @NotNull
    private final TimeIntervalMetric displayToClickMetric;
    @Nullable
    private String eventId;
    @NotNull
    private final SingleValueMetric leaveApplicationMetric;
    @NotNull
    private final LogEntry logEntry;
    @NotNull
    private final String placementId;
    @NotNull
    private final TimeIntervalMetric presentToDisplayMetric;
    @NotNull
    private final TimeIntervalMetric requestToResponseMetric;
    @NotNull
    private final TimeIntervalMetric responseToShowMetric;
    @NotNull
    private final SingleValueMetric rewardedMetric;
    @NotNull
    private final TimeIntervalMetric showToCloseMetric;
    @NotNull
    private final TimeIntervalMetric showToFailMetric;
    @NotNull
    private final i signalManager$delegate;
    @Nullable
    private SignaledAd signaledAd;

    public BaseAd(@NotNull final Context context, @NotNull String placementId, @NotNull AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        this.context = context;
        this.placementId = placementId;
        this.adConfig = adConfig;
        this.adInternal$delegate = kotlin.c.b(new Function0<AdInternal>() { // from class: com.vungle.ads.BaseAd$adInternal$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AdInternal invoke() {
                BaseAd baseAd = BaseAd.this;
                AdInternal constructAdInternal$vungle_ads_release = baseAd.constructAdInternal$vungle_ads_release(baseAd.getContext());
                constructAdInternal$vungle_ads_release.setLogEntry$vungle_ads_release(BaseAd.this.getLogEntry$vungle_ads_release());
                return constructAdInternal$vungle_ads_release;
            }
        });
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        this.signalManager$delegate = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<SignalManager>() { // from class: com.vungle.ads.BaseAd$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SignalManager invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(SignalManager.class);
            }
        });
        LogEntry logEntry = new LogEntry();
        logEntry.setPlacementRefId$vungle_ads_release(placementId);
        this.logEntry = logEntry;
        this.requestToResponseMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_REQUEST_TO_RESPONSE_DURATION_MS);
        this.responseToShowMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_RESPONSE_TO_SHOW_DURATION_MS);
        this.presentToDisplayMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_PRESENT_TO_DISPLAY_DURATION_MS);
        this.showToFailMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_SHOW_TO_FAIL_DURATION_MS);
        this.displayToClickMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_DISPLAY_TO_CLICK_DURATION_MS);
        this.leaveApplicationMetric = new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_LEAVE_APPLICATION);
        this.rewardedMetric = new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_REWARD_USER);
        this.showToCloseMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_SHOW_TO_CLOSE_DURATION_MS);
    }

    private final void onLoadEnd() {
        this.requestToResponseMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.requestToResponseMetric, this.logEntry, (String) null, 4, (Object) null);
        this.responseToShowMetric.markStart();
    }

    @Override // com.vungle.ads.Ad
    @NotNull
    public Boolean canPlayAd() {
        boolean z10 = false;
        if (AdInternal.canPlayAd$default(getAdInternal$vungle_ads_release(), false, 1, null) == null) {
            z10 = true;
        }
        return Boolean.valueOf(z10);
    }

    @NotNull
    public abstract AdInternal constructAdInternal$vungle_ads_release(@NotNull Context context);

    @NotNull
    public final AdConfig getAdConfig() {
        return this.adConfig;
    }

    @NotNull
    public final AdInternal getAdInternal$vungle_ads_release() {
        return (AdInternal) this.adInternal$delegate.getValue();
    }

    @Nullable
    public final BaseAdListener getAdListener() {
        return this.adListener;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Nullable
    public final String getCreativeId() {
        return this.creativeId;
    }

    @NotNull
    public final TimeIntervalMetric getDisplayToClickMetric$vungle_ads_release() {
        return this.displayToClickMetric;
    }

    @Nullable
    public final String getEventId() {
        return this.eventId;
    }

    @NotNull
    public final SingleValueMetric getLeaveApplicationMetric$vungle_ads_release() {
        return this.leaveApplicationMetric;
    }

    @NotNull
    public final LogEntry getLogEntry$vungle_ads_release() {
        return this.logEntry;
    }

    @NotNull
    public final String getPlacementId() {
        return this.placementId;
    }

    @NotNull
    public final TimeIntervalMetric getPresentToDisplayMetric$vungle_ads_release() {
        return this.presentToDisplayMetric;
    }

    @NotNull
    public final TimeIntervalMetric getRequestToResponseMetric$vungle_ads_release() {
        return this.requestToResponseMetric;
    }

    @NotNull
    public final TimeIntervalMetric getResponseToShowMetric$vungle_ads_release() {
        return this.responseToShowMetric;
    }

    @NotNull
    public final SingleValueMetric getRewardedMetric$vungle_ads_release() {
        return this.rewardedMetric;
    }

    @NotNull
    public final TimeIntervalMetric getShowToCloseMetric$vungle_ads_release() {
        return this.showToCloseMetric;
    }

    @NotNull
    public final TimeIntervalMetric getShowToFailMetric$vungle_ads_release() {
        return this.showToFailMetric;
    }

    @NotNull
    public final SignalManager getSignalManager$vungle_ads_release() {
        return (SignalManager) this.signalManager$delegate.getValue();
    }

    @Nullable
    public final SignaledAd getSignaledAd$vungle_ads_release() {
        return this.signaledAd;
    }

    @Override // com.vungle.ads.Ad
    public void load(@Nullable final String str) {
        this.requestToResponseMetric.markStart();
        getAdInternal$vungle_ads_release().loadAd(this.placementId, str, new AdLoaderCallback() { // from class: com.vungle.ads.BaseAd$load$1
            @Override // com.vungle.ads.internal.load.AdLoaderCallback
            public void onFailure(@NotNull VungleError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                BaseAd baseAd = BaseAd.this;
                baseAd.onLoadFailure$vungle_ads_release(baseAd, error);
            }

            @Override // com.vungle.ads.internal.load.AdLoaderCallback
            public void onSuccess(@NotNull AdPayload advertisement) {
                Intrinsics.checkNotNullParameter(advertisement, "advertisement");
                BaseAd.this.onAdLoaded$vungle_ads_release(advertisement);
                BaseAd baseAd = BaseAd.this;
                baseAd.onLoadSuccess$vungle_ads_release(baseAd, str);
            }
        });
    }

    public void onAdLoaded$vungle_ads_release(@NotNull AdPayload advertisement) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        advertisement.setAdConfig(this.adConfig);
        this.creativeId = advertisement.getCreativeId();
        String eventId = advertisement.eventId();
        this.eventId = eventId;
        SignaledAd signaledAd = this.signaledAd;
        if (signaledAd != null) {
            signaledAd.setEventId(eventId);
        }
    }

    public void onLoadFailure$vungle_ads_release(@NotNull BaseAd baseAd, @NotNull final VungleError vungleError) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        Intrinsics.checkNotNullParameter(vungleError, "vungleError");
        ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BaseAd$onLoadFailure$1
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
                BaseAdListener adListener = BaseAd.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdFailedToLoad(BaseAd.this, vungleError);
                }
            }
        });
        onLoadEnd();
    }

    public void onLoadSuccess$vungle_ads_release(@NotNull BaseAd baseAd, @Nullable String str) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.BaseAd$onLoadSuccess$1
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
                BaseAdListener adListener = BaseAd.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdLoaded(BaseAd.this);
                }
            }
        });
        onLoadEnd();
    }

    public final void setAdListener(@Nullable BaseAdListener baseAdListener) {
        this.adListener = baseAdListener;
    }

    public final void setSignaledAd$vungle_ads_release(@Nullable SignaledAd signaledAd) {
        this.signaledAd = signaledAd;
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getRequestToResponseMetric$vungle_ads_release$annotations() {
    }
}
