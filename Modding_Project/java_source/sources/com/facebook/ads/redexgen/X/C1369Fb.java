package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Fb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1369Fb extends AbstractRunnableC1796Vt {
    public static byte[] A01;
    public final /* synthetic */ C10883r A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 95);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-67, -48, -53, -52, -42, -121, -34, -56, -38, -121, -43, -52, -35, -52, -39, -121, -41, -39, -52, -41, -56, -39, -52, -53};
    }

    public C1369Fb(C10883r c10883r) {
        this.A00 = c10883r;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        boolean z10;
        z10 = this.A00.A0E;
        if (!z10) {
            this.A00.A0R(A00(0, 24, 8));
        }
    }
}
