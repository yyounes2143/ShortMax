package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdListener;
/* renamed from: com.facebook.ads.redexgen.X.ft  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2267ft extends AbstractRunnableC1783Vg {
    public final /* synthetic */ C2264fq A00;

    public C2267ft(C2264fq c2264fq) {
        this.A00 = c2264fq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1783Vg
    public final void A01() {
        C1675Qz c1675Qz;
        C1675Qz c1675Qz2;
        C1675Qz c1675Qz3;
        c1675Qz = this.A00.A01;
        if (c1675Qz.A06() != null) {
            c1675Qz2 = this.A00.A01;
            AdListener A06 = c1675Qz2.A06();
            c1675Qz3 = this.A00.A01;
            A06.onAdLoaded(c1675Qz3.A07());
        }
    }
}
