package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Yt  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1872Yt implements View.OnClickListener {
    public final /* synthetic */ C1874Yv A00;

    public View$OnClickListenerC1872Yt(C1874Yv c1874Yv) {
        this.A00 = c1874Yv;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1858Yf interfaceC1858Yf;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1858Yf = this.A00.A02;
            interfaceC1858Yf.A9U();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
