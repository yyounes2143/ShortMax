package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.presenter.PresenterDelegate;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardedAdInternal.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RewardedAdInternal extends FullscreenAdInternal implements PresenterDelegate {
    @Nullable
    private String alertBodyText;
    @Nullable
    private String alertCloseButtonText;
    @Nullable
    private String alertContinueButtonText;
    @Nullable
    private String alertTitleText;
    @Nullable
    private String userId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardedAdInternal(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.vungle.ads.internal.presenter.PresenterDelegate
    @Nullable
    public String getAlertBodyText() {
        return this.alertBodyText;
    }

    @Nullable
    public final String getAlertBodyText$vungle_ads_release() {
        return this.alertBodyText;
    }

    @Override // com.vungle.ads.internal.presenter.PresenterDelegate
    @Nullable
    public String getAlertCloseButtonText() {
        return this.alertCloseButtonText;
    }

    @Nullable
    public final String getAlertCloseButtonText$vungle_ads_release() {
        return this.alertCloseButtonText;
    }

    @Override // com.vungle.ads.internal.presenter.PresenterDelegate
    @Nullable
    public String getAlertContinueButtonText() {
        return this.alertContinueButtonText;
    }

    @Nullable
    public final String getAlertContinueButtonText$vungle_ads_release() {
        return this.alertContinueButtonText;
    }

    @Override // com.vungle.ads.internal.presenter.PresenterDelegate
    @Nullable
    public String getAlertTitleText() {
        return this.alertTitleText;
    }

    @Nullable
    public final String getAlertTitleText$vungle_ads_release() {
        return this.alertTitleText;
    }

    @Override // com.vungle.ads.internal.presenter.PresenterDelegate
    @Nullable
    public String getUserId() {
        return this.userId;
    }

    @Nullable
    public final String getUserId$vungle_ads_release() {
        return this.userId;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdTypeForPlacement(@NotNull Placement placement) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        return placement.isRewardedVideo();
    }

    @Override // com.vungle.ads.internal.AdInternal
    public void renderAd$vungle_ads_release(@Nullable AdPlayCallback adPlayCallback, @NotNull AdPayload advertisement) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        AdActivity.Companion.setPresenterDelegate$vungle_ads_release(this);
        super.renderAd$vungle_ads_release(adPlayCallback, advertisement);
    }

    public final void setAlertBodyText$vungle_ads_release(@Nullable String str) {
        this.alertBodyText = str;
    }

    public final void setAlertCloseButtonText$vungle_ads_release(@Nullable String str) {
        this.alertCloseButtonText = str;
    }

    public final void setAlertContinueButtonText$vungle_ads_release(@Nullable String str) {
        this.alertContinueButtonText = str;
    }

    public final void setAlertTitleText$vungle_ads_release(@Nullable String str) {
        this.alertTitleText = str;
    }

    public final void setUserId$vungle_ads_release(@Nullable String str) {
        this.userId = str;
    }
}
