package com.facebook.ads.redexgen.X;

import java.util.concurrent.CountDownLatch;
/* renamed from: com.facebook.ads.redexgen.X.ii  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2434ii extends AbstractRunnableC1796Vt {
    public final /* synthetic */ MW A00;

    public C2434ii(MW mw) {
        this.A00 = mw;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        MV mv;
        CountDownLatch countDownLatch;
        this.A00.A07();
        mv = this.A00.A02;
        mv.A06();
        countDownLatch = this.A00.A05;
        countDownLatch.countDown();
    }
}
