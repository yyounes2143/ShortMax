package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.iF  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2407iF extends AbstractRunnableC1796Vt {
    public static byte[] A01;
    public final /* synthetic */ C2406iE A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 14);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-107, -116, -95, -116, -98, -114, -99, -108, -101, -97, 101};
    }

    public C2407iF(C2406iE c2406iE) {
        this.A00 = c2406iE;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        C2111dL c2111dL;
        AbstractC1883Ze abstractC1883Ze;
        C2408iG c2408iG;
        c2111dL = this.A00.A03;
        c2111dL.A0F().AKB();
        abstractC1883Ze = this.A00.A05;
        StringBuilder append = new StringBuilder().append(A00(0, 11, 29));
        c2408iG = this.A00.A00;
        abstractC1883Ze.loadUrl(append.append(c2408iG.A03()).toString());
    }
}
