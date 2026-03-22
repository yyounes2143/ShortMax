package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.cG  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2045cG implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C10984b A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 83);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{78, 113, 124, 125, 119, 72, 116, 121, 97, 122, 121, 123, 115, 93, 106, 106, 119, 106};
    }

    public RunnableC2045cG(C10984b c10984b) {
        this.A00 = c10984b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC2058cT interfaceC2058cT;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            interfaceC2058cT = this.A00.A00.A0Z;
            interfaceC2058cT.AFg(A00(0, 18, 75));
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
