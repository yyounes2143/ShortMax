package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class IF extends AbstractRunnableC1796Vt {
    public static byte[] A01;
    public final /* synthetic */ C2014bl A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 19);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-87, -68, -73, -72, -62, 115, -63, -72, -55, -72, -59, 115, -58, -57, -76, -59, -57, -72, -73, 115, -61, -65, -76, -52, -68, -63, -70};
    }

    public IF(C2014bl c2014bl) {
        this.A00 = c2014bl;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        boolean z10;
        z10 = this.A00.A04;
        if (z10) {
            return;
        }
        this.A00.A0I(A00(0, 27, 64));
    }
}
