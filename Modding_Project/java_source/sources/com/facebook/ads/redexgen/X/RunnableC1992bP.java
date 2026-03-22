package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.bP  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1992bP implements Runnable {
    public final /* synthetic */ C1463Is A00;

    public RunnableC1992bP(C1463Is c1463Is) {
        this.A00 = c1463Is;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            z10 = this.A00.A0D;
            if (z10) {
                this.A00.A0L();
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
