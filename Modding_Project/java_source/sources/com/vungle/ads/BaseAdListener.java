package com.vungle.ads;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BaseAdListener.kt */
@Metadata
/* loaded from: classes7.dex */
public interface BaseAdListener {
    void onAdClicked(@NotNull BaseAd baseAd);

    void onAdEnd(@NotNull BaseAd baseAd);

    void onAdFailedToLoad(@NotNull BaseAd baseAd, @NotNull VungleError vungleError);

    void onAdFailedToPlay(@NotNull BaseAd baseAd, @NotNull VungleError vungleError);

    void onAdImpression(@NotNull BaseAd baseAd);

    void onAdLeftApplication(@NotNull BaseAd baseAd);

    void onAdLoaded(@NotNull BaseAd baseAd);

    void onAdStart(@NotNull BaseAd baseAd);
}
