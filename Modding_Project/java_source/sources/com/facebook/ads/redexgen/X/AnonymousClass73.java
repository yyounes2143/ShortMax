package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.73  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass73 extends AbstractC2392hy implements Serializable {
    public static byte[] A00 = null;
    public static String[] A01 = {"r6wxjppTPk8qqzLRyjcbdQcA77ZMVo55", "Rh6olI4hONJ8yannxuNSF0WPku4wNPsq", "dN5FaQTClehdtxF9CoF19H85hY8wkvGi", "rjB6kg9SBUGr2KH1eIh2YUrCeaZ2IjVH", "uwE4iuczSrXuOAqhix1jvRvaNYVxSPYl", "nB4f3mkqn6tAKhT6MHcT9FS4Qvlri7ut", "bNzGTI7RRMeGoANXUPkwX9ogVwA9ri6n", "cACVCPwRSeRCIlqlGfLHSAYd9Lc4yhZp"};
    public static final long serialVersionUID = 2751287062553772011L;

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 87);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        String[] strArr = A01;
        if (strArr[2].charAt(16) == strArr[1].charAt(16)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[2] = "vDQKNoss9qiPXd8S2Aus0c1HGbd5gMQl";
        strArr2[1] = "nSwGzQN60p1E6knkFapFA8fuyb3FeF6N";
        A00 = new byte[]{51, 38, 56, 34, 51, 37, 38, 37, 32, 55, 42, 37, 38, 48};
    }

    static {
        A02();
    }

    public AnonymousClass73(List<C1563Mp> list) {
        super(list);
    }

    public static AnonymousClass73 A00(JSONObject jSONObject, C2111dL c2111dL) {
        AnonymousClass73 anonymousClass73 = new AnonymousClass73(AbstractC2392hy.A08(jSONObject, c2111dL, new C2379hl()));
        anonymousClass73.A29(jSONObject);
        anonymousClass73.A1I(A01(0, 14, 106));
        return anonymousClass73;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1562Mo
    public final int A0l() {
        if (A1S()) {
            return 3;
        }
        NB A07 = A20().A0H().A07();
        String[] strArr = A01;
        if (strArr[2].charAt(16) != strArr[1].charAt(16)) {
            A01[7] = "ezJ8b8PzsS2LRx1DwJprOyWzSGtMGS3H";
            if (A07 != null) {
                C1563Mp A20 = A20();
                String[] strArr2 = A01;
                if (strArr2[5].charAt(18) != strArr2[3].charAt(18)) {
                    A01[7] = "ok7knfjrqIuTR3wAzxIRCawOj6kVTRCj";
                    if (A20.A0H().A07().A0P()) {
                        return 4;
                    }
                    return 1;
                }
                throw new RuntimeException();
            }
            return 0;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1562Mo
    public final int A0m() {
        return A20().A0H().A05();
    }
}
