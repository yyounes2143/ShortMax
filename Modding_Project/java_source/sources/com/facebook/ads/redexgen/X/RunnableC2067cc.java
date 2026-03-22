package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.cc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2067cc implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C10893s A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 17);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{22, 41, 36, 37, 47, 16, 44, 33, 57, 34, 33, 35, 43, 5, 50, 50, 47, 50};
    }

    public RunnableC2067cc(C10893s c10893s) {
        this.A00 = c10893s;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A00.A0R(A00(0, 18, 81));
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
