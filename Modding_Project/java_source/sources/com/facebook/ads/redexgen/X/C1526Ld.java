package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Ld  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1526Ld implements InterfaceC2088cx {
    public static byte[] A01;
    public static String[] A02 = {"BHXiYjXxfgjD7yDB", "kPfw5HKETqo8dV", "SlBKzsC69frNfTspgJs5v90302jxH173", "0t7u2eeKUCj5gcxeWZIOCTpidMAeGJtt", "hTXrvsDVbOi3Q9xrUBZOJj7T", "iLbLRTjnBQIJ87KFXaIFUijyWt7EPIGc", "0utayShxEdwMeaV3UZeoWviAuyaBWRmj", "gyVOCm6F1v6TZALkbG"};
    public final /* synthetic */ C1525Lc A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 58);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{25, 23, 9, 22, 7, 16, 13, 7, 15};
    }

    static {
        A01();
    }

    public C1526Ld(C1525Lc c1525Lc) {
        this.A00 = c1525Lc;
    }

    public /* synthetic */ C1526Ld(C1525Lc c1525Lc, C1543Lu c1543Lu) {
        this(c1525Lc);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2088cx
    public final void ACt() {
        this.A00.A0U(true, A00(0, 9, 106));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2088cx
    public final void ADW() {
        boolean z10;
        AbstractC2392hy abstractC2392hy;
        InterfaceC1840Xn interfaceC1840Xn;
        YY yy;
        US us2;
        AbstractC2392hy abstractC2392hy2;
        C2090cz c2090cz;
        C2090cz c2090cz2;
        C2111dL c2111dL;
        YY yy2;
        AbstractC2392hy abstractC2392hy3;
        AbstractC2392hy abstractC2392hy4;
        C2111dL c2111dL2;
        AbstractC2392hy abstractC2392hy5;
        AbstractC2392hy abstractC2392hy6;
        C2111dL c2111dL3;
        NB nb2;
        C2111dL c2111dL4;
        C2111dL c2111dL5;
        z10 = this.A00.A0Z;
        if (!z10) {
            abstractC2392hy = this.A00.A0I;
            if (!TextUtils.isEmpty(abstractC2392hy.A25())) {
                us2 = this.A00.A0M;
                abstractC2392hy2 = this.A00.A0I;
                String A25 = abstractC2392hy2.A25();
                C1894Zp c1894Zp = new C1894Zp();
                c2090cz = this.A00.A07;
                C1894Zp A03 = c1894Zp.A03(c2090cz.getViewabilityChecker());
                c2090cz2 = this.A00.A07;
                us2.AB5(A25, A03.A02(c2090cz2.getTouchDataRecorder()).A05());
                c2111dL = this.A00.A0L;
                W2 A00 = W2.A00(c2111dL);
                yy2 = this.A00.A0R;
                String A8d = yy2.A8d();
                abstractC2392hy3 = this.A00.A0I;
                A00.A0E(A8d, abstractC2392hy3.A25());
                abstractC2392hy4 = this.A00.A0I;
                N3 A21 = abstractC2392hy4.A21();
                c2111dL2 = this.A00.A0L;
                N3.A07(A21, c2111dL2);
                abstractC2392hy5 = this.A00.A0I;
                String A0t = abstractC2392hy5.A0t();
                abstractC2392hy6 = this.A00.A0I;
                AbstractC1596Nw.A02(A0t, X0.A00(abstractC2392hy6.A0v()));
                c2111dL3 = this.A00.A0L;
                c2111dL3.A0F().A3D();
                nb2 = this.A00.A0J;
                if (nb2.A0P()) {
                    c2111dL4 = this.A00.A0L;
                    c2111dL4.A0F().ADo();
                }
            }
            C1525Lc c1525Lc = this.A00;
            String[] strArr = A02;
            if (strArr[5].charAt(12) == strArr[2].charAt(12)) {
                throw new RuntimeException();
            }
            A02[4] = "GzK3XL6hk7idJD";
            interfaceC1840Xn = c1525Lc.A0Q;
            yy = this.A00.A0R;
            interfaceC1840Xn.A4b(yy.A88());
            return;
        }
        c2111dL5 = this.A00.A0L;
        c2111dL5.A0F().ADp();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2088cx
    public final void AE2() {
        InterfaceC1840Xn interfaceC1840Xn;
        YY yy;
        interfaceC1840Xn = this.A00.A0Q;
        yy = this.A00.A0R;
        interfaceC1840Xn.A4b(yy.A7t());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2088cx
    public final void AFw() {
        InterfaceC1840Xn interfaceC1840Xn;
        interfaceC1840Xn = this.A00.A0Q;
        interfaceC1840Xn.ACf(15);
    }
}
