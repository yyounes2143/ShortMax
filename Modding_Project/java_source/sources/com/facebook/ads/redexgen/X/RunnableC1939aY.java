package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.aY  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1939aY implements Runnable {
    public final /* synthetic */ C1494Jx A00;

    public RunnableC1939aY(C1494Jx c1494Jx) {
        this.A00 = c1494Jx;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A02 = true;
            if (((AbstractC1945ae) this.A00).A06.A0E() != null) {
                ((AbstractC1945ae) this.A00).A06.A0E().AFE(true);
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
