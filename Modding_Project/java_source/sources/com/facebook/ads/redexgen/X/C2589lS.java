package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.lS  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2589lS implements InterfaceC1416Gw {
    public final int A00;
    public final int A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final boolean A06;

    public C2589lS(long j10, long j11, int i10, int i11, boolean z10) {
        this.A05 = j10;
        this.A04 = j11;
        this.A01 = i11 == -1 ? 1 : i11;
        this.A00 = i10;
        this.A06 = z10;
        if (j10 == -1) {
            this.A02 = -1L;
            this.A03 = -9223372036854775807L;
            return;
        }
        this.A02 = j10 - j11;
        this.A03 = A01(j10, j11, i10);
    }

    private long A00(long j10) {
        long positionOffset = this.A01;
        long j11 = ((this.A00 * j10) / 8000000) / positionOffset;
        long positionOffset2 = this.A01;
        long positionOffset3 = j11 * positionOffset2;
        if (this.A02 != -1) {
            positionOffset3 = Math.min(positionOffset3, this.A02 - this.A01);
        }
        long positionOffset4 = Math.max(positionOffset3, 0L);
        long positionOffset5 = this.A04;
        return positionOffset5 + positionOffset4;
    }

    public static long A01(long j10, long j11, int i10) {
        return ((Math.max(0L, j10 - j11) * 8) * 1000000) / i10;
    }

    public final long A02(long j10) {
        return A01(j10, this.A04, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final long A7l() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final C1415Gv A8t(long j10) {
        if (this.A02 == -1 && !this.A06) {
            return new C1415Gv(new C1417Gx(0L, this.A04));
        }
        long A00 = A00(j10);
        long A02 = A02(A00);
        C1417Gx seekPoint = new C1417Gx(A02, A00);
        if (this.A02 == -1 || A02 >= j10 || this.A01 + A00 >= this.A05) {
            return new C1415Gv(seekPoint);
        }
        long seekTimeUs = this.A01 + A00;
        long secondSeekPosition = A02(seekTimeUs);
        return new C1415Gv(seekPoint, new C1417Gx(secondSeekPosition, seekTimeUs));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final boolean AAa() {
        return this.A02 != -1 || this.A06;
    }
}
