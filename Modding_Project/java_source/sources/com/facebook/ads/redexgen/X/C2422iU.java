package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.iU  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2422iU extends AbstractC2183eW {
    public static byte[] A01;
    public final /* synthetic */ C7L A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 19);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{78, 77, 66, 66, 73, 94};
    }

    public C2422iU(C7L c7l) {
        this.A00 = c7l;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2183eW
    public final void A03() {
        XH xh2;
        XH xh3;
        C6M c6m;
        C2406iE c2406iE;
        C6M c6m2;
        AnonymousClass78 anonymousClass78;
        C2184eX c2184eX;
        XH xh4;
        AnonymousClass78 anonymousClass782;
        US us2;
        AnonymousClass78 anonymousClass783;
        C6M c6m3;
        AnonymousClass78 anonymousClass784;
        AnonymousClass78 anonymousClass785;
        N3 A21;
        C6M c6m4;
        C2184eX c2184eX2;
        C6M c6m5;
        AnonymousClass78 anonymousClass786;
        xh2 = this.A00.A07;
        if (!xh2.A07()) {
            xh3 = this.A00.A07;
            xh3.A05();
            c6m = this.A00.A04;
            InterfaceC2460j9 A0F = c6m.A0F();
            c2406iE = this.A00.A02;
            A0F.A4I(c2406iE != null);
            c6m2 = this.A00.A04;
            c6m2.A0F().A3D();
            anonymousClass78 = this.A00.A03;
            AbstractC1596Nw.A02(anonymousClass78.A0t(), X0.A00(A00(0, 6, 63)));
            C1894Zp c1894Zp = new C1894Zp();
            c2184eX = this.A00.A0C;
            C1894Zp A03 = c1894Zp.A03(c2184eX);
            xh4 = this.A00.A07;
            C1894Zp A02 = A03.A02(xh4);
            anonymousClass782 = this.A00.A03;
            Map<String, String> A05 = A02.A04(anonymousClass782.A0u()).A05();
            us2 = this.A00.A05;
            anonymousClass783 = this.A00.A03;
            us2.AB5(anonymousClass783.A25(), A05);
            c6m3 = this.A00.A04;
            if (U7.A19(c6m3)) {
                c6m5 = this.A00.A04;
                W2 A00 = W2.A00(c6m5);
                String adPlacementType = AdPlacementType.BANNER.toString();
                anonymousClass786 = this.A00.A03;
                A00.A0E(adPlacementType, anonymousClass786.A25());
            }
            anonymousClass784 = this.A00.A03;
            if (anonymousClass784 == null) {
                A21 = null;
            } else {
                anonymousClass785 = this.A00.A03;
                A21 = anonymousClass785.A21();
            }
            c6m4 = this.A00.A04;
            N3.A07(A21, c6m4);
            c2184eX2 = this.A00.A0C;
            c2184eX2.A0V();
        }
    }
}
