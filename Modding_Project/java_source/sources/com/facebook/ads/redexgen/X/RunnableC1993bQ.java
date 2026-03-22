package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.bQ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1993bQ implements Runnable {
    public final /* synthetic */ C1463Is A00;

    public RunnableC1993bQ(C1463Is c1463Is) {
        this.A00 = c1463Is;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1949ai c1949ai;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0C = true;
            c1949ai = this.A00.A0c;
            c1949ai.A0E().AFE(true);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
