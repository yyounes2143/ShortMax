package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.8M  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C8M extends Exception {
    public static byte[] A03;
    public final int A00;
    public final C2796or A01;
    public final boolean A02;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 74);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-26, 26, 9, 14, 20, -7, 23, 6, 8, 16, -59, 28, 23, 14, 25, 10, -59, 11, 6, 14, 17, 10, 9, -33, -59};
    }

    public C8M(int i10, C2796or c2796or, boolean z10) {
        super(A00(0, 25, 91) + i10);
        this.A02 = z10;
        this.A00 = i10;
        this.A01 = c2796or;
    }
}
