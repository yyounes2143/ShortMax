package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.dt  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2144dt implements View.OnClickListener {
    public final /* synthetic */ D1 A00;

    public View$OnClickListenerC2144dt(D1 d12) {
        this.A00 = d12;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C1752Ua c1752Ua;
        C2111dL c2111dL;
        E1 e12;
        boolean A07;
        E1 e13;
        E1 e14;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            c1752Ua = this.A00.A04;
            c1752Ua.A04(UZ.A0l, null);
            c2111dL = this.A00.A03;
            c2111dL.A0F().A3e();
            e12 = this.A00.A00;
            if (e12 != null) {
                A07 = this.A00.A07();
                if (A07) {
                    e14 = this.A00.A00;
                    e14.setVolume(1.0f);
                } else {
                    e13 = this.A00.A00;
                    e13.setVolume(0.0f);
                }
                this.A00.A09();
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
