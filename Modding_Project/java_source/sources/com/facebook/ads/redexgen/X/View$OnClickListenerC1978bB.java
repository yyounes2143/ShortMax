package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.bB  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1978bB implements View.OnClickListener {
    public final /* synthetic */ JS A00;

    public View$OnClickListenerC1978bB(JS js2) {
        this.A00 = js2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC2069ce interfaceC2069ce;
        InterfaceC2069ce interfaceC2069ce2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            interfaceC2069ce = this.A00.A02;
            if (interfaceC2069ce != null) {
                interfaceC2069ce2 = this.A00.A02;
                interfaceC2069ce2.A9d();
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
