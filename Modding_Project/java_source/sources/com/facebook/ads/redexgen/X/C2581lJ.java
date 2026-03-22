package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.lJ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2581lJ implements InterfaceC1416Gw {
    public final long A00;
    public final boolean A01;
    public final long[] A02;
    public final long[] A03;

    public C2581lJ(long[] jArr, long[] jArr2, long j10) {
        C3M.A07(jArr.length == jArr2.length);
        int length = jArr2.length;
        this.A01 = length > 0;
        if (this.A01) {
            int length2 = (jArr2[0] > 0L ? 1 : (jArr2[0] == 0L ? 0 : -1));
            if (length2 > 0) {
                int length3 = length + 1;
                this.A02 = new long[length3];
                int length4 = length + 1;
                this.A03 = new long[length4];
                System.arraycopy(jArr, 0, this.A02, 1, length);
                System.arraycopy(jArr2, 0, this.A03, 1, length);
                this.A00 = j10;
            }
        }
        this.A02 = jArr;
        this.A03 = jArr2;
        this.A00 = j10;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final long A7l() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final C1415Gv A8t(long j10) {
        if (!this.A01) {
            return new C1415Gv(C1417Gx.A04);
        }
        int A0L = AbstractC10974a.A0L(this.A03, j10, true, true);
        C1417Gx c1417Gx = new C1417Gx(this.A03[A0L], this.A02[A0L]);
        int targetIndex = (c1417Gx.A01 > j10 ? 1 : (c1417Gx.A01 == j10 ? 0 : -1));
        if (targetIndex != 0) {
            int targetIndex2 = this.A03.length;
            if (A0L != targetIndex2 - 1) {
                int targetIndex3 = A0L + 1;
                long j11 = this.A03[targetIndex3];
                int targetIndex4 = A0L + 1;
                C1417Gx rightSeekPoint = new C1417Gx(j11, this.A02[targetIndex4]);
                return new C1415Gv(c1417Gx, rightSeekPoint);
            }
        }
        return new C1415Gv(c1417Gx);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final boolean AAa() {
        return this.A01;
    }
}
