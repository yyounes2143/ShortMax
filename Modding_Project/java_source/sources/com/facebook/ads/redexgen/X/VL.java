package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class VL extends AbstractRunnableC1796Vt {
    public final /* synthetic */ VJ A00;

    public VL(VJ vj2) {
        this.A00 = vj2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        long j10;
        long j11;
        VJ.A00(this.A00);
        j10 = this.A00.A01;
        if (j10 > 0) {
            try {
                j11 = this.A00.A01;
                Thread.sleep(j11);
            } catch (InterruptedException unused) {
            }
        }
        this.A00.A0B();
    }
}
