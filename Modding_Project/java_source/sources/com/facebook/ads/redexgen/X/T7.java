package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class T7 implements S7 {
    public static byte[] A03;
    public static String[] A04 = {"mqH0C", "P", "Prv4rgxv4XvjDltPpSeqnrL7fWipLvZ8", "wRAQVkTW0Fdys8", "msKGEa7u", "", "70lhKNnmmmhMBIKZ0qoNvOWwjw91iHAS", "ylnG6cBHFe0YAiTdKU1DLGP7G6QidCUo"};
    public final /* synthetic */ C2415iN A00;
    public final /* synthetic */ C1652Qc A01;
    public final /* synthetic */ boolean A02;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 103);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{28, 55, 63, 66, 59, 58, -10, 74, 69, -10, 58, 69, 77, 68, 66, 69, 55, 58, -10, 55, -10, 67, 59, 58, 63, 55, 4};
    }

    static {
        A01();
    }

    public T7(C1652Qc c1652Qc, C2415iN c2415iN, boolean z10) {
        this.A01 = c1652Qc;
        this.A00 = c2415iN;
        this.A02 = z10;
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACh() {
        C2111dL c2111dL;
        long j10;
        QQ qq2;
        QQ qq3;
        if (this.A01.A0a != null) {
            this.A01.A0a.A0J();
            this.A01.A0a = null;
        }
        AdErrorType adErrorType = AdErrorType.CACHE_FAILURE_ERROR;
        String A00 = A00(0, 27, 111);
        c2111dL = this.A01.A0c;
        LH A0F = c2111dL.A0F();
        j10 = this.A01.A00;
        A0F.A3F(XG.A01(j10), adErrorType.getErrorCode(), A00);
        qq2 = this.A01.A0G;
        if (qq2 != null) {
            qq3 = this.A01.A0G;
            qq3.ADB(V1.A01(adErrorType, A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACq() {
        QQ qq2;
        EnumC1763Ul enumC1763Ul;
        C2111dL c2111dL;
        QQ qq3;
        C2111dL c2111dL2;
        boolean A0r;
        QQ qq4;
        C11716w c11716w;
        C11716w c11716w2;
        this.A01.A0a = this.A00;
        if (this.A02) {
            c11716w = this.A01.A0A;
            if (c11716w != null) {
                c11716w2 = this.A01.A0A;
                c11716w2.A0L();
            }
        }
        qq2 = this.A01.A0G;
        if (qq2 != null) {
            enumC1763Ul = this.A01.A0E;
            if (enumC1763Ul.equals(EnumC1763Ul.A04)) {
                A0r = this.A01.A0r();
                if (!A0r) {
                    qq4 = this.A01.A0G;
                    qq4.AEB();
                }
            }
            if (this.A02) {
                C1652Qc c1652Qc = this.A01;
                String[] strArr = A04;
                if (strArr[4].length() != strArr[0].length()) {
                    String[] strArr2 = A04;
                    strArr2[4] = "lirdd0Qr";
                    strArr2[0] = "muvxx";
                    c2111dL = c1652Qc.A0c;
                    if (U7.A1n(c2111dL) && this.A01.A10() != null && this.A01.A10().A1Y()) {
                        C1652Qc c1652Qc2 = this.A01;
                        c2111dL2 = this.A01.A0c;
                        c1652Qc2.A0M = AbstractC2023bu.A01(c2111dL2, this.A01.A10(), 4, new T8(this));
                        return;
                    }
                    C1652Qc c1652Qc3 = this.A01;
                    if (A04[3].length() != 28) {
                        A04[6] = "Y1qaffLCA6OgZ6gO9VGOLjOrervRHVYN";
                        qq3 = c1652Qc3.A0G;
                        qq3.ACH();
                        return;
                    }
                }
                throw new RuntimeException();
            }
        }
    }
}
