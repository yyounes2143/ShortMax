package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.En  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1355En extends IOException {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 53);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-64, -90, -27, -2, -11, 8, 0, -11, -13, 4, -11, -12, -80};
    }

    public C1355En(Throwable th2) {
        super(A00(2, 11, 91) + th2.getClass().getSimpleName() + A00(0, 2, 81) + th2.getMessage(), th2);
    }
}
