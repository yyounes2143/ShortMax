package com.facebook.ads.redexgen.X;

import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.gy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2331gy extends MQ {
    public static byte[] A01;
    public final /* synthetic */ C2329gw A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 43);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{9, 24, 1, 36, 40, 41, 51, 53, 40, 43, 43, 34, 53, 103, 46, 52, 103, 41, 50, 43, 43};
    }

    public C2331gy(C2329gw c2329gw) {
        this.A00 = c2329gw;
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A06() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A07() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardServerSuccess();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A08() {
        RewardedVideoAd rewardedVideoAd;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd == null) {
            s2SRewardedVideoAdExtendedListener = this.A00.A08;
            s2SRewardedVideoAdExtendedListener.onRewardedVideoCompleted();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A09() {
        RewardedVideoAd rewardedVideoAd;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd == null) {
            s2SRewardedVideoAdExtendedListener = this.A00.A08;
            s2SRewardedVideoAdExtendedListener.onRewardedVideoActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0A() {
        RewardedVideoAd rewardedVideoAd;
        RewardedVideoAd rewardedVideoAd2;
        long j10;
        RewardedVideoAd rewardedVideoAd3;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd != null) {
            rewardedVideoAd2 = this.A00.A03;
            C1677Rb c1677Rb = (C1677Rb) rewardedVideoAd2.buildShowAdConfig();
            long currentTimeMillis = System.currentTimeMillis();
            j10 = this.A00.A02;
            c1677Rb.A02(currentTimeMillis - j10);
            rewardedVideoAd3 = this.A00.A03;
            rewardedVideoAd3.show(c1677Rb.build());
            return;
        }
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardedVideoClosed();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0C() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C2319gm c2319gm;
        this.A00.A07.A0F().A3C();
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        c2319gm = this.A00.A09;
        s2SRewardedVideoAdExtendedListener.onAdClicked(c2319gm.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0D() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C2319gm c2319gm;
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        c2319gm = this.A00.A09;
        s2SRewardedVideoAdExtendedListener.onLoggingImpression(c2319gm.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0F(MP mp2) {
        C11666r c11666r;
        C2319gm c2319gm;
        C2319gm c2319gm2;
        C11666r c11666r2;
        AbstractC1562Mo abstractC1562Mo;
        RewardedVideoAd rewardedVideoAd;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C2319gm c2319gm3;
        AbstractC1562Mo abstractC1562Mo2;
        RewardedVideoAd rewardedVideoAd2;
        AbstractC1562Mo abstractC1562Mo3;
        C2319gm c2319gm4;
        RewardedVideoAd rewardedVideoAd3;
        AbstractC1562Mo abstractC1562Mo4;
        C2319gm c2319gm5;
        C2319gm c2319gm6;
        C2319gm c2319gm7;
        AbstractC1562Mo abstractC1562Mo5;
        C2319gm c2319gm8;
        c11666r = this.A00.A05;
        if (c11666r == null) {
            this.A00.A07.A08().AAy(A00(0, 3, 67), AbstractC1722Sv.A0N, new C1723Sw(A00(3, 18, 108)));
            return;
        }
        AbstractC2402iA abstractC2402iA = (AbstractC2402iA) mp2;
        c2319gm = this.A00.A09;
        if (c2319gm.A03 != null) {
            c2319gm8 = this.A00.A09;
            abstractC2402iA.A02(c2319gm8.A03);
        }
        c2319gm2 = this.A00.A09;
        c2319gm2.A00 = abstractC2402iA.A0H();
        this.A00.A06 = true;
        C2329gw c2329gw = this.A00;
        c11666r2 = this.A00.A05;
        c2329gw.A04 = c11666r2.A0I();
        abstractC1562Mo = this.A00.A04;
        if (abstractC1562Mo != null) {
            int i10 = 0;
            abstractC1562Mo4 = this.A00.A04;
            if (!abstractC1562Mo4.A1T()) {
                abstractC1562Mo5 = this.A00.A04;
                i10 = ((AbstractC2392hy) abstractC1562Mo5).A1x();
            }
            if (i10 > 0) {
                WR wr2 = new WR();
                C2111dL c2111dL = this.A00.A07;
                c2319gm5 = this.A00.A09;
                if (wr2.A09(c2111dL, c2319gm5.A06, i10)) {
                    wr2.A08(this.A00.A07, true);
                    C2329gw c2329gw2 = this.A00;
                    C2111dL c2111dL2 = this.A00.A07;
                    c2319gm6 = this.A00.A09;
                    String str = c2319gm6.A0D;
                    c2319gm7 = this.A00.A09;
                    c2329gw2.A03 = wr2.A07(c2111dL2, str, c2319gm7.A06);
                } else {
                    wr2.A08(this.A00.A07, false);
                }
            }
        }
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd == null) {
            s2SRewardedVideoAdExtendedListener = this.A00.A08;
            c2319gm3 = this.A00.A09;
            s2SRewardedVideoAdExtendedListener.onAdLoaded(c2319gm3.A6c());
            return;
        }
        abstractC1562Mo2 = this.A00.A04;
        ((AbstractC2392hy) abstractC1562Mo2).A2A(true);
        rewardedVideoAd2 = this.A00.A03;
        RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withFailOnCacheFailureEnabled = rewardedVideoAd2.buildLoadAdConfig().withFailOnCacheFailureEnabled(true);
        abstractC1562Mo3 = this.A00.A04;
        RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withRewardData = withFailOnCacheFailureEnabled.withRewardData(abstractC1562Mo3.A0p());
        c2319gm4 = this.A00.A09;
        RewardedVideoAd.RewardedVideoLoadAdConfig loadAdConfig = withRewardData.withAdExperience(c2319gm4.A02).withAdListener(new C1578Ne(this)).build();
        rewardedVideoAd3 = this.A00.A03;
        rewardedVideoAd3.loadAd(loadAdConfig);
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0G(V1 v12) {
        C2319gm c2319gm;
        long j10;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C2319gm c2319gm2;
        this.A00.A0D(true);
        c2319gm = this.A00.A09;
        LH A0F = c2319gm.A0B.A0F();
        j10 = this.A00.A01;
        A0F.A3F(XG.A01(j10), v12.A03().getErrorCode(), v12.A04());
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        c2319gm2 = this.A00.A09;
        s2SRewardedVideoAdExtendedListener.onError(c2319gm2.A6c(), WT.A00(v12));
    }
}
