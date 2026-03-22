package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Zz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1904Zz implements View.OnClickListener {
    public final /* synthetic */ KL A00;

    public View$OnClickListenerC1904Zz(KL kl2) {
        this.A00 = kl2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0H.getVisibility() != 8) {
                this.A00.A0U();
                this.A00.A0F.removeCallbacks(this.A00.A0V);
                this.A00.A0p(8);
                return;
            }
            this.A00.A0p(0);
            this.A00.A0F.postDelayed(this.A00.A0V, 1500L);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
