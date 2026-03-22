package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
/* renamed from: com.facebook.ads.redexgen.X.Xw  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1849Xw implements View.OnClickListener {
    public final /* synthetic */ FullScreenAdToolbar A00;

    public View$OnClickListenerC1849Xw(FullScreenAdToolbar fullScreenAdToolbar) {
        this.A00 = fullScreenAdToolbar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1838Xl interfaceC1838Xl;
        YO yo2;
        InterfaceC1838Xl interfaceC1838Xl2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1838Xl = this.A00.A02;
            if (interfaceC1838Xl != null) {
                yo2 = this.A00.A09;
                if (yo2.A06()) {
                    interfaceC1838Xl2 = this.A00.A02;
                    interfaceC1838Xl2.ACC(this.A00);
                }
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
