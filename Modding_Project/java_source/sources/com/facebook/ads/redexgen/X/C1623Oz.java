package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.Oz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1623Oz extends AbstractRunnableC1796Vt {
    public final /* synthetic */ C1806Wd A00;

    public C1623Oz(C1806Wd c1806Wd) {
        this.A00 = c1806Wd;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        Handler handler;
        long j10;
        if (!this.A00.A05()) {
            return;
        }
        this.A00.A02();
        handler = this.A00.A05;
        j10 = this.A00.A02;
        handler.postDelayed(this, j10);
    }
}
