package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Yz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1878Yz implements View.OnClickListener {
    public final /* synthetic */ C1860Yh A00;
    public final /* synthetic */ LS A01;

    public View$OnClickListenerC1878Yz(LS ls2, C1860Yh c1860Yh) {
        this.A01 = ls2;
        this.A00 = c1860Yh;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A01();
            this.A01.A0B.AAh();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
