package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.fz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2273fz extends QT {
    public boolean A00 = false;
    public final /* synthetic */ AbstractC2272fy A01;

    public C2273fz(AbstractC2272fy abstractC2272fy) {
        this.A01 = abstractC2272fy;
    }

    @Override // com.facebook.ads.redexgen.X.QT
    public final void A0L(C11556g c11556g, int i10) {
        super.A0L(c11556g, i10);
        if (i10 == 0 && this.A00) {
            this.A00 = false;
            this.A01.A0F();
        }
    }

    @Override // com.facebook.ads.redexgen.X.QT
    public final void A0M(C11556g c11556g, int i10, int i11) {
        if (i10 != 0 || i11 != 0) {
            this.A00 = true;
        }
    }
}
