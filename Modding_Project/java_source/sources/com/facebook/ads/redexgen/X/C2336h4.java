package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.h4  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2336h4 extends MQ {
    public static byte[] A01;
    public static String[] A02 = {"swComlxz6aoGHqKS8LOj1g5iAOstdInC", "iLoXwxITRpbgZFbT1koR1uJW4vvDXY2W", "MpkXHfR6HdYIg9t449R", "HQI6v11U6roDlbOuDHGyMjhCWVrAbgmk", "qsbQ14vrFuO8q1N0nwgFIOsRNgh3HWyt", "NXqrvE65RyYHWICx", "E9yzS8MfEszoKvwo", "osh9YHk0bwFUuMRHqHbnPk"};
    public final /* synthetic */ C2332gz A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 98);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{97, 112, 105, 47, 35, 34, 56, 62, 35, 32, 32, 41, 62, 108, 37, 63, 108, 34, 57, 32, 32};
    }

    static {
        A01();
    }

    public C2336h4(C2332gz c2332gz) {
        this.A00 = c2332gz;
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A02() {
        InterstitialAd interstitialAd;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAd = this.A00.A01;
        if (interstitialAd == null) {
            this.A00.A04 = false;
            interstitialAdExtendedListener = this.A00.A07;
            interstitialAdExtendedListener.onInterstitialActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A04() {
        InterstitialAd interstitialAd;
        InterstitialAd interstitialAd2;
        C11736y c11736y;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2328gv c2328gv;
        C11736y c11736y2;
        C11736y c11736y3;
        C11736y c11736y4;
        interstitialAd = this.A00.A01;
        if (interstitialAd != null) {
            interstitialAd2 = this.A00.A01;
            interstitialAd2.show();
            return;
        }
        this.A00.A04 = false;
        c11736y = this.A00.A03;
        if (c11736y != null && U7.A26(this.A00.A06)) {
            c11736y2 = this.A00.A03;
            c11736y2.A0S(new C2337h5(this));
            c11736y3 = this.A00.A03;
            c11736y3.A0N();
            c11736y4 = this.A00.A03;
            c11736y4.A0K();
            this.A00.A03 = null;
        }
        interstitialAdExtendedListener = this.A00.A07;
        c2328gv = this.A00.A08;
        interstitialAdExtendedListener.onInterstitialDismissed(c2328gv.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A05() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2328gv c2328gv;
        interstitialAdExtendedListener = this.A00.A07;
        c2328gv = this.A00.A08;
        interstitialAdExtendedListener.onInterstitialDisplayed(c2328gv.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A06() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAdExtendedListener = this.A00.A07;
        interstitialAdExtendedListener.onRewardedAdServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A07() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAdExtendedListener = this.A00.A07;
        interstitialAdExtendedListener.onRewardedAdServerSucceeded();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A08() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAdExtendedListener = this.A00.A07;
        interstitialAdExtendedListener.onRewardedAdCompleted();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0C() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2328gv c2328gv;
        this.A00.A06.A0F().A3C();
        interstitialAdExtendedListener = this.A00.A07;
        c2328gv = this.A00.A08;
        interstitialAdExtendedListener.onAdClicked(c2328gv.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0D() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2328gv c2328gv;
        interstitialAdExtendedListener = this.A00.A07;
        c2328gv = this.A00.A08;
        interstitialAdExtendedListener.onLoggingImpression(c2328gv.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0E(View view) {
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0F(MP mp2) {
        C11736y c11736y;
        C11736y c11736y2;
        AbstractC1562Mo abstractC1562Mo;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2328gv c2328gv;
        AbstractC1562Mo abstractC1562Mo2;
        InterstitialAd interstitialAd;
        InterstitialAdExtendedListener interstitialAdExtendedListener2;
        C2328gv c2328gv2;
        InterstitialAdExtendedListener interstitialAdExtendedListener3;
        C2328gv c2328gv3;
        InterstitialAd interstitialAd2;
        C2328gv c2328gv4;
        C2328gv c2328gv5;
        InterstitialAd interstitialAd3;
        C2328gv c2328gv6;
        C2328gv c2328gv7;
        C2328gv c2328gv8;
        c11736y = this.A00.A03;
        if (c11736y != null) {
            this.A00.A05 = true;
            C2332gz c2332gz = this.A00;
            c11736y2 = this.A00.A03;
            c2332gz.A02 = c11736y2.A0I();
            abstractC1562Mo = this.A00.A02;
            if (!(abstractC1562Mo instanceof AbstractC2392hy)) {
                interstitialAdExtendedListener = this.A00.A07;
                String[] strArr = A02;
                if (strArr[0].charAt(8) == strArr[3].charAt(8)) {
                    String[] strArr2 = A02;
                    strArr2[6] = "JHAXxmwzHKs3NajX";
                    strArr2[5] = "FHZeNyejFCAXh3Vz";
                    c2328gv = this.A00.A08;
                    interstitialAdExtendedListener.onAdLoaded(c2328gv.A6c());
                    return;
                }
            } else {
                abstractC1562Mo2 = this.A00.A02;
                AbstractC2392hy abstractC2392hy = (AbstractC2392hy) abstractC1562Mo2;
                if (abstractC2392hy.A1x() > 0) {
                    WR wr2 = new WR();
                    C2111dL c2111dL = this.A00.A06;
                    c2328gv6 = this.A00.A08;
                    if (wr2.A09(c2111dL, c2328gv6.A08(), abstractC2392hy.A1x())) {
                        wr2.A08(this.A00.A06, true);
                        C2332gz c2332gz2 = this.A00;
                        C2111dL c2111dL2 = this.A00.A06;
                        c2328gv7 = this.A00.A08;
                        String A0A = c2328gv7.A0A();
                        c2328gv8 = this.A00.A08;
                        c2332gz2.A01 = wr2.A06(c2111dL2, A0A, c2328gv8.A08());
                    } else {
                        C2332gz c2332gz3 = this.A00;
                        if (A02[1].charAt(2) != 'w') {
                            A02[7] = "alFbtn3b1";
                            wr2.A08(c2332gz3.A06, false);
                        } else {
                            String[] strArr3 = A02;
                            strArr3[6] = "OkLAbmcEeyte5Vfo";
                            strArr3[5] = "zgaU15rF2mVDrexS";
                            wr2.A08(c2332gz3.A06, false);
                        }
                    }
                }
                C2332gz c2332gz4 = this.A00;
                if (A02[1].charAt(2) != 'w') {
                    A02[1] = "23I4hcZMgJ395X2lYna8PMjzW0ozt3hz";
                    interstitialAd = c2332gz4.A01;
                    if (interstitialAd != null) {
                        abstractC2392hy.A2A(true);
                        interstitialAd2 = this.A00.A01;
                        InterstitialAd.InterstitialAdLoadConfigBuilder withAdListener = interstitialAd2.buildLoadAdConfig().withAdListener(new C1577Nd(this, abstractC2392hy));
                        c2328gv4 = this.A00.A08;
                        InterstitialAd.InterstitialAdLoadConfigBuilder withCacheFlags = withAdListener.withCacheFlags(c2328gv4.A0B());
                        c2328gv5 = this.A00.A08;
                        InterstitialAd.InterstitialLoadAdConfig loadAdConfig = withCacheFlags.withRewardData(c2328gv5.A03()).build();
                        interstitialAd3 = this.A00.A01;
                        interstitialAd3.loadAd(loadAdConfig);
                        return;
                    }
                    C2332gz c2332gz5 = this.A00;
                    String[] strArr4 = A02;
                    if (strArr4[0].charAt(8) != strArr4[3].charAt(8)) {
                        interstitialAdExtendedListener3 = c2332gz5.A07;
                        c2328gv3 = this.A00.A08;
                        interstitialAdExtendedListener3.onAdLoaded(c2328gv3.A6c());
                        return;
                    }
                    A02[2] = "joZPUUFug9Ts";
                    interstitialAdExtendedListener2 = c2332gz5.A07;
                    c2328gv2 = this.A00.A08;
                    interstitialAdExtendedListener2.onAdLoaded(c2328gv2.A6c());
                    return;
                }
            }
            throw new RuntimeException();
        }
        this.A00.A06.A08().AAy(A00(0, 3, 98), AbstractC1722Sv.A0N, new C1723Sw(A00(3, 18, 46)));
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0G(V1 v12) {
        long j10;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2328gv c2328gv;
        LH A0F = this.A00.A06.A0F();
        j10 = this.A00.A00;
        A0F.A3F(XG.A01(j10), v12.A03().getErrorCode(), v12.A04());
        interstitialAdExtendedListener = this.A00.A07;
        c2328gv = this.A00.A08;
        interstitialAdExtendedListener.onError(c2328gv.A6c(), WT.A00(v12));
    }
}
