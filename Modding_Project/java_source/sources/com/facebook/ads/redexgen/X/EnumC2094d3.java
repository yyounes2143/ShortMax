package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.d3  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public enum EnumC2094d3 {
    A03,
    A02;
    
    public static byte[] A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 55);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{49, 54, 62, 55, 74, 90, 75, 92, 92, 87, 74, 81, 86, 77, 74};
    }

    static {
        A01();
    }
}
