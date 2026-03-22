package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.hR  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2359hR extends AbstractRunnableC1796Vt {
    public final /* synthetic */ AbstractC2358hQ A00;
    public final /* synthetic */ V1 A01;

    public C2359hR(AbstractC2358hQ abstractC2358hQ, V1 v12) {
        this.A00 = abstractC2358hQ;
        this.A01 = v12;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        this.A00.A0B.A0F().A5Y(this.A01.A03().getErrorCode(), this.A01.A04());
        if (this.A00.A07 != null) {
            this.A00.A07.A0G(this.A01);
        }
    }
}
