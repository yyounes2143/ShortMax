package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.net.Uri;
import android.util.Log;
import java.util.Arrays;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.a5  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1910a5 {
    public static long A0F;
    public static byte[] A0G;
    public static String[] A0H = {"R0SbMgWAoC497HVFrz", "HjDMjTQFKfQjEPdjddKMHVEmssyIO6xJ", "qLmiUd82g2mhrwqPXxjSPUm4NIZHyVr2", "b8w5", "5ahVLoWejnV8u5u0zxB2Y4aA1Z0H734m", "82nB4Ww4zktBcOGVc7", "fE0nEfPNcAkneFTlCeTsSM9yzZ1yQJUc", "9xmO"};
    public MF A00;
    public MH A01;
    public AbstractC2392hy A02;
    public C1808Wh A03;
    public InterfaceC1822Wv A04;
    public InterfaceC1909a4 A05;
    public boolean A06;
    public boolean A07;
    public final N3 A08;
    public final C2111dL A09;
    public final US A0A;
    public final XH A0B;
    public final InterfaceC1840Xn A0C;
    public final C2184eX A0D;
    public final String A0E;

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0G, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 19);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        byte[] bArr = {119, -120, 117, 118, -87, -88, -88, -93, -94, 119, -96, -99, -105, -97, ByteCompanionObject.MIN_VALUE, -99, -89, -88, -103, -94, -103, -90, 115, -96, -96, -99, -96, 78, -109, -90, -109, -111, -93, -94, -105, -100, -107, 78, -113, -111, -94, -105, -99, -100, -100, -55, -55, -58, -55, 119, -50, -65, -64, -61, -68, 119, -58, -57, -68, -59, -64, -59, -66, 119, -55, -46, -49, -55, -47, -59, -39, -43, -37, -40, -55, -53};
        String[] strArr = A0H;
        if (strArr[4].charAt(11) == strArr[6].charAt(11)) {
            throw new RuntimeException();
        }
        A0H[5] = "";
        A0G = bArr;
    }

    static {
        A03();
        A0F = 0L;
    }

    public C1910a5(C2111dL c2111dL, String str, C2184eX c2184eX, XH xh2, US us2, N3 n32) {
        this(c2111dL, str, c2184eX, xh2, us2, n32, new KF());
    }

    public C1910a5(C2111dL c2111dL, String str, C2184eX c2184eX, XH xh2, US us2, N3 n32, InterfaceC1840Xn interfaceC1840Xn) {
        this.A06 = true;
        this.A09 = c2111dL;
        this.A0E = str;
        this.A0D = c2184eX;
        this.A0B = xh2;
        this.A0A = us2;
        this.A08 = n32;
        this.A0C = interfaceC1840Xn;
    }

    public C1910a5(C2111dL c2111dL, String str, C2184eX c2184eX, XH xh2, US us2, N3 n32, InterfaceC1840Xn interfaceC1840Xn, InterfaceC1822Wv interfaceC1822Wv) {
        this.A06 = true;
        this.A09 = c2111dL;
        this.A0E = str;
        this.A0D = c2184eX;
        this.A0B = xh2;
        this.A0A = us2;
        this.A08 = n32;
        this.A0C = interfaceC1840Xn;
        this.A04 = interfaceC1822Wv;
    }

    private ME A00(String str, String str2, Map<String, String> map) {
        String A01 = A01(0, 22, 33);
        ME actionOutcome = ME.A09;
        try {
            XP.A0Y(map, this.A02);
            Uri A00 = WQ.A00(str2);
            if (this.A01 == null) {
                this.A01 = MI.A01(this.A09, this.A0A, str, A00, new C1894Zp(map).A03(this.A0D).A02(this.A0B).A05(), this.A06, this.A07, this.A08);
                A02();
            }
            if (this.A01 instanceof C7Q) {
                ((C7Q) this.A01).A0N(this.A03);
            }
            if (this.A01 != null) {
                actionOutcome = this.A01.A0G(map.get(A01(64, 12, 83)));
                if (this.A07 && (this.A01 instanceof C7P)) {
                    actionOutcome = ME.A08;
                }
            }
            if (!(((this.A01 instanceof C7O) || (this.A01 instanceof C7Q)) && XP.A0e(this.A09, actionOutcome, map)) && actionOutcome != ME.A06) {
                if (this.A05 != null) {
                    this.A05.ACu();
                }
                this.A0C.A4b(this.A0E);
            }
        } catch (ActivityNotFoundException e10) {
            Log.e(A01, A01(44, 20, 68) + str2, e10);
        } catch (Exception e11) {
            Log.e(A01, A01(22, 22, 27), e11);
        }
        return actionOutcome;
    }

    private void A02() {
        if (this.A01 != null && this.A01.A0E() == null && this.A00 != null) {
            this.A01.A0F(this.A00);
        }
    }

    public static boolean A04(C2111dL c2111dL) {
        boolean A2o = U7.A2o(c2111dL);
        int A07 = U7.A07(c2111dL);
        long currentTimeMillis = System.currentTimeMillis() - A0F;
        if (A2o && A0F > 0 && currentTimeMillis < A07) {
            return true;
        }
        A0F = System.currentTimeMillis();
        return false;
    }

    public final ME A05(String str, String str2, Map<String, String> extraData) {
        ME me2 = ME.A09;
        new C1752Ua(str, this.A0A).A04(UZ.A0J, extraData);
        if (this.A0B.A09(this.A09)) {
            this.A0A.AAs(str, extraData);
        } else {
            me2 = A00(str, str2, extraData);
            if (this.A02 != null && this.A02.A20().A0L() != null && this.A04 != null) {
                WX.A07(this.A09.A02(), this.A02.A20().A0L(), this.A04);
            }
        }
        return me2;
    }

    public final MF A06() {
        if (this.A01 != null) {
            MF A0E = this.A01.A0E();
            String[] strArr = A0H;
            if (strArr[4].charAt(11) != strArr[6].charAt(11)) {
                String[] strArr2 = A0H;
                strArr2[4] = "m9EeWSKmUQIcAT4bR8TqW1uNxXCrncrR";
                strArr2[6] = "ZpUrOoewPl5vbi76KZuNJwABiWDkIMaY";
                return A0E;
            }
            throw new RuntimeException();
        }
        return null;
    }

    public final void A07(MF mf2) {
        this.A00 = mf2;
        A02();
    }

    public final void A08(AbstractC2392hy abstractC2392hy) {
        this.A02 = abstractC2392hy;
    }

    public final void A09(C1808Wh c1808Wh) {
        this.A03 = c1808Wh;
    }

    public final void A0A(InterfaceC1822Wv interfaceC1822Wv) {
        this.A04 = interfaceC1822Wv;
    }

    public final void A0B(InterfaceC1909a4 interfaceC1909a4) {
        this.A05 = interfaceC1909a4;
    }

    public final void A0C(boolean z10) {
        this.A07 = z10;
    }
}
