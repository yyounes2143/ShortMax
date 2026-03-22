package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Qp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1665Qp implements Runnable {
    public final /* synthetic */ C1666Qq A00;

    public RunnableC1665Qp(C1666Qq c1666Qq) {
        this.A00 = c1666Qq;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A05 = 0L;
            this.A00.A06 = false;
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
