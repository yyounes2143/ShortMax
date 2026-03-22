package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.ib  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2429ib extends AbstractRunnableC1796Vt {
    public final /* synthetic */ C2427iZ A00;
    public final /* synthetic */ C5G A01;

    public C2429ib(C2427iZ c2427iZ, C5G c5g) {
        this.A00 = c2427iZ;
        this.A01 = c5g;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        C2184eX c2184eX;
        C2184eX c2184eX2;
        C2184eX c2184eX3;
        this.A00.A00.A0A();
        c2184eX = this.A00.A00.A0C;
        if (c2184eX != null) {
            C5G c5g = this.A01;
            c2184eX2 = this.A00.A00.A0C;
            c5g.setAdViewabilityChecker(c2184eX2);
            c2184eX3 = this.A00.A00.A0C;
            c2184eX3.A0U();
        }
    }
}
