package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.InterstitialAdListener;
/* renamed from: com.facebook.ads.redexgen.X.Nd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1577Nd implements InterstitialAdListener {
    public final /* synthetic */ AbstractC2392hy A00;
    public final /* synthetic */ C2336h4 A01;

    public C1577Nd(C2336h4 c2336h4, AbstractC2392hy abstractC2392hy) {
        this.A01 = c2336h4;
        this.A00 = abstractC2392hy;
    }

    @Override // com.facebook.ads.AdListener
    public final void onAdClicked(com.facebook.ads.Ad ad2) {
    }

    @Override // com.facebook.ads.AdListener
    public final void onAdLoaded(com.facebook.ads.Ad ad2) {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2328gv c2328gv;
        interstitialAdExtendedListener = this.A01.A00.A07;
        c2328gv = this.A01.A00.A08;
        interstitialAdExtendedListener.onAdLoaded(c2328gv.A6c());
    }

    @Override // com.facebook.ads.AdListener
    public final void onError(com.facebook.ads.Ad ad2, AdError adError) {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2328gv c2328gv;
        this.A01.A00.A01 = null;
        this.A00.A2A(false);
        interstitialAdExtendedListener = this.A01.A00.A07;
        c2328gv = this.A01.A00.A08;
        interstitialAdExtendedListener.onAdLoaded(c2328gv.A6c());
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public final void onInterstitialDismissed(com.facebook.ads.Ad ad2) {
        C11736y c11736y;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2328gv c2328gv;
        C11736y c11736y2;
        C11736y c11736y3;
        C11736y c11736y4;
        this.A01.A00.A04 = false;
        c11736y = this.A01.A00.A03;
        if (c11736y != null) {
            c11736y2 = this.A01.A00.A03;
            c11736y2.A0S(new C2338h6(this));
            c11736y3 = this.A01.A00.A03;
            c11736y3.A0N();
            c11736y4 = this.A01.A00.A03;
            c11736y4.A0K();
            this.A01.A00.A03 = null;
        }
        interstitialAdExtendedListener = this.A01.A00.A07;
        c2328gv = this.A01.A00.A08;
        interstitialAdExtendedListener.onInterstitialDismissed(c2328gv.A6c());
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public final void onInterstitialDisplayed(com.facebook.ads.Ad ad2) {
    }

    @Override // com.facebook.ads.AdListener
    public final void onLoggingImpression(com.facebook.ads.Ad ad2) {
    }
}
