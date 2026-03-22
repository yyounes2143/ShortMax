package com.google.ads.mediation.vungle;

import android.content.Context;
import com.vungle.ads.AdConfig;
import com.vungle.ads.InterstitialAd;
import com.vungle.ads.NativeAd;
import com.vungle.ads.RewardedAd;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleBannerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleFactory.kt */
@Metadata
/* loaded from: classes4.dex */
public final class VungleFactory {
    @NotNull
    public final AdConfig createAdConfig() {
        return new AdConfig();
    }

    @NotNull
    public final VungleBannerView createBannerAd(@NotNull Context context, @NotNull String placementId, @NotNull VungleAdSize adSize) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        return new VungleBannerView(context, placementId, adSize);
    }

    @NotNull
    public final InterstitialAd createInterstitialAd(@NotNull Context context, @NotNull String placementId, @NotNull AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        return new InterstitialAd(context, placementId, adConfig);
    }

    @NotNull
    public final NativeAd createNativeAd(@NotNull Context context, @NotNull String placementId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        return new NativeAd(context, placementId);
    }

    @NotNull
    public final RewardedAd createRewardedAd(@NotNull Context context, @NotNull String placementId, @NotNull AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        return new RewardedAd(context, placementId, adConfig);
    }
}
