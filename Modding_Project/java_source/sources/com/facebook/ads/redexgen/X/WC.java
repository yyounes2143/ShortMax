package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class WC implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C2111dL A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 108);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-55, -50, -51, -58, -1, -3, 6, -3, 10, 1, -5};
    }

    public WC(C2111dL c2111dL) {
        this.A00 = c2111dL;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            C1723Sw otsl = new C1723Sw(A00(0, 4, 14));
            otsl.A05(1);
            otsl.A06(1);
            otsl.A0A(false);
            this.A00.A08().AAz(A00(4, 7, 44), AbstractC1722Sv.A1Y, otsl);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
