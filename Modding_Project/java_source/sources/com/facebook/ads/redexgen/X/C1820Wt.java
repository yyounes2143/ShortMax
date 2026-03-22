package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Wt  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1820Wt implements SS {
    public static C1820Wt A07;
    public static byte[] A08;
    public LL A00;
    public SJ A01;
    public SR A02;
    public InterfaceC1708Sh A03;
    public TP A04;
    public InterfaceC1756Ue A05;
    public InterfaceC1279Bn A06;

    static {
        A07();
    }

    public static String A06(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 118);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A08 = new byte[]{15, 13, 13, 18, 13, 17, 14, 58, 13, 31, 45, 45, 35, 41, 40, -38, 30, 27, 46, 27, -38, 35, 40, 35, 46, 35, 27, 38, 35, 52, 31, 30, 28, 15, 26, 25, 28, 30, -3, 15, 29, 29, 19, 25, 24, -18, 11, 30, 11, -13, 24, 19, 30, 19, 11, 22, 19, 36, 15, 14};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final synchronized void A0C(C2085cu c2085cu) {
        if (this.A06 != null) {
            return;
        }
        this.A03 = A01(c2085cu);
        this.A06 = A05(c2085cu, this.A03, A03(c2085cu));
        A09(c2085cu, A00(c2085cu, this.A06));
        A0A(c2085cu, this.A06);
        A0B(c2085cu, this.A06);
        if (this.A06 != null) {
            this.A06.A6V();
        }
    }

    public static InterfaceC1685Rj A00(C2085cu c2085cu, InterfaceC1279Bn interfaceC1279Bn) {
        if (!U7.A1m(c2085cu) || interfaceC1279Bn == null) {
            return null;
        }
        return AbstractC1686Rk.A00().A00(interfaceC1279Bn);
    }

    public static InterfaceC1708Sh A01(C2085cu c2085cu) {
        return AbstractC1709Si.A00().A00(c2085cu, new YJ());
    }

    public static synchronized C1820Wt A02() {
        C1820Wt c1820Wt;
        synchronized (C1820Wt.class) {
            if (A07 == null) {
                A07 = new C1820Wt();
            }
            c1820Wt = A07;
        }
        return c1820Wt;
    }

    public static InterfaceC2190ed A03(C2085cu c2085cu) {
        if (!U7.A1i(c2085cu)) {
            return null;
        }
        return C2208ev.A01(c2085cu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.SS
    /* renamed from: A04 */
    public final synchronized InterfaceC1279Bn A97() {
        return this.A06;
    }

    public static InterfaceC1279Bn A05(C2085cu c2085cu, InterfaceC1708Sh interfaceC1708Sh, InterfaceC2190ed interfaceC2190ed) {
        if (!U7.A2e(c2085cu) || interfaceC2190ed == null || ProcessUtils.isRemoteRenderingProcess()) {
            return null;
        }
        return AbstractC2230fI.A00().A00(c2085cu, interfaceC1708Sh, interfaceC2190ed, VZ.A04(c2085cu), new X8(new VR(c2085cu, A06(0, 0, 9), null, V6.A08, 0, new VB(), X7.A01(U7.A0N(c2085cu)), null, null, new C2343hB()), c2085cu), C2228fG.A00().A00());
    }

    public static void A08() {
        VF.A05(A06(32, 28, 52), A06(8, 24, 68), A06(0, 8, 99));
    }

    public static void A09(C2085cu c2085cu, InterfaceC1685Rj interfaceC1685Rj) {
        if (!U7.A1m(c2085cu) || interfaceC1685Rj == null) {
            return;
        }
        AbstractC1683Rh.A00().A00(interfaceC1685Rj, c2085cu);
    }

    public static void A0A(C2085cu c2085cu, InterfaceC1279Bn interfaceC1279Bn) {
        if (!U7.A0m(c2085cu) || interfaceC1279Bn == null) {
            return;
        }
        new S4(c2085cu, interfaceC1279Bn, new S5(), DynamicLoaderImpl.getBidderTokenProviderApi().A00());
    }

    public static void A0B(C2085cu c2085cu, InterfaceC1279Bn interfaceC1279Bn) {
        if (interfaceC1279Bn == null) {
            return;
        }
        UB.A00(c2085cu, interfaceC1279Bn);
    }

    @Override // com.facebook.ads.redexgen.X.SS
    public final US A6f(C2085cu c2085cu) {
        return VG.A01(c2085cu);
    }

    @Override // com.facebook.ads.redexgen.X.SS
    public final synchronized SR A6w(SQ sq2) {
        if (this.A02 == null) {
            this.A02 = new XI(this);
        }
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.SS
    public final synchronized SJ A78() {
        if (this.A01 == null) {
            this.A01 = new C2134di();
        }
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.SS
    public final synchronized InterfaceC1708Sh A7d(SQ sq2) {
        if (this.A03 == null) {
            this.A03 = A01(sq2.A02());
        }
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.SS
    public final synchronized InterfaceC1721Su A7f(SQ sq2) {
        return new C1882Zd(sq2);
    }

    @Override // com.facebook.ads.redexgen.X.SS
    public final synchronized ST A7p(final SQ sq2) {
        return new YI(sq2) { // from class: com.facebook.ads.redexgen.X.6K
            @Override // com.facebook.ads.redexgen.X.ST
            public final boolean A9e() {
                return CM.A09();
            }

            @Override // com.facebook.ads.redexgen.X.ST
            public final void ABq() {
                TK.A06(RB.A09(super.A00));
            }

            @Override // com.facebook.ads.redexgen.X.ST
            public final void ACE() {
                TK.A07(RB.A09(super.A00));
            }

            @Override // com.facebook.ads.redexgen.X.ST
            public final void ACe(C2085cu c2085cu) {
                AbstractC1585Nl.A01(c2085cu);
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.SS
    public final synchronized LL A84(SQ sq2) {
        if (U7.A13(sq2)) {
            if (this.A00 == null) {
                this.A00 = LM.A00().A00(new YH(sq2));
            }
            return this.A00;
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.SS
    public final synchronized SV A8q(SQ sq2) {
        return new XN(sq2);
    }

    @Override // com.facebook.ads.redexgen.X.SS
    public final C2085cu A8r(Context context) {
        C2085cu sdkContext = SP.A00();
        if (sdkContext == null) {
            C2085cu sdkContext2 = new C2085cu(context, this);
            SP.A01(sdkContext2);
            return sdkContext2;
        }
        return sdkContext;
    }

    @Override // com.facebook.ads.redexgen.X.SS
    public final synchronized InterfaceC1756Ue A8s(C2085cu c2085cu) {
        if (this.A05 == null) {
            this.A05 = new VO(c2085cu);
        }
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.SS
    public final synchronized TP A8y() {
        if (this.A04 == null) {
            this.A04 = new TP();
            A08();
        }
        return this.A04;
    }
}
