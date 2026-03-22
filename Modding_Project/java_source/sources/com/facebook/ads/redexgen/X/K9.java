package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class K9 extends AbstractRunnableC1796Vt {
    public final /* synthetic */ AbstractC1916aB A00;

    public K9(AbstractC1916aB abstractC1916aB) {
        this.A00 = abstractC1916aB;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        Runnable runnable;
        int i10;
        if (this.A00.isPressed()) {
            AbstractC1916aB abstractC1916aB = this.A00;
            i10 = this.A00.A08;
            abstractC1916aB.postDelayed(this, i10);
            return;
        }
        this.A00.setPressed(true);
        AbstractC1916aB abstractC1916aB2 = this.A00;
        runnable = this.A00.A0A;
        abstractC1916aB2.postOnAnimationDelayed(runnable, 250L);
    }
}
