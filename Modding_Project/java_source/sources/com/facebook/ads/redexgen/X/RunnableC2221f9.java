package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.f9  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2221f9 implements Runnable {
    public final /* synthetic */ C1287Bw A00;

    public RunnableC2221f9(C1287Bw c1287Bw) {
        this.A00 = c1287Bw;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            C1287Bw.A03(this.A00);
            throw null;
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
