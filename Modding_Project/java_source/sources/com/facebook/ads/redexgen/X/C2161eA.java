package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.eA  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2161eA implements Animator.AnimatorListener {
    public final /* synthetic */ CU A00;

    public C2161eA(CU cu2) {
        this.A00 = cu2;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.A00.A09(false);
        this.A00.A04();
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        View view;
        this.A00.A01 = EnumC2152e1.A04;
        view = this.A00.A05;
        XP.A0F(view);
        this.A00.A04();
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
