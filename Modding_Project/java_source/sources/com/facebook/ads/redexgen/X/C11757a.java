package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.7a  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C11757a extends AbstractC2456j4<LT> {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 115);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{83, 90, 81, 81};
    }

    public C11757a(String str) {
        super(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2456j4
    /* renamed from: A05 */
    public final LN A04(LT lt2) {
        return new LN(this, lt2 == null ? A00(0, 4, 114) : lt2.A03());
    }
}
