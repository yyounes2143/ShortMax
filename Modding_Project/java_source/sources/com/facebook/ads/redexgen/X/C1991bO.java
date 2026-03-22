package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: com.facebook.ads.redexgen.X.bO  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1991bO extends AnimatorListenerAdapter {
    public final /* synthetic */ C1463Is A00;
    public final /* synthetic */ boolean A01;

    public C1991bO(C1463Is c1463Is, boolean z10) {
        this.A00 = c1463Is;
        this.A01 = z10;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        boolean z10;
        LJ lj2;
        LJ lj3;
        super.onAnimationEnd(animator);
        C1463Is c1463Is = this.A00;
        z10 = this.A00.A0D;
        c1463Is.A0q(z10, true);
        if (!this.A01) {
            lj2 = this.A00.A08;
            if (lj2 != null) {
                lj3 = this.A00.A08;
                lj3.destroy();
            }
        }
    }
}
