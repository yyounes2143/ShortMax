package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.facebook.ads.redexgen.X.e5  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2156e5 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ View A00;
    public final /* synthetic */ C1304Co A01;

    public C2156e5(C1304Co c1304Co, View view) {
        this.A01 = c1304Co;
        this.A00 = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        ViewGroup.LayoutParams layoutParams = this.A00.getLayoutParams();
        layoutParams.height = intValue;
        this.A00.setLayoutParams(layoutParams);
    }
}
