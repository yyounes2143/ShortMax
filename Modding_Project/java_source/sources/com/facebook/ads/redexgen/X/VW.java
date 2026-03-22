package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public enum VW {
    A04,
    A03,
    A02;
    
    public static byte[] A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 115);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{42, 47, 56, 122, 109, 109, 112, 109, 6, 29, 24, 29, 28, 4, 29};
    }

    static {
        A01();
    }
}
