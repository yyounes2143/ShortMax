package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: com.facebook.ads.redexgen.X.b3  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1970b3 extends AnimatorListenerAdapter {
    public final /* synthetic */ JU A00;
    public final /* synthetic */ boolean A01;

    public C1970b3(JU ju2, boolean z10) {
        this.A00 = ju2;
        this.A01 = z10;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C1986bJ c1986bJ;
        C1312Cw c1312Cw;
        AbstractC2392hy abstractC2392hy;
        C1312Cw c1312Cw2;
        C1312Cw c1312Cw3;
        LJ lj2;
        LJ lj3;
        super.onAnimationEnd(animator);
        c1986bJ = this.A00.A0O;
        c1986bJ.setTranslationY(0.0f);
        this.A00.A0W();
        if (!this.A01) {
            lj2 = this.A00.A0L;
            if (lj2 != null) {
                lj3 = this.A00.A0L;
                lj3.destroy();
            }
        }
        c1312Cw = this.A00.A0m;
        if (c1312Cw != null) {
            abstractC2392hy = this.A00.A0H;
            if (!abstractC2392hy.A1a()) {
                c1312Cw3 = this.A00.A0m;
                c1312Cw3.setVisibility(this.A01 ? 8 : 0);
                return;
            }
            c1312Cw2 = this.A00.A0m;
            c1312Cw2.setVisibility(8);
        }
    }
}
