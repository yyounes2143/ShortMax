package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.Kd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1500Kd extends AbstractRunnableC1796Vt {
    public final /* synthetic */ C1891Zm A00;

    public C1500Kd(C1891Zm c1891Zm) {
        this.A00 = c1891Zm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        boolean z10;
        Handler handler;
        Runnable runnable;
        this.A00.A03();
        z10 = this.A00.A08;
        if (!z10) {
            return;
        }
        handler = this.A00.A0D;
        runnable = this.A00.A0F;
        handler.postDelayed(runnable, 250L);
    }
}
