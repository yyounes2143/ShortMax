package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Xx  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1850Xx implements View.OnClickListener {
    public final /* synthetic */ C1591Nr A00;

    public View$OnClickListenerC1850Xx(C1591Nr c1591Nr) {
        this.A00 = c1591Nr;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1838Xl interfaceC1838Xl;
        YQ yq2;
        InterfaceC1838Xl interfaceC1838Xl2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1838Xl = this.A00.A01;
            if (interfaceC1838Xl != null) {
                yq2 = this.A00.A02;
                if (yq2.A02()) {
                    interfaceC1838Xl2 = this.A00.A01;
                    interfaceC1838Xl2.ACC(this.A00);
                }
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
