package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class JZ extends AbstractRunnableC1796Vt {
    public final /* synthetic */ JU A00;

    public JZ(JU ju2) {
        this.A00 = ju2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        boolean z10;
        C1986bJ c1986bJ;
        z10 = this.A00.A0e;
        if (!z10) {
            c1986bJ = this.A00.A0O;
            XP.A0D(1000, c1986bJ);
        }
        this.A00.postDelayed(this, 2000L);
    }
}
