package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Jt  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1490Jt implements InterfaceC1805Wc {
    public final /* synthetic */ C11285f A00;

    public C1490Jt(C11285f c11285f) {
        this.A00 = c11285f;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void ACp() {
        AbstractC1839Xm abstractC1839Xm;
        AbstractC1839Xm abstractC1839Xm2;
        this.A00.A02 = false;
        abstractC1839Xm = this.A00.A07;
        if (abstractC1839Xm != null) {
            abstractC1839Xm2 = this.A00.A07;
            abstractC1839Xm2.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void AEn(float f10) {
        AbstractC1839Xm abstractC1839Xm;
        AbstractC1839Xm abstractC1839Xm2;
        abstractC1839Xm = this.A00.A07;
        if (abstractC1839Xm != null) {
            abstractC1839Xm2 = this.A00.A07;
            abstractC1839Xm2.setProgressImmediate(100.0f * (1.0f - (f10 / ((float) this.A00.getAdInfo().A0K().A00()))));
        }
    }
}
