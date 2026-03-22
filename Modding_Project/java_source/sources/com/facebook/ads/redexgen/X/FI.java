package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class FI implements InterfaceC2002bZ {
    public final /* synthetic */ FH A00;

    public FI(FH fh2) {
        this.A00 = fh2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2002bZ
    public final void AFm(View view) {
        if (this.A00.A09) {
            this.A00.A07 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2002bZ
    public final void AFo(View view) {
        AbstractC1462Ir abstractC1462Ir = (AbstractC1462Ir) view;
        abstractC1462Ir.A1R();
        if (this.A00.A09) {
            this.A00.A07 = true;
        }
        if (this.A00.A04.A0Z() && ((Integer) abstractC1462Ir.getTag(-1593835536)).intValue() == 0) {
            this.A00.A04.A0U();
        }
    }
}
