package com.facebook.ads.redexgen.X;

import com.facebook.ads.RewardedInterstitialAd;
/* loaded from: assets/audience_network.dex */
public final class RY implements RewardedInterstitialAd.RewardedInterstitialAdShowConfigBuilder, RewardedInterstitialAd.RewardedInterstitialShowAdConfig {
    public final C1677Rb A00;

    public RY(C1677Rb c1677Rb) {
        this.A00 = c1677Rb;
    }

    public final C1677Rb A00() {
        return this.A00;
    }

    @Override // com.facebook.ads.RewardedInterstitialAd.RewardedInterstitialAdShowConfigBuilder, com.facebook.ads.FullScreenAd.ShowConfigBuilder
    public final RewardedInterstitialAd.RewardedInterstitialShowAdConfig build() {
        return this;
    }

    @Override // com.facebook.ads.RewardedInterstitialAd.RewardedInterstitialAdShowConfigBuilder
    public final RewardedInterstitialAd.RewardedInterstitialAdShowConfigBuilder withAppOrientation(int i10) {
        this.A00.withAppOrientation(i10);
        return this;
    }
}
