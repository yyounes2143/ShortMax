package com.facebook.ads.redexgen.X;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.kV  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2543kV implements InterfaceC1467Iw {
    public static byte[] A0C;
    public static String[] A0D = {"jRj2ugi7SPR", "MNKsBNeD8MF1tCUmeU2P5Nj3hkdjoOc", "XMkmXaTlrOCX5lXmL6kh3TwHyWbdiNoj", "CqZnv6WT0ufq4g7hl2oSYE9w8", "bGEXSwT2dmCwLmvORXS7whQ8v", "55313totkqX4mBMXvHmYF6PzdsDv8MD", "C0ywJUyDCeWGQi9DxnjwsD3coqyGffR", "BhHq3twmKlbS1H4hpApJBSGHB"};
    public int A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public long A06;
    public long A07;
    public final long A08;
    public final long A09;
    public final C1466Iv A0A;
    public final AbstractC1470Iz A0B;

    public static String A07(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 83);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A0C = new byte[]{-68, -35, -114, -35, -43, -43, -114, -34, -49, -43, -45, -114, -47, -49, -36, -114, -48, -45, -114, -44, -35, -29, -36, -46, -100};
    }

    static {
        A08();
    }

    public C2543kV(AbstractC1470Iz abstractC1470Iz, long j10, long j11, long j12, long j13, boolean z10) {
        C3M.A07(j10 >= 0 && j11 > j10);
        this.A0B = abstractC1470Iz;
        this.A09 = j10;
        this.A08 = j11;
        if (j12 == j11 - j10 || z10) {
            this.A07 = j13;
            this.A00 = 4;
        } else {
            this.A00 = 0;
        }
        this.A0A = new C1466Iv();
    }

    private long A00(InterfaceC2585lN interfaceC2585lN) throws IOException {
        if (this.A04 == this.A01) {
            return -1L;
        }
        long A8f = interfaceC2585lN.A8f();
        if (this.A0A.A04(interfaceC2585lN, this.A01)) {
            this.A0A.A05(interfaceC2585lN, false);
            interfaceC2585lN.AI1();
            long currentPosition = this.A06 - this.A0A.A05;
            int i10 = this.A0A.A01 + this.A0A.A00;
            if (0 > currentPosition || currentPosition >= 72000) {
                if (currentPosition >= 0) {
                    this.A04 = interfaceC2585lN.A8f() + i10;
                    this.A05 = this.A0A.A05;
                } else {
                    this.A01 = A8f;
                    C1466Iv c1466Iv = this.A0A;
                    String[] strArr = A0D;
                    if (strArr[0].length() == strArr[1].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A0D;
                    strArr2[3] = "rTnMeKP9Ntef56gYj2I82A9Og";
                    strArr2[7] = "Ns8cmH2a0bzEbJPPC1zDKlbsv";
                    this.A02 = c1466Iv.A05;
                }
                if (this.A01 - this.A04 < 100000) {
                    this.A01 = this.A04;
                    return this.A04;
                }
                long offset = i10 * (currentPosition <= 0 ? 2L : 1L);
                long A8f2 = interfaceC2585lN.A8f() - offset;
                long offset2 = this.A01;
                return AbstractC10974a.A0T(A8f2 + (((offset2 - this.A04) * currentPosition) / (this.A02 - this.A05)), this.A04, this.A01 - 1);
            }
            return -1L;
        } else if (this.A04 != A8f) {
            return this.A04;
        } else {
            throw new IOException(A07(0, 25, 27));
        }
    }

    private final long A01(InterfaceC2585lN interfaceC2585lN) throws IOException {
        this.A0A.A02();
        if (this.A0A.A03(interfaceC2585lN)) {
            this.A0A.A05(interfaceC2585lN, false);
            interfaceC2585lN.AJJ(this.A0A.A01 + this.A0A.A00);
            C1466Iv c1466Iv = this.A0A;
            String[] strArr = A0D;
            if (strArr[0].length() != strArr[1].length()) {
                String[] strArr2 = A0D;
                strArr2[3] = "I2mhjjmoE8ZJ2Dg0LzbNmT9WC";
                strArr2[7] = "IEpLWq2gVTEx0SVSUh2piystZ";
                long j10 = c1466Iv.A05;
                while ((this.A0A.A04 & 4) != 4 && this.A0A.A03(interfaceC2585lN) && interfaceC2585lN.A8f() < this.A08) {
                    if (this.A0A.A05(interfaceC2585lN, true)) {
                        C1466Iv c1466Iv2 = this.A0A;
                        String[] strArr3 = A0D;
                        if (strArr3[6].length() == strArr3[5].length()) {
                            A0D[2] = "1J9QEDZvjIULKx6bD2w0xEMzJBfvilpU";
                            if (GZ.A02(interfaceC2585lN, c1466Iv2.A01 + this.A0A.A00)) {
                                j10 = this.A0A.A05;
                            }
                        }
                    }
                    return j10;
                }
                return j10;
            }
            throw new RuntimeException();
        }
        throw new EOFException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1467Iw
    /* renamed from: A05 */
    public final C2544kW A5R() {
        if (this.A07 != 0) {
            return new C2544kW(this);
        }
        return null;
    }

    private void A09(InterfaceC2585lN interfaceC2585lN) throws IOException {
        while (true) {
            this.A0A.A03(interfaceC2585lN);
            this.A0A.A05(interfaceC2585lN, false);
            if (this.A0A.A05 > this.A06) {
                interfaceC2585lN.AI1();
                return;
            }
            interfaceC2585lN.AJJ(this.A0A.A01 + this.A0A.A00);
            this.A04 = interfaceC2585lN.A8f();
            this.A05 = this.A0A.A05;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007d  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1467Iw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long AGd(com.facebook.ads.redexgen.X.InterfaceC2585lN r9) throws java.io.IOException {
        /*
            r8 = this;
            int r0 = r8.A00
            r6 = -1
            r3 = 4
            switch(r0) {
                case 0: goto L43;
                case 1: goto L59;
                case 2: goto Lf;
                case 3: goto L37;
                case 4: goto Le;
                default: goto L8;
            }
        L8:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            throw r0
        Le:
            return r6
        Lf:
            long r4 = r8.A00(r9)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2543kV.A0D
            r0 = 2
            r1 = r1[r0]
            r0 = 28
            char r1 = r1.charAt(r0)
            r0 = 105(0x69, float:1.47E-43)
            if (r1 == r0) goto L28
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L28:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2543kV.A0D
            java.lang.String r1 = "EIP7mTXqLgr9aPVawFNgKKAemnhenv"
            r0 = 4
            r2[r0] = r1
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 == 0) goto L34
            return r4
        L34:
            r0 = 3
            r8.A00 = r0
        L37:
            r8.A09(r9)
            r8.A00 = r3
            long r2 = r8.A05
            r0 = 2
            long r2 = r2 + r0
            long r0 = -r2
            return r0
        L43:
            long r0 = r9.A8f()
            r8.A03 = r0
            r0 = 1
            r8.A00 = r0
            long r4 = r8.A08
            r0 = 65307(0xff1b, double:3.2266E-319)
            long r4 = r4 - r0
            long r1 = r8.A03
            int r0 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r0 <= 0) goto L59
            return r4
        L59:
            long r0 = r8.A01(r9)
            r8.A07 = r0
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2543kV.A0D
            r0 = 6
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L7d
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2543kV.A0D
            java.lang.String r1 = "Q"
            r0 = 4
            r2[r0] = r1
            r8.A00 = r3
            long r0 = r8.A03
            return r0
        L7d:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2543kV.A0D
            java.lang.String r1 = "zPL0M1I0YHefEI7ePcrxVR039vnXiGQX"
            r0 = 2
            r2[r0] = r1
            r8.A00 = r3
            long r0 = r8.A03
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2543kV.AGd(com.facebook.ads.redexgen.X.lN):long");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1467Iw
    public final void AJR(long j10) {
        this.A06 = AbstractC10974a.A0T(j10, 0L, this.A07 - 1);
        this.A00 = 2;
        this.A04 = this.A09;
        this.A01 = this.A08;
        this.A05 = 0L;
        this.A02 = this.A07;
    }
}
