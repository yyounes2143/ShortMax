package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
/* renamed from: com.facebook.ads.redexgen.X.hJ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2351hJ extends AbstractRunnableC1796Vt {
    public final /* synthetic */ C7B A00;
    public final /* synthetic */ NU A01;
    public final /* synthetic */ C11666r A02;

    public C2351hJ(C11666r c11666r, NU nu2, C7B c7b) {
        this.A02 = c11666r;
        this.A01 = nu2;
        this.A00 = c7b;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        this.A02.A0T(this.A01);
        this.A02.A0Q(this.A00);
        this.A02.A00 = null;
        AdErrorType adErrorType = AdErrorType.RV_AD_TIMEOUT;
        this.A02.A0B.A0F().A5Y(adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
        this.A02.A07.A0G(new V1(adErrorType, ""));
    }
}
