package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
/* renamed from: com.facebook.ads.redexgen.X.Ko  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1511Ko extends AbstractRunnableC1796Vt {
    public final WeakReference<C2184eX> A00;

    public C1511Ko(C2184eX c2184eX) {
        this.A00 = new WeakReference<>(c2184eX);
    }

    public C1511Ko(WeakReference<C2184eX> weakReference) {
        this.A00 = weakReference;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        C2184eX viewabilityChecker = this.A00.get();
        if (viewabilityChecker != null) {
            viewabilityChecker.A0U();
        }
    }
}
