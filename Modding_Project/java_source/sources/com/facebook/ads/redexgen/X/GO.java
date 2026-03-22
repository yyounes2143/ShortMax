package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class GO extends AbstractRunnableC1796Vt {
    public static byte[] A01;
    public final /* synthetic */ C4K A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 14);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{67, 124, 113, 112, 122, 53, 98, 116, 102, 53, 123, 112, 99, 112, 103, 53, 101, 103, 112, 101, 116, 103, 112, 113};
    }

    public GO(C4K c4k) {
        this.A00 = c4k;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        boolean z10;
        InterfaceC2058cT interfaceC2058cT;
        z10 = this.A00.A0J;
        if (!z10) {
            interfaceC2058cT = this.A00.A0V;
            interfaceC2058cT.AFg(A00(0, 24, 27));
        }
    }
}
