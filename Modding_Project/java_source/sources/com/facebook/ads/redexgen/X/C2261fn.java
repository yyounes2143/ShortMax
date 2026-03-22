package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.fn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2261fn extends AbstractRunnableC1796Vt {
    public final /* synthetic */ C2260fm A00;
    public final /* synthetic */ C5G A01;

    public C2261fn(C2260fm c2260fm, C5G c5g) {
        this.A00 = c2260fm;
        this.A01 = c5g;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        this.A01.setAdViewabilityChecker(this.A00.A02.A1B());
        this.A00.A02.A1f(true, true);
    }
}
