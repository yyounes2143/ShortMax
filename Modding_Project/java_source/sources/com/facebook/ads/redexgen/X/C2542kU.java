package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.kU  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2542kU implements InterfaceC1467Iw {
    public long A00 = -1;
    public long A01 = -1;
    public C1400Gg A02;
    public C1401Gh A03;

    public C2542kU(C1401Gh c1401Gh, C1400Gg c1400Gg) {
        this.A03 = c1401Gh;
        this.A02 = c1400Gg;
    }

    public final void A00(long j10) {
        this.A00 = j10;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1467Iw
    public final InterfaceC1416Gw A5R() {
        C3M.A08(this.A00 != -1);
        return new C2582lK(this.A03, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1467Iw
    public final long AGd(InterfaceC2585lN interfaceC2585lN) {
        if (this.A01 >= 0) {
            long result = -(this.A01 + 2);
            this.A01 = -1L;
            return result;
        }
        return -1L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1467Iw
    public final void AJR(long j10) {
        long[] jArr = this.A02.A01;
        this.A01 = jArr[AbstractC10974a.A0L(jArr, j10, true, true)];
    }
}
