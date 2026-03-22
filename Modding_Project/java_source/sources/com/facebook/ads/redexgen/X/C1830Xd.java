package com.facebook.ads.redexgen.X;

import java.util.concurrent.Executor;
/* renamed from: com.facebook.ads.redexgen.X.Xd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1830Xd {
    public static C1830Xd A02;
    public final C1610Om A00;
    public final C1832Xf A01;

    public C1830Xd(C2111dL c2111dL, Executor executor, TE te2) {
        this.A01 = new C1832Xf(c2111dL);
        this.A00 = new C1610Om(executor, te2, c2111dL);
    }

    private void A00() {
        this.A01.A03(this.A00);
    }

    public static void A01(C2111dL c2111dL, Executor executor, TE te2) {
        if (!U7.A1X(c2111dL)) {
            return;
        }
        if (A02 == null) {
            A02 = new C1830Xd(c2111dL, executor, te2);
            A02.A00();
            return;
        }
        A02.A02(te2);
    }

    private void A02(TE te2) {
        this.A00.A07(te2);
    }
}
