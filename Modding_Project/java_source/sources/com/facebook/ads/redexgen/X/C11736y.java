package com.facebook.ads.redexgen.X;

import com.facebook.ads.CacheFlag;
import java.util.EnumSet;
/* renamed from: com.facebook.ads.redexgen.X.6y  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C11736y extends AbstractC2358hQ {
    public C11736y(C2111dL c2111dL, NT nt2) {
        super(c2111dL, nt2);
    }

    private C2356hO A00(Runnable runnable) {
        return new C2356hO(this, runnable);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2358hQ
    public final AbstractC1562Mo A0I() {
        C2420iS successfullyLoadedAdapter = (C2420iS) this.A01;
        if (successfullyLoadedAdapter != null) {
            return successfullyLoadedAdapter.A09();
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2358hQ
    public final void A0P() {
        C2420iS interstitialAdapter = (C2420iS) this.A01;
        interstitialAdapter.A0B();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2358hQ
    public final void A0R(MP mp2, TE te2, TC tc2, NU nu2) {
        C2420iS c2420iS = (C2420iS) mp2;
        C2357hP c2357hP = new C2357hP(this, nu2, c2420iS);
        A0H().postDelayed(c2357hP, te2.A05().A05());
        EnumSet<CacheFlag> enumSet = this.A08.A0B;
        if (enumSet == null) {
            enumSet = CacheFlag.ALL;
        }
        c2420iS.A0A(this.A0B, A00(c2357hP), nu2, enumSet, this.A08.A04, this.A08.A05, this.A08.A02);
    }
}
