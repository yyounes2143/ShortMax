package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.util.process.ProcessUtils;
import com.mbridge.msdk.foundation.same.report.j;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public abstract class O3 {
    public static O2 A00;
    public static byte[] A01;
    public static String[] A02 = {"g", j.f27256b, "XC0Rp", "xmnbF", "ZVN1dtOIFAKzm8JTATZerxuQP9zv55g", "kSPLn3WG70", "", ""};

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            int i14 = copyOfRange[i13] ^ i12;
            String[] strArr = A02;
            if (strArr[6].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[1] = SRStrategy.MEDIAINFO_KEY_WIDTH;
            strArr2[0] = "P";
            copyOfRange[i13] = (byte) (i14 ^ 92);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{86, 90, 88, 27, 83, 84, 86, 80, 87, 90, 90, 94, 27, 84, 81, 70, 27, 116, 113, 106, 103, 112, 101, 122, 103, 97, 124, 123, 114, 106, 118, 122, 123, 115, 124, 114};
    }

    static {
        A02();
    }

    public static O2 A00(C2085cu c2085cu) {
        if (A00 == null) {
            synchronized (O2.class) {
                if (A00 == null) {
                    A00 = new O2(new C2312gf(c2085cu.getSharedPreferences(ProcessUtils.getProcessSpecificName(A01(0, 36, 105), c2085cu), 0)));
                }
            }
        }
        return A00;
    }
}
