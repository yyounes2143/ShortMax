package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class ZC implements View.OnClickListener {
    public final /* synthetic */ ZH A00;

    public ZC(ZH zh2) {
        this.A00 = zh2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C2111dL c2111dL;
        ZG zg2;
        ZG zg3;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            c2111dL = this.A00.A09;
            c2111dL.A0F().A9o();
            zg2 = this.A00.A04;
            if (zg2 == null) {
                return;
            }
            zg3 = this.A00.A04;
            zg3.ACl();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
