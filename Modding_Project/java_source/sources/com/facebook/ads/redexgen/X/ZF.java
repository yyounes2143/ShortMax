package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class ZF implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"sP3gpwd6Zoi5atkrMGPTc5EXN8BQ3Rhb", "CuI3HGsHCqf5OUDiTkLeplOhcTm9T7NI", "qUh1oDSzqsBPPR1tLa2Ioa4F3OHVyWz", "9USBf0H8rgb5C7JYpIITcKF8xtKeHlI", "rVv7rCrqZ3PnTP4EIzYeJpV", "KXSca88saLVPZ5uec2yV3IdyBKC0ygXP", "JOf8s03jk9aSXntkdxYTuuj", "1B5kCc4TTNYrg"};
    public final /* synthetic */ ZH A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A02[5].charAt(30) == 'J') {
                throw new RuntimeException();
            }
            A02[6] = "NOG9o";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 53);
            i13++;
        }
    }

    public static void A01() {
        A01 = new byte[]{-68, -67, -54, -48, -49, -107, -67, -57, -68, -55, -58, -106, -93, -108, -106, -104, -87, -98, -85, -98, -87, -82, 20, 33, 23, 37, 34, 28, 23, -31, 28, 33, 39, 24, 33, 39, -31, 20, 22, 39, 28, 34, 33, -31, 9, -4, -8, 10};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        String str2;
        String str3;
        C2111dL c2111dL;
        C2111dL c2111dL2;
        C2111dL c2111dL3;
        ZG zg2;
        ZG zg3;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            str = this.A00.A06;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String A00 = A00(0, 11, 38);
            str2 = this.A00.A06;
            if (A00.equals(str2)) {
                return;
            }
            String A002 = A00(22, 26, 126);
            str3 = this.A00.A06;
            Intent intent = new Intent(A002, WQ.A00(str3));
            intent.addFlags(268435456);
            c2111dL = this.A00.A09;
            c2111dL.A0F().A9q();
            try {
                c2111dL3 = this.A00.A09;
                WB.A0D(c2111dL3, intent);
                zg2 = this.A00.A04;
                if (zg2 != null) {
                    zg3 = this.A00.A04;
                    zg3.AEL();
                }
            } catch (W9 e10) {
                Throwable cause = e10.getCause();
                Throwable th2 = e10;
                if (cause != null) {
                    th2 = e10.getCause();
                }
                c2111dL2 = this.A00.A09;
                c2111dL2.A08().AAy(A00(11, 11, 0), AbstractC1722Sv.A00, new C1723Sw(th2));
            }
        } catch (Throwable th3) {
            AbstractC1788Vl.A00(th3, this);
        }
    }

    static {
        A01();
    }

    public ZF(ZH zh2) {
        this.A00 = zh2;
    }
}
