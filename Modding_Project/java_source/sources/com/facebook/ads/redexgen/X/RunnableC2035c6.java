package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.c6  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2035c6 implements Runnable {
    public final /* synthetic */ C11104n A00;

    public RunnableC2035c6(C11104n c11104n) {
        this.A00 = c11104n;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC2058cT interfaceC2058cT;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A07 = true;
            interfaceC2058cT = this.A00.A0M;
            interfaceC2058cT.AFE(true);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
