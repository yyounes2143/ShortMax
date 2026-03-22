package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.ValueAnimator;
/* renamed from: com.facebook.ads.redexgen.X.e8  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2159e8 implements Animator.AnimatorListener {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ CY A02;

    public C2159e8(CY cy, int i10, int i11) {
        this.A02 = cy;
        this.A01 = i10;
        this.A00 = i11;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        this.A02.A07(this.A00, this.A01, false);
        valueAnimator = this.A02.A00;
        if (valueAnimator != null) {
            valueAnimator2 = this.A02.A00;
            valueAnimator2.removeAllListeners();
            this.A02.A00 = null;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i10;
        EnumC2152e1 enumC2152e1;
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        CY cy = this.A02;
        int i11 = this.A01;
        i10 = this.A02.A04;
        if (i11 == i10) {
            enumC2152e1 = EnumC2152e1.A02;
        } else {
            enumC2152e1 = EnumC2152e1.A04;
        }
        cy.A01 = enumC2152e1;
        valueAnimator = this.A02.A00;
        if (valueAnimator != null) {
            valueAnimator2 = this.A02.A00;
            valueAnimator2.removeAllListeners();
            this.A02.A00 = null;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
