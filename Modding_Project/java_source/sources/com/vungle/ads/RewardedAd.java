package com.vungle.ads;

import android.content.Context;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.RewardedAdInternal;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RewardedAd.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RewardedAd extends BaseFullscreenAd {
    public /* synthetic */ RewardedAd(Context context, String str, AdConfig adConfig, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i10 & 4) != 0 ? new AdConfig() : adConfig);
    }

    private final RewardedAdInternal getRewardedAdInternal() {
        AdInternal adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.RewardedAdInternal");
        return (RewardedAdInternal) adInternal$vungle_ads_release;
    }

    public final void setAlertBodyText(@NotNull String bodyText) {
        Intrinsics.checkNotNullParameter(bodyText, "bodyText");
        getRewardedAdInternal().setAlertBodyText$vungle_ads_release(bodyText);
    }

    public final void setAlertCloseButtonText(@NotNull String closeButtonText) {
        Intrinsics.checkNotNullParameter(closeButtonText, "closeButtonText");
        getRewardedAdInternal().setAlertCloseButtonText$vungle_ads_release(closeButtonText);
    }

    public final void setAlertContinueButtonText(@NotNull String continueButtonText) {
        Intrinsics.checkNotNullParameter(continueButtonText, "continueButtonText");
        getRewardedAdInternal().setAlertContinueButtonText$vungle_ads_release(continueButtonText);
    }

    public final void setAlertTitleText(@NotNull String titleText) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        getRewardedAdInternal().setAlertTitleText$vungle_ads_release(titleText);
    }

    public final void setUserId(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        getRewardedAdInternal().setUserId$vungle_ads_release(userId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardedAd(@NotNull Context context, @NotNull String placementId, @NotNull AdConfig adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
    }

    @Override // com.vungle.ads.BaseAd
    @NotNull
    public RewardedAdInternal constructAdInternal$vungle_ads_release(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new RewardedAdInternal(context);
    }
}
