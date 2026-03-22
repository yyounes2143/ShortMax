package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class J6 extends AbstractRunnableC1796Vt {
    public final /* synthetic */ C1463Is A00;
    public final /* synthetic */ boolean A01;

    public J6(C1463Is c1463Is, boolean z10) {
        this.A00 = c1463Is;
        this.A01 = z10;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        C1949ai c1949ai;
        c1949ai = this.A00.A0c;
        AbstractC1839Xm A0C = c1949ai.A0C();
        if (A0C == null) {
            return;
        }
        A0C.setPageDetailsVisible((this.A01 || A0C.A0B()) ? false : true);
        A0C.setToolbarActionMode(this.A00.getCloseButtonStyle());
    }
}
