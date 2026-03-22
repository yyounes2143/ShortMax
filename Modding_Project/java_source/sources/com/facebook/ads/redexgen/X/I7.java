package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class I7 extends AbstractRunnableC1796Vt {
    public static byte[] A02;
    public final /* synthetic */ C2014bl A00;
    public final /* synthetic */ C3Q A01;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 40);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-103, -52, -67, -67, -68, -55, -64, -59, -66, 119, -64, -59, -69, -68, -67, -64, -59, -64, -53, -68, -61, -48};
    }

    public I7(C2014bl c2014bl, C3Q c3q) {
        this.A00 = c2014bl;
        this.A01 = c3q;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        E1 e12;
        E1 e13;
        e12 = this.A00.A0D;
        if (e12.getState() != EnumC2181eU.A02) {
            return;
        }
        e13 = this.A00.A0D;
        if (e13.getCurrentPositionInMillis() != A00()) {
            return;
        }
        this.A00.A0I(A00(0, 22, 47));
    }
}
