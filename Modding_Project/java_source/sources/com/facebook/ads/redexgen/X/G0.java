package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class G0 implements InterfaceC2058cT {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C1392Fy A01;

    public G0(C1392Fy c1392Fy, int i10) {
        this.A01 = c1392Fy;
        this.A00 = i10;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2058cT
    public final void ABr() {
        this.A01.A0E();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2058cT
    public final void ACZ() {
        this.A01.A0V(false, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2058cT
    public final void ACy(int i10) {
        C1392Fy.A02(this.A01, i10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2058cT
    public final void ADI(float f10) {
        boolean z10;
        z10 = this.A01.A08;
        if (!z10) {
            this.A01.A0J(f10);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2058cT
    public final void AFE(boolean z10) {
        this.A01.A0U(z10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2058cT
    public final void AFg(String str) {
        C2111dL c2111dL;
        InterfaceC1840Xn interfaceC1840Xn;
        YY yy;
        c2111dL = this.A01.A0D;
        c2111dL.A0F().A3S(str);
        interfaceC1840Xn = this.A01.A0I;
        yy = this.A01.A0J;
        interfaceC1840Xn.A4b(yy.A7t());
        this.A01.A0K(3);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2058cT
    public final void AJr() {
        AbstractC1839Xm abstractC1839Xm;
        AbstractC1839Xm abstractC1839Xm2;
        this.A01.setUnskippableSecondsComplete(false);
        abstractC1839Xm = this.A01.A0H;
        abstractC1839Xm.setProgressImmediate(0.0f);
        abstractC1839Xm2 = this.A01.A0H;
        abstractC1839Xm2.setToolbarActionMode(2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2058cT
    public final void AJs(float f10) {
        AbstractC1839Xm abstractC1839Xm;
        abstractC1839Xm = this.A01.A0H;
        abstractC1839Xm.setProgress(100.0f * f10);
    }
}
