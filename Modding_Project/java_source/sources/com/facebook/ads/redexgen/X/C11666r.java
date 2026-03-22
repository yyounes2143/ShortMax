package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.6r  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C11666r extends AbstractC2358hQ {
    public static byte[] A00;
    public static String[] A01 = {"vV6RQP0QGAizSnvHrhrEiTJKYqnkk7vR", "gVueu7WJkm8gI", "", "raAPQvYZN3qaAVuN8G4E0NVfm2Y0LRUe", "w5hc", "", "RHGb3VvP2c2qxldOqnFEpaAIYmVmOJg8", "ZdfM9COnhESAyQW1NqvAdN1Ku5n51qre"};

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 32);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-43, -45, -32, -110, -31, -32, -34, -21, -110, -27, -41, -26, -110, -31, -32, -110, -28, -41, -23, -45, -28, -42, -41, -42, -110, -24, -37, -42, -41, -31, -110, -45, -42, -27, -80, -79, 98, -93, -90, -93, -78, -74, -89, -76, 98, -76, -89, -93, -90, -69, 98, -74, -79, 98, -75, -89, -74, 98, -76, -89, -71, -93, -76, -90, 98, -79, -80};
    }

    static {
        A02();
    }

    public C11666r(C2111dL c2111dL, NT nt2) {
        super(c2111dL, nt2);
    }

    private C2349hH A00(Runnable runnable) {
        return new C2349hH(this, runnable);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2358hQ
    public final void A0P() {
        AbstractC2402iA abstractC2402iA = (AbstractC2402iA) this.A01;
        abstractC2402iA.A00(this.A08.A00);
        abstractC2402iA.A01(this.A08.A01);
        abstractC2402iA.A0J();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2358hQ
    public final void A0R(MP mp2, TE te2, TC tc2, NU nu2) {
        C7B c7b = (C7B) mp2;
        C2351hJ c2351hJ = new C2351hJ(this, nu2, c7b);
        if (U7.A2X(this.A0B)) {
            Handler A0H = A0H();
            TF A05 = te2.A05();
            String[] strArr = A01;
            if (strArr[3].charAt(31) != strArr[7].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[5] = "";
            strArr2[2] = "";
            A0H.postDelayed(c2351hJ, A05.A05());
        }
        c7b.A0K(this.A0B, A00(c2351hJ), nu2, this.A08.A06, this.A08.A04, this.A08.A05);
    }

    public final void A0a(RewardData rewardData) {
        if (this.A01 != null) {
            if (this.A01.A8c() == AdPlacementType.REWARDED_VIDEO) {
                AbstractC2402iA rewardedVideoAdapter = (AbstractC2402iA) this.A01;
                rewardedVideoAdapter.A02(rewardData);
                return;
            }
            throw new IllegalStateException(A01(0, 34, 82));
        }
        throw new IllegalStateException(A01(34, 33, 34));
    }
}
