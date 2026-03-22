package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.fd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2251fd extends AbstractRunnableC1783Vg {
    public final /* synthetic */ C2248fa A00;
    public final /* synthetic */ V1 A01;

    public C2251fd(C2248fa c2248fa, V1 v12) {
        this.A00 = c2248fa;
        this.A01 = v12;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1783Vg
    public final void A01() {
        RO ro2;
        RO ro3;
        ro2 = this.A00.A00;
        if (ro2.A00() != null) {
            ro3 = this.A00.A00;
            ro3.A00().onAdError(WT.A00(this.A01));
        }
    }
}
