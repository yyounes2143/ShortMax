package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public abstract class NR {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 115);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{11, 77, 81, 72, 73};
    }

    public static void A02(C2111dL c2111dL, AbstractC2392hy abstractC2392hy, boolean z10, NP np2) {
        if (!U7.A27(c2111dL)) {
            SF sf2 = new SF(c2111dL);
            NB A07 = abstractC2392hy.A20().A0H().A07();
            sf2.A0e(new C1752Ua(abstractC2392hy.A25(), c2111dL.A0A()));
            if (A07 == null) {
                np2.AEZ(AdError.CACHE_ERROR);
                return;
            } else if (A07.A0O()) {
                np2.AEa();
                return;
            } else {
                SB sb2 = new SB(A07.A0F(), abstractC2392hy.A17(), abstractC2392hy.A0v());
                sb2.A04 = true;
                sb2.A03 = A00(0, 5, 86);
                switch (NO.A00[A07.A0A().ordinal()]) {
                    case 1:
                    case 2:
                        sf2.A0Y(sb2);
                        break;
                }
                sf2.A0c(new SD(abstractC2392hy.A23().A01(), -1, -1, abstractC2392hy.A17(), abstractC2392hy.A0v()));
                sf2.A0c(new SD(A07.A0E(), -1, -1, abstractC2392hy.A17(), abstractC2392hy.A0v()));
                sf2.A0X(new C2367hZ(c2111dL, np2, sf2, A07, z10), new S8(abstractC2392hy.A17(), abstractC2392hy.A0v()));
                return;
            }
        }
        np2.AEa();
    }
}
