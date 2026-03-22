package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class HP implements InterfaceC1805Wc {
    public final /* synthetic */ C11104n A00;

    public HP(C11104n c11104n) {
        this.A00 = c11104n;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void ACp() {
        InterfaceC2058cT interfaceC2058cT;
        int i10;
        InterfaceC2058cT interfaceC2058cT2;
        interfaceC2058cT = this.A00.A0M;
        i10 = this.A00.A0C;
        interfaceC2058cT.ACy(i10);
        interfaceC2058cT2 = this.A00.A0M;
        interfaceC2058cT2.ACZ();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void AEn(float f10) {
        int i10;
        boolean z10;
        E1 e12;
        int duration;
        boolean z11;
        int i11;
        InterfaceC2058cT interfaceC2058cT;
        i10 = this.A00.A0C;
        float f11 = i10 - f10;
        z10 = this.A00.A0a;
        if (z10) {
            duration = 0;
        } else {
            e12 = this.A00.A0P;
            duration = e12.getDuration();
        }
        float totalForce = f11 + duration;
        z11 = this.A00.A0a;
        if (z11) {
            i11 = this.A00.A0C;
        } else {
            i11 = this.A00.A0B;
        }
        float seenTime = i11;
        float totalForce2 = totalForce / seenTime;
        interfaceC2058cT = this.A00.A0M;
        interfaceC2058cT.AJs(totalForce2);
    }
}
