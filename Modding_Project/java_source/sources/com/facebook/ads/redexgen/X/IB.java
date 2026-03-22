package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class IB extends AbstractRunnableC1796Vt {
    public static byte[] A01;
    public final /* synthetic */ C2014bl A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 114);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{87, 104, 101, 100, 110, 33, 118, 96, 114, 33, 111, 100, 119, 100, 115, 33, 113, 115, 100, 113, 96, 115, 100, 101};
    }

    public IB(C2014bl c2014bl) {
        this.A00 = c2014bl;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        boolean z10;
        z10 = this.A00.A03;
        if (z10) {
            return;
        }
        this.A00.A0I(A00(0, 24, 115));
    }
}
