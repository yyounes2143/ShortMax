package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class LW implements InterfaceC1858Yf {
    public static byte[] A01;
    public static String[] A02 = {"8F1ylXiPLmOJlxHuSB0OfTD8ERnub0Jc", "S6BOYeNFrgFu99vNdASrFyo", "dJPilyeR7SZ6Rr21hdX", "myhsKKLHgmC4nogMMn1nxIO", "jSXY2xjzyKT8sDO", "m4o2VQ2UIP9pfbMg6FrqdCCZlyPN5tpn", "ArrKoNW9WxnAbKv8I1vfh8MoVmXkp7wv", "MU6Xe0UyfSgNRnTq3TqZG"};
    public final /* synthetic */ AbstractC1856Yd A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 17);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{1, 13, 15, 76, 4, 3, 1, 7, 0, 13, 13, 9, 76, 3, 6, 17, 76, 3, 6, 16, 7, 18, 13, 16, 22, 11, 12, 5, 76, 36, 43, 44, 43, 49, 42, 61, 35, 38, 61, 48, 39, 50, 45, 48, 54, 43, 44, 37, 61, 36, 46, 45, 53};
    }

    static {
        A01();
    }

    public LW(AbstractC1856Yd abstractC1856Yd) {
        this.A00 = abstractC1856Yd;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1858Yf
    public final void A4v() {
        InterfaceC1840Xn interfaceC1840Xn;
        InterfaceC1840Xn interfaceC1840Xn2;
        interfaceC1840Xn = this.A00.A07;
        if (interfaceC1840Xn == null) {
            return;
        }
        interfaceC1840Xn2 = this.A00.A07;
        interfaceC1840Xn2.A4b(A00(0, 53, 115));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1858Yf
    public final void A4w() {
        InterfaceC1841Xo interfaceC1841Xo;
        InterfaceC1841Xo interfaceC1841Xo2;
        this.A00.A0O();
        interfaceC1841Xo = this.A00.A08;
        if (interfaceC1841Xo != null) {
            interfaceC1841Xo2 = this.A00.A08;
            interfaceC1841Xo2.AF0(true);
        }
        this.A00.A0D();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1858Yf
    public final void A9U() {
        O6 o62;
        O6 o63;
        O6 o64;
        C2111dL c2111dL;
        o62 = this.A00.A03;
        if (o62 == null) {
            A4w();
            if (A02[0].charAt(15) == 'S') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[1] = "E4Sw3glaT0j7tztglKcmJ4X";
            strArr[3] = "i6sG1P4DTWmVPFfNkRQLKmp";
            return;
        }
        AbstractC1856Yd.A03(this.A00);
        o63 = this.A00.A03;
        if (o63.A02() != null) {
            AbstractC1856Yd abstractC1856Yd = this.A00;
            o64 = this.A00.A03;
            abstractC1856Yd.A0G(o64.A02());
        } else {
            this.A00.A0E();
        }
        c2111dL = this.A00.A05;
        if (U7.A2S(c2111dL)) {
            this.A00.performAccessibilityAction(128, null);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1858Yf
    public final void AAg() {
        O2 o22;
        O5 o52;
        C2111dL c2111dL;
        O2 o23;
        String str;
        o22 = this.A00.A04;
        if (!TextUtils.isEmpty(o22.A0I())) {
            WN wn2 = new WN();
            c2111dL = this.A00.A05;
            o23 = this.A00.A04;
            Uri A00 = WQ.A00(o23.A0I());
            str = this.A00.A09;
            WN.A0O(wn2, c2111dL, A00, str);
        }
        o52 = this.A00.A02;
        o52.A04();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1858Yf
    public final void AAh() {
        InterfaceC1841Xo interfaceC1841Xo;
        O2 o22;
        O5 o52;
        C2111dL c2111dL;
        O2 o23;
        String str;
        InterfaceC1841Xo interfaceC1841Xo2;
        this.A00.A0O();
        interfaceC1841Xo = this.A00.A08;
        if (interfaceC1841Xo != null) {
            interfaceC1841Xo2 = this.A00.A08;
            interfaceC1841Xo2.AF0(true);
        }
        o22 = this.A00.A04;
        if (!TextUtils.isEmpty(o22.A0C())) {
            WN wn2 = new WN();
            c2111dL = this.A00.A05;
            o23 = this.A00.A04;
            Uri A00 = WQ.A00(o23.A0C());
            str = this.A00.A09;
            WN.A0O(wn2, c2111dL, A00, str);
        }
        o52 = this.A00.A02;
        o52.A06();
        this.A00.A0D();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1858Yf
    public final void AEC(O4 o42) {
        O4 o43;
        O2 o22;
        O6 A0B;
        O2 o23;
        O2 o24;
        AbstractC1856Yd.A02(this.A00);
        this.A00.A01 = o42;
        o43 = this.A00.A01;
        if (o43 != O4.A04) {
            AbstractC1856Yd abstractC1856Yd = this.A00;
            if (A02[0].charAt(15) != 'S') {
                String[] strArr = A02;
                strArr[6] = "aVWWA7RlXQ4WxwD1lKH3adLgfY6YTeho";
                strArr[5] = "uW2I9G42iXHj1OU85KkNtz4HKFKkrOfh";
                o23 = abstractC1856Yd.A04;
                A0B = o23.A0B();
            } else {
                o22 = abstractC1856Yd.A04;
                A0B = o22.A0B();
            }
        } else {
            o24 = this.A00.A04;
            A0B = o24.A0A();
        }
        AbstractC1856Yd abstractC1856Yd2 = this.A00;
        String[] strArr2 = A02;
        if (strArr2[6].charAt(11) == strArr2[5].charAt(11)) {
            throw new RuntimeException();
        }
        String[] strArr3 = A02;
        strArr3[1] = "uGU0gkKbqe2rkd9hIKZj6BU";
        strArr3[3] = "Cw3GzUJKwEhWx9AKZcDfceI";
        abstractC1856Yd2.A0G(A0B);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1858Yf
    public final void AEP(O6 o62) {
        O5 o52;
        AbstractC1856Yd.A02(this.A00);
        o52 = this.A00.A02;
        o52.A07(o62.A01());
        if (!o62.A05().isEmpty()) {
            AbstractC1856Yd abstractC1856Yd = this.A00;
            String[] strArr = A02;
            if (strArr[2].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[6] = "wullz3k0Ma2cYDBinBI95xBWIfHYuzlI";
            strArr2[5] = "wkJ6jlNGXVBBqnzofRVuEUhlZdNAnE5y";
            abstractC1856Yd.A0G(o62);
            return;
        }
        this.A00.A0F(o62);
    }
}
