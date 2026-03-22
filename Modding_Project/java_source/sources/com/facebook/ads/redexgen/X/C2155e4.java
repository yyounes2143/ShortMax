package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.e4  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2155e4 implements Animator.AnimatorListener {
    public final /* synthetic */ C1304Co A00;

    public C2155e4(C1304Co c1304Co) {
        this.A00 = c1304Co;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        this.A00.A08(false);
        valueAnimator = this.A00.A01;
        if (valueAnimator != null) {
            valueAnimator2 = this.A00.A01;
            valueAnimator2.removeAllListeners();
            this.A00.A01 = null;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        View view;
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        this.A00.A02 = EnumC2152e1.A04;
        view = this.A00.A05;
        XP.A0F(view);
        valueAnimator = this.A00.A01;
        if (valueAnimator != null) {
            valueAnimator2 = this.A00.A01;
            valueAnimator2.removeAllListeners();
            this.A00.A01 = null;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
