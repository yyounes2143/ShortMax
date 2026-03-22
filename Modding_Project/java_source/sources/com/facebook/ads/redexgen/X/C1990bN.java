package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.bN  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1990bN implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ C1463Is A00;

    public C1990bN(C1463Is c1463Is) {
        this.A00 = c1463Is;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        View view;
        View view2;
        view = this.A00.A0U;
        view.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        view2 = this.A00.A0U;
        view2.requestLayout();
    }
}
