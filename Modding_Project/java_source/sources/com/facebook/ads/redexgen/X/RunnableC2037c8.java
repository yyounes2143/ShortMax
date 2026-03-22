package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.c8  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2037c8 implements Runnable {
    public static byte[] A01;
    public static String[] A02 = {"CXh9IgKc", "O7eitgLXwuQabaJwawISN5vHvLm6eCHh", "CD1jo8Ha", "FPDId41ZEfoYhMJr4YCyxsIaRA1sy82M", "v53i6y7e6", "iQAdLEQn", "ZcZ8pescI", "Z1kdPveD"};
    public final /* synthetic */ C11124p A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 102);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{58, 77, 72, 73, 83, 52, 80, 69, 93, 70, 69, 71, 79, 41, 86, 86, 83, 86};
    }

    static {
        A01();
    }

    public RunnableC2037c8(C11124p c11124p) {
        this.A00 = c11124p;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC2058cT interfaceC2058cT;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            interfaceC2058cT = this.A00.A00.A0M;
            interfaceC2058cT.AFg(A00(0, 18, 126));
        } catch (Throwable th2) {
            String[] strArr = A02;
            if (strArr[4].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[7] = "CbmYJDHc";
            strArr2[5] = "9BNL1g6R";
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
