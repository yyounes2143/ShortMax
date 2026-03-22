package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.gA  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2283gA implements InterfaceC1663Qn {
    public final /* synthetic */ C11556g A00;

    public C2283gA(C11556g c11556g) {
        this.A00 = c11556g;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1663Qn
    public final void AGP(AbstractC1656Qg abstractC1656Qg, QJ qj2, QJ qj3) {
        this.A00.A1l(abstractC1656Qg, qj2, qj3);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1663Qn
    public final void AGR(AbstractC1656Qg abstractC1656Qg, QJ qj2, QJ qj3) {
        this.A00.A0r.A0Y(abstractC1656Qg);
        this.A00.A1m(abstractC1656Qg, qj2, qj3);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1663Qn
    public final void AGT(AbstractC1656Qg abstractC1656Qg, QJ qj2, QJ qj3) {
        abstractC1656Qg.A0d(false);
        if (this.A00.A0C) {
            if (this.A00.A05.A0R(abstractC1656Qg, abstractC1656Qg, qj2, qj3)) {
                this.A00.A1O();
            }
        } else if (!this.A00.A05.A0Q(abstractC1656Qg, qj2, qj3)) {
        } else {
            this.A00.A1O();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1663Qn
    public final void AJo(AbstractC1656Qg abstractC1656Qg) {
        this.A00.A06.A1F(abstractC1656Qg.A0H, this.A00.A0r);
    }
}
