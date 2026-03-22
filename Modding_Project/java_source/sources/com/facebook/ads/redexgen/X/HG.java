package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class HG implements ZY {
    public static byte[] A01;
    public static String[] A02 = {"BeK4HZWWIRhrC207wWuIOn", "ZxUaKMHZMCvHIxTDkc1UvZSYXikI2iYM", "xy0Ab8m7NOX4ZRxTfyGPwRY1TRrgVPC4", "ij8auLNb9rfA8yI55JUjNirWgnYpCp0M", "e9T4yeifuMgQg3dKDn6E2LsVBs4fgiHR", "ibrxpSG6qut0wBAmR6wSiB8exNotCqiu", "LMYPYXdb4SaVI93FsN1uYFih9", "8N3vGs6nddgUWUG"};
    public final /* synthetic */ C4Z A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A02;
            if (strArr[6].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            A02[2] = "F3dYTVgRpzEGoEWMN2T8FFCtbrhRHRBi";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 99);
            i13++;
        }
    }

    public static void A01() {
        A01 = new byte[]{21, 19, 5, 18, 63, 14, 1, 22, 9, 7, 1, 20, 9, 15, 14, 63, 9, 1, 2};
    }

    static {
        A01();
    }

    public HG(C4Z c4z) {
        this.A00 = c4z;
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AES(String str) {
        ZP zp2;
        ZP zp3;
        this.A00.A0Q = false;
        zp2 = this.A00.A0F;
        zp2.setProgress(100);
        zp3 = this.A00.A0F;
        XP.A0L(zp3, 8);
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEU(String str) {
        ZP zp2;
        ZO zo2;
        boolean z10;
        int i10;
        this.A00.A0Q = true;
        zp2 = this.A00.A0F;
        XP.A0L(zp2, 0);
        zo2 = this.A00.A0E;
        zo2.setUrl(str);
        z10 = this.A00.A0P;
        if (!z10) {
            C4Z c4z = this.A00;
            if (A02[5].charAt(30) != 'i') {
                throw new RuntimeException();
            }
            A02[7] = "LFtEVX0D7i5Pos5vlgnVVb1H7Q5y";
            i10 = c4z.A02;
            if (i10 > 1) {
                this.A00.A0P = true;
                this.A00.A0i(A00(0, 19, 3));
            }
        }
        C4Z.A05(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEq(int i10) {
        boolean z10;
        ZP zp2;
        z10 = this.A00.A0Q;
        if (z10) {
            zp2 = this.A00.A0F;
            zp2.setProgress(i10);
        }
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEt(String str) {
        ZO zo2;
        zo2 = this.A00.A0E;
        zo2.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEw() {
        ((AbstractC1436Hr) this.A00).A0B.ACf(14);
    }
}
