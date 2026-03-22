package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public enum Z5 {
    A03,
    A02,
    A05,
    A04;
    
    public static byte[] A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 1);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{35, 40, 34, 57, 37, 39, 52, 34, 2, 13, 22, 23, 16, 27, 7, 5, 22, 0, 56, 58, 45, 55, 58, 45, 63, 41, 58, 44, 55, 59, 43, 58, 45, 45, 38, 82, 69, 87, 65, 82, 68, 95, 83, 85, 67, 67, 69, 83, 83, 95, 83, 67, 82, 69, 69, 78};
    }

    static {
        A01();
    }
}
