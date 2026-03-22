package com.facebook.ads.redexgen.X;

import android.os.PowerManager;
import android.util.Log;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Xg  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1833Xg {
    public static byte[] A00;
    public static String[] A01 = {"CRKlMdJj7sWkVQXvhxP2gtYMKrwrdBdz", "MDVslC7yGiRJk7iB8DE8e8h4fEVrC5ER", "lH08WA", "RxIchMFZh", "vNyd6Jid8bvsA1cw15Ve5Ic9LBA7HcUI", "txgfdNfKSs8Co5f2ObGoVq", "d8ndlqqx7tIKNJdyWXTDq8r8sQB5dgXc", "5RbatCjsfF363SonahZsted9lIdQCMHb"};
    public static final String A02;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            int i14 = copyOfRange[i13] - i12;
            String[] strArr = A01;
            if (strArr[4].charAt(3) != strArr[6].charAt(3)) {
                throw new RuntimeException();
            }
            A01[2] = "R3kMyn";
            copyOfRange[i13] = (byte) (i14 - 20);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{109, -96, -117, -115, -104, -100, -111, -105, -106, 72, -111, -106, 72, -101, -117, -102, -115, -115, -106, 72, -111, -106, -100, -115, -102, -119, -117, -100, -111, -98, -115, 72, -117, -112, -115, -117, -109, 84, 72, -119, -101, -101, -99, -107, -111, -106, -113, 72, -111, -106, -100, -115, -102, -119, -117, -100, -111, -98, -115, 86, -33, -34, -26, -44, -31, -69, -78, -68, -76, -62};
    }

    static {
        A01();
        A02 = C1833Xg.class.getSimpleName();
    }

    public static boolean A02(C2111dL c2111dL) {
        return A03(c2111dL) && C1834Xh.A03(c2111dL);
    }

    public static boolean A03(C2111dL c2111dL) {
        if (c2111dL == null) {
            return true;
        }
        try {
            return ((PowerManager) c2111dL.getSystemService(A00(60, 5, 91))).isInteractive();
        } catch (Exception e10) {
            Log.e(A02, A00(0, 60, 20), e10);
            c2111dL.A08().AAy(A00(65, 5, 53), AbstractC1722Sv.A2S, new C1723Sw(e10));
            return true;
        }
    }
}
