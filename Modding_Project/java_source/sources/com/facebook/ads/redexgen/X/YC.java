package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class YC implements View.OnClickListener {
    public final /* synthetic */ C1525Lc A00;

    public YC(C1525Lc c1525Lc) {
        this.A00 = c1525Lc;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C1752Ua c1752Ua;
        InterfaceC1840Xn interfaceC1840Xn;
        YY yy;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            c1752Ua = this.A00.A0N;
            c1752Ua.A04(UZ.A07, null);
            interfaceC1840Xn = this.A00.A0Q;
            yy = this.A00.A0R;
            interfaceC1840Xn.A4b(yy.A7o());
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
