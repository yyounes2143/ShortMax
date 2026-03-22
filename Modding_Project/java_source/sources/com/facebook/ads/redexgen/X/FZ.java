package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class FZ extends AbstractRunnableC1796Vt {
    public static byte[] A02;
    public static String[] A03 = {"dab4fRnX0jwVtTCdppjyxAzmLS4bXJsv", "tx88Rmris0qAnIQYPQwCDQk09feKvYvd", "zx5uuvDAcytcTb9ViP21DGr2Ir", "iFOXUW5dAcR78ORAksMxLEmjU8chlyrY", "cH6E6XWheDX0I5qudQa8gCuUDMH3DwGR", "ZrH1xVhvr", "HcVkU72Pv92AZpKffx9OD1kZyJiX0ZmG", "FRYXqcD3MsRMpqiQBVhoHwYMYH2ko3dl"};
    public final /* synthetic */ C10883r A00;
    public final /* synthetic */ C3Q A01;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A03[7].charAt(20) == 'R') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[6] = "mmZKkJ0qdyfdoCPbfy2YKuwlL3WBbVIn";
            strArr[0] = "dwlf7VAy7NoW0pl9cb0nbAZtUrVGpkqt";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 57);
            i13++;
        }
    }

    public static void A01() {
        A02 = new byte[]{-8, 43, 28, 28, 27, 40, 31, 36, 29, -42, 31, 36, 26, 27, 28, 31, 36, 31, 42, 27, 34, 47};
    }

    static {
        A01();
    }

    public FZ(C10883r c10883r, C3Q c3q) {
        this.A00 = c10883r;
        this.A01 = c3q;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        E1 e12;
        E1 e13;
        e12 = this.A00.A0L;
        if (e12.getState() == EnumC2181eU.A02) {
            e13 = this.A00.A0L;
            if (e13.getCurrentPositionInMillis() == A00()) {
                this.A00.A0R(A00(0, 22, 125));
            }
        }
    }
}
