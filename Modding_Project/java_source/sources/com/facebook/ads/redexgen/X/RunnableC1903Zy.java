package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Zy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1903Zy implements Runnable {
    public final /* synthetic */ KL A00;

    public RunnableC1903Zy(KL kl2) {
        this.A00 = kl2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0m();
            this.A00.A0n();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
