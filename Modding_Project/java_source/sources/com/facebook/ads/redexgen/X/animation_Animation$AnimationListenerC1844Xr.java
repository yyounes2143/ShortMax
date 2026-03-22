package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.animation.Animation;
/* renamed from: com.facebook.ads.redexgen.X.Xr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class animation.Animation$AnimationListenerC1844Xr implements Animation.AnimationListener {
    public final /* synthetic */ C6H A00;

    public animation.Animation$AnimationListenerC1844Xr(C6H c6h) {
        this.A00 = c6h;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        int i10;
        Handler handler;
        Runnable runnable;
        int i11;
        this.A00.A06();
        i10 = this.A00.A04;
        if (i10 > 0) {
            handler = this.A00.A05;
            runnable = this.A00.A07;
            i11 = this.A00.A04;
            handler.postDelayed(runnable, i11);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
