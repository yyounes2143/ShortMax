package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.7t  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C11947t implements InterfaceC2558kk {
    public long A00;
    public final long A01;
    public final AnonymousClass45 A03 = new AnonymousClass45();
    public final AnonymousClass45 A02 = new AnonymousClass45();

    public C11947t(long j10, long j11, long j12) {
        this.A00 = j10;
        this.A01 = j12;
        this.A03.A04(0L);
        this.A02.A04(j11);
    }

    public final void A00(long j10) {
        this.A00 = j10;
    }

    public final void A01(long j10, long j11) {
        if (A02(j10)) {
            return;
        }
        this.A03.A04(j10);
        this.A02.A04(j11);
    }

    public final boolean A02(long j10) {
        long lastIndexedTimeUs = this.A03.A03(this.A03.A02() - 1);
        return j10 - lastIndexedTimeUs < 100000;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2558kk
    public final long A7b() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final long A7l() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final C1415Gv A8t(long j10) {
        int A0C = AbstractC10974a.A0C(this.A03, j10, true, true);
        C1417Gx c1417Gx = new C1417Gx(this.A03.A03(A0C), this.A02.A03(A0C));
        int targetIndex = (c1417Gx.A01 > j10 ? 1 : (c1417Gx.A01 == j10 ? 0 : -1));
        if (targetIndex != 0) {
            int targetIndex2 = this.A03.A02();
            if (A0C != targetIndex2 - 1) {
                int targetIndex3 = A0C + 1;
                long A03 = this.A03.A03(targetIndex3);
                int targetIndex4 = A0C + 1;
                C1417Gx nextSeekPoint = new C1417Gx(A03, this.A02.A03(targetIndex4));
                return new C1415Gv(c1417Gx, nextSeekPoint);
            }
        }
        return new C1415Gv(c1417Gx);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2558kk
    public final long A99(long j10) {
        return this.A03.A03(AbstractC10974a.A0C(this.A02, j10, true, true));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final boolean AAa() {
        return true;
    }
}
