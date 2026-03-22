package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class H0 implements ZY {
    public static byte[] A01;
    public static String[] A02 = {"lymitVL5Elx23yNuagrdcc1tj4byFzuO", "OtHhm4I6MY8qhok47NcALtT", "GJmhN4rXhrf709OMeDU9UKBK4KfDlX2Y", "UKN", "ioCWBc07RK8NAgZ7uqzQ2Ov99bHrMaFb", "vsb8Ufoa8H", "zp4FcHB1hqlJdpy7ZALmHMQwB62WRf78", "qbR"};
    public final /* synthetic */ C4K A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 102);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        if (A02[1].length() != 23) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[0] = "68tvMXLM0DzUKrc9PEEpmru8eIlurAzh";
        strArr[2] = "oZlS45uLmtttWs7KR8Y8sKnmk93hftbi";
        A01 = new byte[]{51, 49, 35, 48, 29, 44, 31, 52, 39, 37, 31, 50, 39, 45, 44, 29, 39, 31, 32};
    }

    static {
        A01();
    }

    public H0(C4K c4k) {
        this.A00 = c4k;
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AES(String str) {
        ZP zp2;
        ZP zp3;
        ZP zp4;
        this.A00.A0F = false;
        zp2 = this.A00.A05;
        if (zp2 != null) {
            zp4 = this.A00.A05;
            zp4.setProgress(100);
        }
        zp3 = this.A00.A05;
        XP.A0L(zp3, 8);
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEU(String str) {
        ZP zp2;
        ZH zh2;
        boolean z10;
        int i10;
        ZH zh3;
        this.A00.A0F = true;
        zp2 = this.A00.A05;
        XP.A0L(zp2, 0);
        zh2 = this.A00.A04;
        if (zh2 != null) {
            zh3 = this.A00.A04;
            zh3.setUrl(str);
        }
        z10 = this.A00.A0E;
        if (!z10) {
            i10 = this.A00.A01;
            if (i10 > 1) {
                this.A00.A0E = true;
                this.A00.A0n(A00(0, 19, 88));
            }
        }
        C4K c4k = this.A00;
        if (A02[1].length() != 23) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[7] = "Ijw";
        strArr[3] = "65M";
        C4K.A03(c4k);
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEq(int i10) {
        boolean z10;
        ZP zp2;
        ZP zp3;
        z10 = this.A00.A0F;
        if (z10) {
            zp2 = this.A00.A05;
            if (zp2 != null) {
                zp3 = this.A00.A05;
                zp3.setProgress(i10);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEt(String str) {
        ZH zh2;
        ZH zh3;
        zh2 = this.A00.A04;
        if (zh2 != null) {
            zh3 = this.A00.A04;
            zh3.setTitle(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEw() {
        ((AbstractC1436Hr) this.A00).A0B.ACf(14);
    }
}
