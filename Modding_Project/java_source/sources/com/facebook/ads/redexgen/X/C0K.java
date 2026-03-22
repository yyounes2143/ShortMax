package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.0K  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C0K extends C10020h {
    public C11415s A00;
    public List<C2078cn> A01;

    public C0K(C2111dL c2111dL) {
        super(c2111dL);
        this.A00 = new C11415s(this, 1, null, null, null);
    }

    public final void A20(C2184eX c2184eX) {
        if (this.A00 != null) {
            this.A00.A0c(c2184eX);
        }
    }

    public C11415s getCarouselCardBehaviorHelper() {
        return this.A00;
    }

    public void setCardsInfo(ArrayList arrayList) {
        this.A01 = arrayList;
        this.A00.A0d(this.A01);
    }
}
