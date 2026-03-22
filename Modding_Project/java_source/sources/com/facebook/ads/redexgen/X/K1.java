package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class K1 extends AbstractRunnableC1796Vt {
    public final /* synthetic */ AbstractC1916aB A00;

    public K1(AbstractC1916aB abstractC1916aB) {
        this.A00 = abstractC1916aB;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        Runnable runnable;
        int i10;
        this.A00.setPressed(false);
        AbstractC1916aB abstractC1916aB = this.A00;
        runnable = this.A00.A09;
        i10 = this.A00.A08;
        abstractC1916aB.postOnAnimationDelayed(runnable, i10);
    }
}
