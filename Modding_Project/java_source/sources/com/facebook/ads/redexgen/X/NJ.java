package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class NJ implements InterfaceC1805Wc {
    public final /* synthetic */ int A00;
    public final /* synthetic */ NI A01;

    public NJ(NI ni2, int i10) {
        this.A01 = ni2;
        this.A00 = i10;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void ACp() {
        InterfaceC1840Xn interfaceC1840Xn;
        this.A01.A03 = false;
        this.A01.A0V();
        this.A01.A0E.setToolbarActionMode(this.A01.getCloseButtonStyle());
        if (this.A01.A07 && this.A01.A06 != null) {
            this.A01.A06.A05();
            interfaceC1840Xn = this.A01.A09;
            interfaceC1840Xn.A4b(new LX().A6d());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void AEn(float f10) {
        this.A01.A0E.setProgress(100.0f * (1.0f - (f10 / this.A00)));
    }
}
