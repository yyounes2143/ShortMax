package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.bH  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1984bH implements View.OnClickListener {
    public final /* synthetic */ JR A00;

    public View$OnClickListenerC1984bH(JR jr2) {
        this.A00 = jr2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC2069ce interfaceC2069ce;
        InterfaceC2069ce interfaceC2069ce2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            interfaceC2069ce = this.A00.A07;
            if (interfaceC2069ce != null) {
                interfaceC2069ce2 = this.A00.A07;
                interfaceC2069ce2.AJF();
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
