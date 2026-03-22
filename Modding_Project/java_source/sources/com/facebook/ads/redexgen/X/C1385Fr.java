package com.facebook.ads.redexgen.X;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
/* renamed from: com.facebook.ads.redexgen.X.Fr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1385Fr extends AbstractRunnableC1796Vt {
    public final /* synthetic */ InterfaceC2061cW A00;
    public final /* synthetic */ C2062cX A01;

    public C1385Fr(C2062cX c2062cX, InterfaceC2061cW interfaceC2061cW) {
        this.A01 = c2062cX;
        this.A00 = interfaceC2061cW;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(300L);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setAnimationListener(new C1386Fs(this));
        this.A01.startAnimation(alphaAnimation);
    }
}
