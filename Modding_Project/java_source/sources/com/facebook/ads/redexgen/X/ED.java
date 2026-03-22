package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* loaded from: assets/audience_network.dex */
public class ED extends AbstractRunnableC1796Vt {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ E1 A02;
    public final /* synthetic */ EnumC2181eU A03;

    public ED(E1 e12, EnumC2181eU enumC2181eU, int i10, int i11) {
        this.A02 = e12;
        this.A03 = enumC2181eU;
        this.A00 = i10;
        this.A01 = i11;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        C2111dL c2111dL;
        Handler handler;
        C1731Te c1731Te;
        C2111dL c2111dL2;
        C1731Te c1731Te2;
        DI di2;
        Handler handler2;
        C2111dL c2111dL3;
        C1731Te c1731Te3;
        Handler handler3;
        C2111dL c2111dL4;
        C2111dL c2111dL5;
        C1731Te c1731Te4;
        DQ dq2;
        Handler handler4;
        C2111dL c2111dL6;
        C2111dL c2111dL7;
        Handler handler5;
        C1731Te c1731Te5;
        C1731Te c1731Te6;
        DW dw;
        C2111dL c2111dL8;
        C1731Te c1731Te7;
        DO r02;
        if (this.A03 == EnumC2181eU.A07) {
            this.A02.A0M(UZ.A0y);
            c2111dL8 = this.A02.A0B;
            c2111dL8.A0F().A3b();
            c1731Te7 = this.A02.A0C;
            r02 = E1.A0J;
            c1731Te7.A02(r02);
        } else if (this.A03 == EnumC2181eU.A03) {
            this.A02.A0M(UZ.A0t);
            this.A02.A04 = true;
            c1731Te6 = this.A02.A0C;
            dw = E1.A0H;
            c1731Te6.A02(dw);
            this.A02.A0L(this.A00);
        } else if (this.A03 == EnumC2181eU.A06) {
            this.A02.A0M(UZ.A0s);
            c2111dL7 = this.A02.A0B;
            c2111dL7.A0F().A3T();
            this.A02.A04 = true;
            handler5 = this.A02.A08;
            handler5.removeCallbacksAndMessages(null);
            c1731Te5 = this.A02.A0C;
            c1731Te5.A02(new C10743d(this.A01, this.A01));
            this.A02.A0L(this.A01);
        } else if (this.A03 == EnumC2181eU.A0A) {
            c2111dL4 = this.A02.A0B;
            if (U7.A1u(c2111dL4)) {
                c2111dL6 = this.A02.A0B;
                c2111dL6.A0B().AFs();
            }
            this.A02.A0M(UZ.A0w);
            c2111dL5 = this.A02.A0B;
            c2111dL5.A0F().A3i();
            c1731Te4 = this.A02.A0C;
            dq2 = E1.A0I;
            c1731Te4.A02(dq2);
            handler4 = this.A02.A08;
            handler4.removeCallbacksAndMessages(null);
            this.A02.A0I();
        } else if (this.A03 == EnumC2181eU.A05) {
            this.A02.A0M(UZ.A0v);
            c2111dL3 = this.A02.A0B;
            c2111dL3.A0F().A3X();
            c1731Te3 = this.A02.A0C;
            final int i10 = this.A00;
            c1731Te3.A02(new DY(i10) { // from class: com.facebook.ads.redexgen.X.3Y
            });
            handler3 = this.A02.A08;
            handler3.removeCallbacksAndMessages(null);
            this.A02.A0L(this.A00);
        } else if (this.A03 == EnumC2181eU.A04) {
            this.A02.A0M(UZ.A0u);
            c2111dL2 = this.A02.A0B;
            c2111dL2.A0F().A3U();
            c1731Te2 = this.A02.A0C;
            di2 = E1.A0L;
            c1731Te2.A02(di2);
            handler2 = this.A02.A08;
            handler2.removeCallbacksAndMessages(null);
        } else if (this.A03 == EnumC2181eU.A09) {
            this.A02.A0M(UZ.A0s);
            c2111dL = this.A02.A0B;
            c2111dL.A0F().A3d();
            this.A02.A04 = true;
            handler = this.A02.A08;
            handler.removeCallbacksAndMessages(null);
            c1731Te = this.A02.A0C;
            c1731Te.A02(new C10743d(this.A00, this.A01));
            this.A02.A0L(this.A00);
        }
    }
}
