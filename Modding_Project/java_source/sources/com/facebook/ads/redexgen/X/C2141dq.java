package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.dq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2141dq extends AnimatorListenerAdapter {
    public final /* synthetic */ D4 A00;

    public C2141dq(D4 d42) {
        this.A00 = d42;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        View view;
        view = this.A00.A00;
        view.setVisibility(8);
    }
}
