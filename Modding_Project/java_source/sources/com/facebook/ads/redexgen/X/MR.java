package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Map;
import javax.annotation.Nullable;
/* loaded from: assets/audience_network.dex */
public abstract class MR {
    public static byte[] A04;
    public boolean A00;
    @Nullable
    public final MS A01;
    public final C2111dL A02;
    public final C2184eX A03;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 121);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-2, 34, 37, 39, 26, 40, 40, 30, 36, 35, -43, 33, 36, 28, 28, 26, 25};
    }

    public abstract void A08(Map<String, String> map);

    public MR(C2111dL c2111dL, MS ms2, C2184eX c2184eX) {
        this.A02 = c2111dL;
        this.A01 = ms2;
        this.A03 = c2184eX;
    }

    public final void A03() {
        if (this.A00) {
            return;
        }
        if (this.A01 != null) {
            this.A01.A00();
        }
        Map<String, String> extraData = new C1894Zp().A03(this.A03).A05();
        A08(extraData);
        this.A00 = true;
        WX.A04(this.A02, A00(0, 17, 60));
        MS ms2 = this.A01;
    }
}
