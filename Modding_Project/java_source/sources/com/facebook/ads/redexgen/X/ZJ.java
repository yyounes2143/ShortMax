package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class ZJ implements View.OnClickListener {
    public final /* synthetic */ ZO A00;

    public ZJ(ZO zo2) {
        this.A00 = zo2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C2111dL c2111dL;
        ZN zn2;
        ZN zn3;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            c2111dL = this.A00.A0A;
            c2111dL.A0F().A9o();
            zn2 = this.A00.A05;
            if (zn2 == null) {
                return;
            }
            zn3 = this.A00.A05;
            zn3.ACl();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
