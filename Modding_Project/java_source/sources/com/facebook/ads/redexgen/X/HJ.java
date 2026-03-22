package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class HJ extends AbstractRunnableC1796Vt {
    public static byte[] A02;
    public static String[] A03 = {"", "vSeS2rx23zUd4am5Wdo", "UtlZDzt7", "dNEruPHPdkyj182N7GwirLXq8Db2eecB", "b1VGcsOgsecYYY6uN1zNid8VodysKnsR", "yg", "RqC1uxvv784HDfNbZXUq5U9jCsQW0kUg", "5jFX4DLWV5nBObgEbVC73yk5ncCVY3Kv"};
    public final /* synthetic */ C11104n A00;
    public final /* synthetic */ C3Q A01;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 72);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{51, 4, 23, 23, 20, 3, 24, 31, 22, 81, 24, 31, 21, 20, 23, 24, 31, 24, 5, 20, 29, 8};
    }

    static {
        A01();
    }

    public HJ(C11104n c11104n, C3Q c3q) {
        this.A00 = c11104n;
        this.A01 = c3q;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        E1 e12;
        E1 e13;
        InterfaceC2058cT interfaceC2058cT;
        e12 = this.A00.A0P;
        if (e12.getState() == EnumC2181eU.A02) {
            e13 = this.A00.A0P;
            int currentPositionInMillis = e13.getCurrentPositionInMillis();
            if (A03[2].length() != 8) {
                throw new RuntimeException();
            }
            A03[7] = "iv52OwD8pgB4ao6bV3eWAeQD9PjHFRbz";
            if (currentPositionInMillis == A00()) {
                interfaceC2058cT = this.A00.A0M;
                interfaceC2058cT.AFg(A00(0, 22, 57));
            }
        }
    }
}
