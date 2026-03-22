package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class FN implements InterfaceC2069ce {
    public final /* synthetic */ C10883r A00;

    public FN(C10883r c10883r) {
        this.A00 = c10883r;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2069ce
    public final void A9d() {
        AbstractC1945ae abstractC1945ae;
        AbstractC1945ae abstractC1945ae2;
        abstractC1945ae = this.A00.A03;
        if (abstractC1945ae instanceof C11265d) {
            abstractC1945ae2 = this.A00.A03;
            ((C11265d) abstractC1945ae2).A1W();
            C1752Ua.A02(UZ.A0e, null, ((G2) this.A00).A02.A25(), ((G2) this.A00).A04.A0A());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2069ce
    public final void AJF() {
        AbstractC1945ae abstractC1945ae;
        AbstractC1945ae abstractC1945ae2;
        C10793i c10793i;
        abstractC1945ae = this.A00.A03;
        if (abstractC1945ae instanceof C11265d) {
            abstractC1945ae2 = this.A00.A03;
            c10793i = this.A00.A0M;
            ((C11265d) abstractC1945ae2).A1a(c10793i);
            C1752Ua.A02(UZ.A0e, null, ((G2) this.A00).A02.A25(), ((G2) this.A00).A04.A0A());
        }
        this.A00.A0k();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2069ce
    public final void AJT() {
        AbstractC1945ae abstractC1945ae;
        AbstractC1945ae abstractC1945ae2;
        this.A00.A0c();
        abstractC1945ae = this.A00.A03;
        if (abstractC1945ae instanceof C11265d) {
            abstractC1945ae2 = this.A00.A03;
            ((C11265d) abstractC1945ae2).getAdDetailsView().setVisibility(8);
        }
    }
}
