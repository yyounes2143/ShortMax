package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.g7  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2280g7 implements QI {
    public final /* synthetic */ C11556g A00;

    public C2280g7(C11556g c11556g) {
        this.A00 = c11556g;
    }

    @Override // com.facebook.ads.redexgen.X.QI
    public final void ACK(AbstractC1656Qg abstractC1656Qg) {
        boolean A0G;
        abstractC1656Qg.A0d(true);
        if (abstractC1656Qg.A06 != null && abstractC1656Qg.A07 == null) {
            abstractC1656Qg.A06 = null;
        }
        abstractC1656Qg.A07 = null;
        A0G = abstractC1656Qg.A0G();
        if (!A0G && !this.A00.A1x(abstractC1656Qg.A0H) && abstractC1656Qg.A0i()) {
            this.A00.removeDetachedView(abstractC1656Qg.A0H, false);
        }
    }
}
