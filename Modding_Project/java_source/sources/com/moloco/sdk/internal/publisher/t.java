package com.moloco.sdk.internal.publisher;

import com.moloco.sdk.internal.h0;
import com.moloco.sdk.publisher.AdShowListener;
import com.moloco.sdk.publisher.MolocoAd;
import com.moloco.sdk.publisher.MolocoAdError;
import com.moloco.sdk.publisher.RewardedInterstitialAdShowListener;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class t implements RewardedInterstitialAdShowListener, AdShowListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AdShowListener f32963a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final RewardedInterstitialAdShowListener f32964b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final Function0<com.moloco.sdk.internal.ortb.model.r> f32965c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final com.moloco.sdk.internal.h0 f32966d;

    public t(@Nullable RewardedInterstitialAdShowListener rewardedInterstitialAdShowListener, @NotNull Function0<com.moloco.sdk.internal.ortb.model.r> provideSdkEvents, @NotNull com.moloco.sdk.internal.h0 sdkEventUrlTracker) {
        Intrinsics.checkNotNullParameter(provideSdkEvents, "provideSdkEvents");
        Intrinsics.checkNotNullParameter(sdkEventUrlTracker, "sdkEventUrlTracker");
        this.f32963a = d0.a(rewardedInterstitialAdShowListener);
        this.f32964b = rewardedInterstitialAdShowListener;
        this.f32965c = provideSdkEvents;
        this.f32966d = sdkEventUrlTracker;
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdClicked(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        this.f32963a.onAdClicked(molocoAd);
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdHidden(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        this.f32963a.onAdHidden(molocoAd);
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdShowFailed(@NotNull MolocoAdError molocoAdError) {
        Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
        RewardedInterstitialAdShowListener rewardedInterstitialAdShowListener = this.f32964b;
        if (rewardedInterstitialAdShowListener != null) {
            rewardedInterstitialAdShowListener.onAdShowFailed(molocoAdError);
        }
    }

    @Override // com.moloco.sdk.publisher.AdShowListener
    public void onAdShowSuccess(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        this.f32963a.onAdShowSuccess(molocoAd);
    }

    @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
    public void onRewardedVideoCompleted(@NotNull MolocoAd molocoAd) {
        String i10;
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        com.moloco.sdk.internal.ortb.model.r invoke = this.f32965c.invoke();
        if (invoke != null && (i10 = invoke.i()) != null) {
            h0.a.a(this.f32966d, i10, System.currentTimeMillis(), null, 4, null);
        }
        RewardedInterstitialAdShowListener rewardedInterstitialAdShowListener = this.f32964b;
        if (rewardedInterstitialAdShowListener != null) {
            rewardedInterstitialAdShowListener.onRewardedVideoCompleted(molocoAd);
        }
    }

    @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
    public void onRewardedVideoStarted(@NotNull MolocoAd molocoAd) {
        String j10;
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        com.moloco.sdk.internal.ortb.model.r invoke = this.f32965c.invoke();
        if (invoke != null && (j10 = invoke.j()) != null) {
            h0.a.a(this.f32966d, j10, System.currentTimeMillis(), null, 4, null);
        }
        RewardedInterstitialAdShowListener rewardedInterstitialAdShowListener = this.f32964b;
        if (rewardedInterstitialAdShowListener != null) {
            rewardedInterstitialAdShowListener.onRewardedVideoStarted(molocoAd);
        }
    }

    @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
    public void onUserRewarded(@NotNull MolocoAd molocoAd) {
        String k10;
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        com.moloco.sdk.internal.ortb.model.r invoke = this.f32965c.invoke();
        if (invoke != null && (k10 = invoke.k()) != null) {
            h0.a.a(this.f32966d, k10, System.currentTimeMillis(), null, 4, null);
        }
        RewardedInterstitialAdShowListener rewardedInterstitialAdShowListener = this.f32964b;
        if (rewardedInterstitialAdShowListener != null) {
            rewardedInterstitialAdShowListener.onUserRewarded(molocoAd);
        }
    }
}
