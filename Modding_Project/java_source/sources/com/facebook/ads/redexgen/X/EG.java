package com.facebook.ads.redexgen.X;

import java.util.Map;
/* loaded from: assets/audience_network.dex */
public final class EG implements InterfaceC2117dR {
    public final C2111dL A01;
    public final US A02;
    public final C2114dO A03;
    public final E1 A04;
    public final String A07;
    public final DR A06 = new DR() { // from class: com.facebook.ads.redexgen.X.3m
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
        /* renamed from: A00 */
        public final void A03(C3Y c3y) {
            Boolean bool;
            C2111dL c2111dL;
            bool = EG.this.A00;
            if (bool.booleanValue()) {
                return;
            }
            c2111dL = EG.this.A01;
            c2111dL.A0F().AII();
            EG.this.A08();
        }
    };
    public final DX A05 = new DX() { // from class: com.facebook.ads.redexgen.X.3l
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
        /* renamed from: A00 */
        public final void A03(C10743d c10743d) {
            Boolean bool;
            C2111dL c2111dL;
            bool = EG.this.A00;
            if (!bool.booleanValue()) {
                c2111dL = EG.this.A01;
                c2111dL.A0F().AIG();
                EG.this.A08();
            }
            EG.this.A00 = true;
        }
    };
    public Boolean A00 = false;

    public EG(C2111dL c2111dL, US us2, E1 e12, String str, boolean z10, C1318Dc c1318Dc, Map<String, String> extraParams) {
        this.A01 = c2111dL;
        this.A02 = us2;
        this.A07 = str;
        this.A04 = e12;
        this.A03 = new C2114dO(e12, str, z10, extraParams);
        if (U7.A25(this.A01)) {
            this.A01.A0F().AID();
            c1318Dc.A0m(this);
            return;
        }
        this.A01.A0F().AIE();
        this.A04.getEventBus().A03(this.A06, this.A05);
    }

    public final void A07() {
        EI ei2 = new EI(this);
        if (this.A04.A0t()) {
            XJ.A00(ei2);
        } else {
            this.A04.getStateHandler().post(ei2);
        }
    }

    public final synchronized void A08() {
        if (!this.A00.booleanValue()) {
            this.A02.ABQ(this.A07, this.A03.A06());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2117dR
    public final void AE5() {
        this.A01.A0F().AIH();
        A08();
    }
}
