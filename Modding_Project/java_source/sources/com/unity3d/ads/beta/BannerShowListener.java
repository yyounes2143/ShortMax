package com.unity3d.ads.beta;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BannerShowListener.kt */
@Metadata
/* loaded from: classes7.dex */
public interface BannerShowListener {
    void unityAdsBannerDidClick(@NotNull BannerAd bannerAd);

    void unityAdsBannerDidFailShow(@NotNull BannerAd bannerAd, @NotNull UnityAdsError unityAdsError);

    void unityAdsBannerImpression(@NotNull BannerAd bannerAd);
}
