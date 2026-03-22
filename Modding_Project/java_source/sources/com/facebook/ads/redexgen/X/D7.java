package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class D7 extends AbstractC1732Tf<C3Q> {
    public final /* synthetic */ D6 A00;

    public D7(D6 d62) {
        this.A00 = d62;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
    /* renamed from: A00 */
    public final void A03(C3Q c3q) {
        E1 e12;
        E1 e13;
        E1 e14;
        String A02;
        e12 = this.A00.A00;
        if (e12 == null) {
            return;
        }
        D6 d62 = this.A00;
        D6 d63 = this.A00;
        e13 = this.A00.A00;
        int duration = e13.getDuration();
        e14 = this.A00.A00;
        A02 = d63.A02(duration - e14.getCurrentPositionInMillis());
        d62.setText(A02);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
    public final Class<C3Q> A01() {
        return C3Q.class;
    }
}
