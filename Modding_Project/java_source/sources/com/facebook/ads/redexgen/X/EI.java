package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class EI extends AbstractRunnableC1796Vt {
    public final /* synthetic */ EG A00;

    public EI(EG eg2) {
        this.A00 = eg2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        C2114dO c2114dO;
        E1 e12;
        DR dr2;
        DX dx;
        c2114dO = this.A00.A03;
        c2114dO.A07();
        e12 = this.A00.A04;
        C1731Te<AbstractC1732Tf, C1730Td> eventBus = e12.getEventBus();
        dr2 = this.A00.A06;
        dx = this.A00.A05;
        eventBus.A04(dr2, dx);
    }
}
