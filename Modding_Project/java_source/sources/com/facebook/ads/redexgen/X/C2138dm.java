package com.facebook.ads.redexgen.X;

import android.os.Handler;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.dm  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2138dm extends AbstractRunnableC1796Vt {
    public static String[] A05 = {"peP5GJDM9me8QDpiMTE0HYbhk5UQvsuj", "UmJsGkUZcFFvxG21gGzKuNxtLbnsNH0B", "InCZKAYVJ2xyVT3RLHGk", "cxu83bHx4KSubY78z6WW", "55WyHuuOCemh1dLUozRA9kNqY", "hUMsj3tCoCX6inz1bILbzXUTN", "Ib1pT8H4oQaxudtz", "STVRCs5pIYaR1pHj"};
    public final /* synthetic */ S7 A00;
    public final /* synthetic */ S8 A01;
    public final /* synthetic */ SF A02;
    public final /* synthetic */ ArrayList A03;
    public final /* synthetic */ ArrayList A04;

    public C2138dm(SF sf2, ArrayList arrayList, S8 s82, S7 s72, ArrayList arrayList2) {
        this.A02 = sf2;
        this.A03 = arrayList;
        this.A01 = s82;
        this.A00 = s72;
        this.A04 = arrayList2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        AtomicBoolean A0D;
        SQ sq2;
        Handler handler;
        SQ sq3;
        long j10;
        long j11;
        long j12;
        long j13;
        A0D = SF.A0D(this.A03);
        sq2 = this.A02.A04;
        if (sq2 instanceof C2111dL) {
            sq3 = this.A02.A04;
            C2111dL c2111dL = (C2111dL) sq3;
            if (this.A01.A00 == -1) {
                boolean z10 = A0D.get();
                String[] strArr = A05;
                if (strArr[6].length() == strArr[7].length()) {
                    String[] strArr2 = A05;
                    strArr2[3] = "VVOoEaVD2AhQqE2eihnl";
                    strArr2[2] = "7KTPepw5ZZxiUEMCto3C";
                    if (z10) {
                        LH A0F = c2111dL.A0F();
                        j13 = this.A02.A00;
                        A0F.A4h(XG.A01(j13));
                    } else {
                        LH A0F2 = c2111dL.A0F();
                        j12 = this.A02.A00;
                        A0F2.A4f(XG.A01(j12));
                    }
                }
                throw new RuntimeException();
            } else if (A0D.get()) {
                LH A0F3 = c2111dL.A0F();
                j11 = this.A02.A00;
                long A01 = XG.A01(j11);
                S8 s82 = this.A01;
                String[] strArr3 = A05;
                if (strArr3[4].length() == strArr3[5].length()) {
                    String[] strArr4 = A05;
                    strArr4[4] = "xsAs6ZK2AKeTr6tr707KlGvOM";
                    strArr4[5] = "GxI5mwrGpMJ9ldsuxbhmmAcT7";
                    A0F3.A4i(A01, s82.A00);
                }
                throw new RuntimeException();
            } else {
                LH A0F4 = c2111dL.A0F();
                j10 = this.A02.A00;
                A0F4.A4g(XG.A01(j10), this.A01.A00);
            }
        }
        handler = this.A02.A02;
        handler.post(new C2139dn(this, A0D));
        SF.A0D(this.A04);
    }
}
