package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
/* renamed from: com.facebook.ads.redexgen.X.hb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2369hb implements NP {
    public final /* synthetic */ NH A00;

    public C2369hb(NH nh2) {
        this.A00 = nh2;
    }

    @Override // com.facebook.ads.redexgen.X.NP
    public final void AEZ(AdError adError) {
        NG ng2;
        ng2 = this.A00.A04;
        ng2.ACF(AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.NP
    public final void AEa() {
        NG ng2;
        ng2 = this.A00.A04;
        ng2.ACG();
    }
}
