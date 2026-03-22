package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.lI  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2580lI implements InterfaceC1416Gw {
    public final long A00;
    public final C1415Gv A01;

    public C2580lI(long j10) {
        this(j10, 0L);
    }

    public C2580lI(long j10, long j11) {
        this.A00 = j10;
        this.A01 = new C1415Gv(j11 == 0 ? C1417Gx.A04 : new C1417Gx(0L, j11));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final long A7l() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final C1415Gv A8t(long j10) {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final boolean AAa() {
        return false;
    }
}
