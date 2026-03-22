package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Jq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1487Jq implements InterfaceC1805Wc {
    public final /* synthetic */ C11265d A00;

    public C1487Jq(C11265d c11265d) {
        this.A00 = c11265d;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void ACp() {
        AbstractC1839Xm abstractC1839Xm;
        AbstractC1839Xm abstractC1839Xm2;
        this.A00.A0B = false;
        abstractC1839Xm = this.A00.A06;
        if (abstractC1839Xm != null) {
            abstractC1839Xm2 = this.A00.A06;
            abstractC1839Xm2.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void AEn(float f10) {
        AbstractC1839Xm abstractC1839Xm;
        AbstractC1839Xm abstractC1839Xm2;
        abstractC1839Xm = this.A00.A06;
        if (abstractC1839Xm != null) {
            abstractC1839Xm2 = this.A00.A06;
            abstractC1839Xm2.setProgressImmediate(100.0f * (1.0f - (f10 / ((float) this.A00.getAdInfo().A0K().A00()))));
        }
    }
}
