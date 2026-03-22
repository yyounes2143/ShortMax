package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public final class E9 {
    public static byte[] A03;
    public final int A00;
    public final C2762oH A01;
    public final int[] A02;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 82);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-11, 4, 3, -12, 21, 22, 25, 30, 25, 36, 25, 31, 30, 3, 43, 46, 50, 55, -34, 50, 48, 31, 33, 41, 49, -34, 31, 48, 35, -34, 44, 45, 50, -34, 31, 42, 42, 45, 53, 35, 34};
    }

    public E9(C2762oH c2762oH, int... iArr) {
        this(c2762oH, iArr, 0);
    }

    public E9(C2762oH c2762oH, int[] iArr, int i10) {
        if (iArr.length == 0) {
            AnonymousClass44.A08(A00(0, 13, 94), A00(13, 28, 108), new IllegalArgumentException());
        }
        this.A01 = c2762oH;
        this.A02 = iArr;
        this.A00 = i10;
    }
}
