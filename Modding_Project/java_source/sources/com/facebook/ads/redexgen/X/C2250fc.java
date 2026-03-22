package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.fc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2250fc extends AbstractRunnableC1783Vg {
    public final /* synthetic */ C2249fb A00;

    public C2250fc(C2249fb c2249fb) {
        this.A00 = c2249fb;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1783Vg
    public final void A01() {
        RO ro2;
        RO ro3;
        ro2 = this.A00.A01.A00;
        if (ro2.A00() != null) {
            ro3 = this.A00.A01.A00;
            ro3.A00().onAdsLoaded();
        }
    }
}
