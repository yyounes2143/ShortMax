package com.facebook.ads.redexgen.X;

import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Gv  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1415Gv {
    public static byte[] A02;
    public static String[] A03 = {"", "4aEfCmC", "2kTu4wHTiMw5FCYmIpZKoA3S7RkYvI9O", "", SRStrategy.MEDIAINFO_KEY_WIDTH, "MqF3b2p", "5cCqnzmPstBPsSiWHPZbbxeHAyWMz3nO", "kSg1dz9TqTWY2puBAJqsQN0JUmM78NMM"};
    public final C1417Gx A00;
    public final C1417Gx A01;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 82);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{27, 23, 123, 7};
    }

    static {
        A01();
    }

    public C1415Gv(C1417Gx c1417Gx) {
        this(c1417Gx, c1417Gx);
    }

    public C1415Gv(C1417Gx c1417Gx, C1417Gx c1417Gx2) {
        this.A00 = (C1417Gx) C3M.A01(c1417Gx);
        this.A01 = (C1417Gx) C3M.A01(c1417Gx2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1415Gv c1415Gv = (C1415Gv) obj;
        if (A03[7].charAt(24) != 'U') {
            throw new RuntimeException();
        }
        A03[4] = "g";
        return this.A00.equals(c1415Gv.A00) && this.A01.equals(c1415Gv.A01);
    }

    public final int hashCode() {
        return (this.A00.hashCode() * 31) + this.A01.hashCode();
    }

    public final String toString() {
        String str;
        StringBuilder append = new StringBuilder().append(A00(2, 1, 114)).append(this.A00);
        if (!this.A00.equals(this.A01)) {
            str = A00(0, 2, 101) + this.A01;
        } else if (A03[0].length() != 0) {
            throw new RuntimeException();
        } else {
            A03[0] = "";
            str = A00(0, 0, 76);
        }
        return append.append(str).append(A00(3, 1, 8)).toString();
    }
}
