package com.facebook.ads.redexgen.X;

import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Dd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1319Dd extends AbstractC1598Nz {
    public final /* synthetic */ C1318Dc A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1319Dd(C1318Dc c1318Dc, double d10, double d11, double d12, boolean z10) {
        super(d10, d11, d12, z10);
        this.A00 = c1318Dc;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1598Nz
    public final void A00(boolean z10, boolean z11, O1 o12) {
        C2111dL c2111dL;
        String str;
        Map A0J;
        boolean z12;
        c2111dL = this.A00.A0D;
        if (U7.A0z(c2111dL)) {
            z12 = this.A00.A0A;
            if (z12) {
                return;
            }
        }
        if (z11) {
            this.A00.A0A = true;
            C1318Dc c1318Dc = this.A00;
            str = this.A00.A0J;
            A0J = this.A00.A0J(EnumC2118dS.A0B);
            c1318Dc.A0R(str, A0J);
        }
    }
}
