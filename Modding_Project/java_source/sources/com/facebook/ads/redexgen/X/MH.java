package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public abstract class MH {
    public static byte[] A04;
    public MF A00;
    public final C2111dL A01;
    public final US A02;
    public final String A03;

    static {
        A0D();
    }

    public static String A0B(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 122);
        }
        return new String(copyOfRange);
    }

    public static void A0D() {
        A04 = new byte[]{84, 69, 69, 106, 84, 81, 108, 105, 110, 107, 95, 99, 108, 105, 99, 107, 112, 102, 115, 100, 111, 88, 102, 105, 99, 88, 101, 117, 104, 112, 116, 98};
    }

    public abstract ME A0G(String str);

    public MH(C2111dL c2111dL, US us2, String str) {
        this.A01 = c2111dL;
        this.A02 = us2;
        this.A03 = str;
    }

    public static String A0A() {
        return A0B(16, 16, 125);
    }

    public static String A0C(MH mh2) {
        if (mh2 instanceof C7O) {
            return A0B(6, 10, 122);
        }
        return A0B(0, 6, 79);
    }

    public final MF A0E() {
        return this.A00;
    }

    public final void A0F(MF mf2) {
        this.A00 = mf2;
    }
}
