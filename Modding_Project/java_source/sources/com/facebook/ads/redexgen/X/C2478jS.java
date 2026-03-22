package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.jS  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2478jS implements InterfaceC1416Gw {
    public final int A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final C1508Kl A04;

    public C2478jS(C1508Kl c1508Kl, int i10, long j10, long j11) {
        this.A04 = c1508Kl;
        this.A00 = i10;
        this.A03 = j10;
        this.A01 = (j11 - j10) / c1508Kl.A02;
        this.A02 = A00(this.A01);
    }

    private long A00(long j10) {
        return AbstractC10974a.A0U(j10 * this.A00, 1000000L, this.A04.A04);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final long A7l() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final C1415Gv A8t(long j10) {
        long A0T = AbstractC10974a.A0T((this.A04.A04 * j10) / (this.A00 * 1000000), 0L, this.A01 - 1);
        long j11 = this.A03 + (this.A04.A02 * A0T);
        long A00 = A00(A0T);
        C1417Gx c1417Gx = new C1417Gx(A00, j11);
        if (A00 >= j10 || A0T == this.A01 - 1) {
            return new C1415Gv(c1417Gx);
        }
        long j12 = 1 + A0T;
        return new C1415Gv(c1417Gx, new C1417Gx(A00(j12), this.A03 + (this.A04.A02 * j12)));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final boolean AAa() {
        return true;
    }
}
