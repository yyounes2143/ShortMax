package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class YZ implements View.OnClickListener {
    public final /* synthetic */ C1855Yc A00;

    public YZ(C1855Yc c1855Yc) {
        this.A00 = c1855Yc;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z10;
        InterfaceC1858Yf interfaceC1858Yf;
        InterfaceC1858Yf interfaceC1858Yf2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            z10 = this.A00.A05;
            if (z10) {
                interfaceC1858Yf2 = this.A00.A04;
                interfaceC1858Yf2.A4v();
                return;
            }
            interfaceC1858Yf = this.A00.A04;
            interfaceC1858Yf.A4w();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
