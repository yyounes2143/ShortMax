package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Ya  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1853Ya implements View.OnClickListener {
    public final /* synthetic */ C1855Yc A00;

    public View$OnClickListenerC1853Ya(C1855Yc c1855Yc) {
        this.A00 = c1855Yc;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1858Yf interfaceC1858Yf;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1858Yf = this.A00.A04;
            interfaceC1858Yf.AAg();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
