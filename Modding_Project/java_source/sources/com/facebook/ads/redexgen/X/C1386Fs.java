package com.facebook.ads.redexgen.X;

import android.view.animation.Animation;
/* renamed from: com.facebook.ads.redexgen.X.Fs  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1386Fs extends XO {
    public final /* synthetic */ C1385Fr A00;

    public C1386Fs(C1385Fr c1385Fr) {
        this.A00 = c1385Fr;
    }

    @Override // com.facebook.ads.redexgen.X.XO, android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        XP.A0F(this.A00.A01);
        this.A00.A00.ADh();
    }
}
