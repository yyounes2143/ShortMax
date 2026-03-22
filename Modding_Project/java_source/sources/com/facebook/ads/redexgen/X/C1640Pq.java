package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* renamed from: com.facebook.ads.redexgen.X.Pq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1640Pq extends AnimatorListenerAdapter {
    public final /* synthetic */ View A00;
    public final /* synthetic */ ViewPropertyAnimator A01;
    public final /* synthetic */ C11586j A02;
    public final /* synthetic */ AbstractC1656Qg A03;

    public C1640Pq(C11586j c11586j, AbstractC1656Qg abstractC1656Qg, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.A02 = c11586j;
        this.A03 = abstractC1656Qg;
        this.A01 = viewPropertyAnimator;
        this.A00 = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.A01.setListener(null);
        this.A00.setAlpha(1.0f);
        this.A02.A0V(this.A03);
        this.A02.A06.remove(this.A03);
        this.A02.A0b();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
