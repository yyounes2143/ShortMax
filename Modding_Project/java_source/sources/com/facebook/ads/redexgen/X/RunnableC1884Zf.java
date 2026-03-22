package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Zf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1884Zf implements Runnable {
    public final /* synthetic */ C1885Zg A00;
    public final /* synthetic */ InterfaceC1886Zh A01;

    public RunnableC1884Zf(C1885Zg c1885Zg, InterfaceC1886Zh interfaceC1886Zh) {
        this.A00 = c1885Zg;
        this.A01 = interfaceC1886Zh;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A01.ACO();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
