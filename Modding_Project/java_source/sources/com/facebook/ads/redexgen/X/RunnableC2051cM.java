package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.cM  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2051cM implements Runnable {
    public final /* synthetic */ C4K A00;

    public RunnableC2051cM(C4K c4k) {
        this.A00 = c4k;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC2058cT interfaceC2058cT;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0A = true;
            interfaceC2058cT = this.A00.A0V;
            interfaceC2058cT.AFE(true);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
