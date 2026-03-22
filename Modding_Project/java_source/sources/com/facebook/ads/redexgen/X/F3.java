package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public class F3 extends AbstractC2183eW {
    public final /* synthetic */ C10873q A00;

    public F3(C10873q c10873q) {
        this.A00 = c10873q;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2183eW
    public final void A03() {
        XH xh2;
        XH xh3;
        String str;
        C2184eX c2184eX;
        XH xh4;
        AbstractC2392hy abstractC2392hy;
        US us2;
        String str2;
        AbstractC2392hy abstractC2392hy2;
        C2111dL c2111dL;
        C2111dL c2111dL2;
        AbstractC2392hy abstractC2392hy3;
        AbstractC2392hy abstractC2392hy4;
        xh2 = this.A00.A0E;
        if (!xh2.A07()) {
            C10873q c10873q = this.A00;
            xh3 = this.A00.A0E;
            c10873q.setImpressionRecordingFlag(xh3);
            str = this.A00.A0A;
            if (!TextUtils.isEmpty(str)) {
                C1894Zp c1894Zp = new C1894Zp();
                c2184eX = this.A00.A09;
                C1894Zp A03 = c1894Zp.A03(c2184eX);
                xh4 = this.A00.A0E;
                C1894Zp A02 = A03.A02(xh4);
                abstractC2392hy = ((NI) this.A00).A0A;
                Map<String, String> A05 = A02.A04(abstractC2392hy.A0u()).A05();
                us2 = ((NI) this.A00).A0C;
                str2 = this.A00.A0A;
                us2.AB5(str2, A05);
                abstractC2392hy2 = ((NI) this.A00).A0A;
                N3 A21 = abstractC2392hy2.A21();
                c2111dL = this.A00.A0D;
                N3.A07(A21, c2111dL);
                c2111dL2 = this.A00.A0D;
                c2111dL2.A0F().A3D();
                abstractC2392hy3 = this.A00.A03;
                String A0t = abstractC2392hy3.A0t();
                abstractC2392hy4 = ((NI) this.A00).A0A;
                AbstractC1596Nw.A02(A0t, X0.A00(abstractC2392hy4.A0v()));
            }
        }
    }
}
