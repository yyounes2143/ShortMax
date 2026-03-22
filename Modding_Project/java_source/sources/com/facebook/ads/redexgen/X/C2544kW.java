package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.kW  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2544kW implements InterfaceC1416Gw {
    public final /* synthetic */ C2543kV A00;

    public C2544kW(C2543kV c2543kV) {
        this.A00 = c2543kV;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final long A7l() {
        AbstractC1470Iz abstractC1470Iz;
        long j10;
        abstractC1470Iz = this.A00.A0B;
        j10 = this.A00.A07;
        return abstractC1470Iz.A05(j10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final C1415Gv A8t(long j10) {
        AbstractC1470Iz abstractC1470Iz;
        long j11;
        long j12;
        long targetGranule;
        long targetGranule2;
        long j13;
        long j14;
        abstractC1470Iz = this.A00.A0B;
        long A06 = abstractC1470Iz.A06(j10);
        j11 = this.A00.A09;
        j12 = this.A00.A08;
        targetGranule = this.A00.A09;
        targetGranule2 = this.A00.A07;
        j13 = this.A00.A09;
        j14 = this.A00.A08;
        long estimatedPosition = AbstractC10974a.A0T((j11 + (((j12 - targetGranule) * A06) / targetGranule2)) - 30000, j13, j14 - 1);
        return new C1415Gv(new C1417Gx(j10, estimatedPosition));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final boolean AAa() {
        return true;
    }
}
