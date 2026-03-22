package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* loaded from: assets/audience_network.dex */
public class FP implements InterfaceC1822Wv {
    public final /* synthetic */ C10883r A00;

    public FP(C10883r c10883r) {
        this.A00 = c10883r;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1822Wv
    public final void AEQ(String str) {
        Handler handler;
        handler = this.A00.A0G;
        handler.postDelayed(new RunnableC2065ca(this), 2000L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1822Wv
    public final void AER(String str) {
        this.A00.A0I(UZ.A0c);
    }
}
