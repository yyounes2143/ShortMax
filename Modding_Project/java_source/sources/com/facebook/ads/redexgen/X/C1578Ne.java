package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import com.facebook.ads.RewardedVideoAdListener;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
/* renamed from: com.facebook.ads.redexgen.X.Ne  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1578Ne implements RewardedVideoAdListener {
    public final /* synthetic */ C2331gy A00;

    public C1578Ne(C2331gy c2331gy) {
        this.A00 = c2331gy;
    }

    @Override // com.facebook.ads.AdListener
    public final void onAdClicked(com.facebook.ads.Ad ad2) {
    }

    @Override // com.facebook.ads.AdListener
    public final void onAdLoaded(com.facebook.ads.Ad ad2) {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C2319gm c2319gm;
        s2SRewardedVideoAdExtendedListener = this.A00.A00.A08;
        c2319gm = this.A00.A00.A09;
        s2SRewardedVideoAdExtendedListener.onAdLoaded(c2319gm.A6c());
    }

    @Override // com.facebook.ads.AdListener
    public final void onError(com.facebook.ads.Ad ad2, AdError adError) {
        AbstractC1562Mo abstractC1562Mo;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C2319gm c2319gm;
        this.A00.A00.A03 = null;
        abstractC1562Mo = this.A00.A00.A04;
        ((AbstractC2392hy) abstractC1562Mo).A2A(false);
        s2SRewardedVideoAdExtendedListener = this.A00.A00.A08;
        c2319gm = this.A00.A00.A09;
        s2SRewardedVideoAdExtendedListener.onAdLoaded(c2319gm.A6c());
    }

    @Override // com.facebook.ads.AdListener
    public final void onLoggingImpression(com.facebook.ads.Ad ad2) {
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public final void onRewardedVideoClosed() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        s2SRewardedVideoAdExtendedListener = this.A00.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardedVideoClosed();
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public final void onRewardedVideoCompleted() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        s2SRewardedVideoAdExtendedListener = this.A00.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardedVideoCompleted();
    }
}
