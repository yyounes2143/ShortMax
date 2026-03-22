package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* loaded from: assets/audience_network.dex */
public class EF extends AbstractRunnableC1796Vt {
    public final /* synthetic */ E1 A00;

    public EF(E1 e12) {
        this.A00 = e12;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        boolean z10;
        C1731Te c1731Te;
        Handler handler;
        int i10;
        z10 = this.A00.A04;
        if (!z10) {
            c1731Te = this.A00.A0C;
            final int currentPositionInMillis = this.A00.getCurrentPositionInMillis();
            c1731Te.A02(new DY(currentPositionInMillis) { // from class: com.facebook.ads.redexgen.X.3Q
            });
            handler = this.A00.A08;
            i10 = this.A00.A01;
            handler.postDelayed(this, i10);
        }
    }
}
