package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class HL extends AbstractRunnableC1796Vt {
    public static byte[] A01;
    public static String[] A02 = {"mPUp", "QaVG6HdjpkfaxAZj0g", "f", "awRGdU6dgRZhiPVlhe", "rFOzx0t9VnUrXKVKNhKeQ4JnbF82l9OW", "Jupus4hVDLzI", "SNB8L6kKTybUpjfk2kEtWCUyw", "zmy1APRNrfa5"};
    public final /* synthetic */ C11104n A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 26);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-23, -4, -9, -8, 2, -77, 10, -12, 6, -77, 1, -8, 9, -8, 5, -77, 3, 5, -8, 3, -12, 5, -8, -9};
    }

    static {
        A01();
    }

    public HL(C11104n c11104n) {
        this.A00 = c11104n;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        boolean z10;
        InterfaceC2058cT interfaceC2058cT;
        z10 = this.A00.A09;
        if (!z10) {
            interfaceC2058cT = this.A00.A0M;
            String A00 = A00(0, 24, 121);
            String[] strArr = A02;
            if (strArr[2].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            A02[4] = "FD94r7znH9q7i6TKT20diutq98ZfYVDf";
            interfaceC2058cT.AFg(A00);
        }
    }
}
