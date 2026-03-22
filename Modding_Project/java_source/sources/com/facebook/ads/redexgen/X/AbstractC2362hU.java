package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.hU  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2362hU implements S7 {
    public final boolean A00;

    public abstract void A00();

    public abstract void A01(boolean z10);

    public AbstractC2362hU(boolean z10) {
        this.A00 = z10;
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACh() {
        if (this.A00) {
            A00();
        } else {
            A01(false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACq() {
        A01(true);
    }
}
