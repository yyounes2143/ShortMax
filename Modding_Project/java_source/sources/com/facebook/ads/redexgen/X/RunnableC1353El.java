package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.El  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class RunnableC1353El implements Runnable {
    public final InterfaceC1352Ek A00;

    public RunnableC1353El(InterfaceC1352Ek interfaceC1352Ek) {
        this.A00 = interfaceC1352Ek;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.AE4();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
