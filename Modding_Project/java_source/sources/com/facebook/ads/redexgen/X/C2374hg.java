package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.ArrayList;
/* renamed from: com.facebook.ads.redexgen.X.hg  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2374hg implements S7 {
    public final /* synthetic */ AbstractC2392hy A00;
    public final /* synthetic */ NG A01;
    public final /* synthetic */ NH A02;
    public final /* synthetic */ C2111dL A03;
    public final /* synthetic */ boolean A04;

    public C2374hg(NH nh2, C2111dL c2111dL, boolean z10, AbstractC2392hy abstractC2392hy, NG ng2) {
        this.A02 = nh2;
        this.A03 = c2111dL;
        this.A04 = z10;
        this.A00 = abstractC2392hy;
        this.A01 = ng2;
    }

    private void A00(boolean z10) {
        ArrayList arrayList;
        if (z10) {
            if (U7.A1l(this.A03) && this.A04) {
                arrayList = this.A02.A02;
                arrayList.add(AbstractC2023bu.A01(this.A03, this.A00, 1, new C2375hh(this)));
                return;
            }
            this.A01.ACG();
            return;
        }
        this.A01.ACF(AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACh() {
        A00(false);
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACq() {
        A00(true);
    }
}
