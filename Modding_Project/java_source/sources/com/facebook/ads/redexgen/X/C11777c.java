package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.7c  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C11777c extends AbstractC2456j4<LF> {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 44);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-56, -49, -58, -58};
    }

    public C11777c(String str) {
        super(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2456j4
    /* renamed from: A05 */
    public final LN A04(LF lf2) {
        return new LN(this, lf2 == null ? A00(0, 4, 46) : A00(0, 0, 18) + lf2.A03());
    }
}
