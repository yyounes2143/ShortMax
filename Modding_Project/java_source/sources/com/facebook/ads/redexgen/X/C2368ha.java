package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
/* renamed from: com.facebook.ads.redexgen.X.ha  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2368ha implements InterfaceC1680Re {
    public final /* synthetic */ NH A00;

    public C2368ha(NH nh2) {
        this.A00 = nh2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1680Re
    public final void ACM() {
        NG ng2;
        ng2 = this.A00.A04;
        ng2.ACG();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1680Re
    public final void ACN() {
        NG ng2;
        ng2 = this.A00.A04;
        ng2.ACF(AdError.CACHE_ERROR);
    }
}
