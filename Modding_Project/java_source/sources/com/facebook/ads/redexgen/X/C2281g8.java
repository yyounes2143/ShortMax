package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.g8  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2281g8 implements InterfaceC1632Pi {
    public static byte[] A01;
    public final /* synthetic */ C11556g A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 107);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-10, 0, -9};
    }

    public C2281g8(C11556g c11556g) {
        this.A00 = c11556g;
    }

    private final void A02(C1633Pj c1633Pj) {
        throw new NullPointerException(A00(0, 3, 40));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1632Pi
    public final void AD2(C1633Pj c1633Pj) {
        A02(c1633Pj);
        throw null;
    }
}
