package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: com.facebook.ads.redexgen.X.cE  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2043cE extends AnimatorListenerAdapter {
    public final /* synthetic */ C4Z A00;
    public final /* synthetic */ boolean A01;

    public C2043cE(C4Z c4z, boolean z10) {
        this.A00 = c4z;
        this.A01 = z10;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C1986bJ c1986bJ;
        LJ lj2;
        LJ lj3;
        super.onAnimationEnd(animator);
        c1986bJ = this.A00.A0H;
        c1986bJ.setTranslationY(0.0f);
        this.A00.A0V();
        if (!this.A01) {
            lj2 = this.A00.A0G;
            if (lj2 != null) {
                lj3 = this.A00.A0G;
                lj3.destroy();
            }
        }
    }
}
