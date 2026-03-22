package com.facebook.ads.redexgen.X;

import java.util.concurrent.ThreadPoolExecutor;
/* loaded from: assets/audience_network.dex */
public class VK extends AbstractRunnableC1796Vt {
    public final /* synthetic */ VJ A00;

    public VK(VJ vj2) {
        this.A00 = vj2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        ThreadPoolExecutor threadPoolExecutor;
        ThreadPoolExecutor threadPoolExecutor2;
        Runnable runnable;
        this.A00.A0C = false;
        threadPoolExecutor = this.A00.A0B;
        if (threadPoolExecutor.getQueue().isEmpty()) {
            threadPoolExecutor2 = this.A00.A0B;
            runnable = this.A00.A0A;
            threadPoolExecutor2.execute(runnable);
        }
    }
}
