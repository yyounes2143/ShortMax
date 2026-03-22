package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.mp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2673mp implements C5J {
    public static byte[] A00;
    public static final boolean A01;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 32);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{32, 39, 53, 35, 35, 36, 54, 47, 58, 22, 26, 1, 20, 21};
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0032, code lost:
        if (A00(0, 4, 65).equals(com.facebook.ads.redexgen.X.AbstractC10974a.A06) != false) goto L7;
     */
    static {
        /*
            A01()
            java.lang.String r3 = com.facebook.ads.redexgen.X.AbstractC10974a.A05
            r2 = 8
            r1 = 6
            r0 = 91
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L38
            java.lang.String r3 = com.facebook.ads.redexgen.X.AbstractC10974a.A06
            r2 = 4
            r1 = 4
            r0 = 66
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L34
            java.lang.String r3 = com.facebook.ads.redexgen.X.AbstractC10974a.A06
            r2 = 0
            r1 = 4
            r0 = 65
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L38
        L34:
            r0 = 1
        L35:
            com.facebook.ads.redexgen.X.AbstractC2673mp.A01 = r0
            return
        L38:
            r0 = 0
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2673mp.<clinit>():void");
    }
}
