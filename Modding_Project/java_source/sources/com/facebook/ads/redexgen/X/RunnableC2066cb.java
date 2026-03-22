package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.cb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2066cb implements Runnable {
    public final /* synthetic */ C10883r A00;

    public RunnableC2066cb(C10883r c10883r) {
        this.A00 = c10883r;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            ((G2) this.A00).A09.A4b(((G2) this.A00).A0A.A7o());
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
