package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
/* renamed from: com.facebook.ads.redexgen.X.hP  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2357hP extends AbstractRunnableC1796Vt {
    public final /* synthetic */ C2420iS A00;
    public final /* synthetic */ NU A01;
    public final /* synthetic */ C11736y A02;

    public C2357hP(C11736y c11736y, NU nu2, C2420iS c2420iS) {
        this.A02 = c11736y;
        this.A01 = nu2;
        this.A00 = c2420iS;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        this.A02.A0T(this.A01);
        this.A02.A0Q(this.A00);
        this.A02.A00 = null;
        V1 A00 = V1.A00(AdErrorType.INTERSTITIAL_AD_TIMEOUT);
        this.A02.A0B.A0F().A5Y(A00.A03().getErrorCode(), A00.A04());
        this.A02.A07.A0G(A00);
    }
}
