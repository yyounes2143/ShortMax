package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.pn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2838pn implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C2837pm A01;
    public final /* synthetic */ Exception A02;

    public RunnableC2838pn(C2837pm c2837pm, int i10, Exception exc) {
        this.A01 = c2837pm;
        this.A00 = i10;
        this.A02 = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        InterfaceC2293gK interfaceC2293gK;
        Handler handler;
        Runnable runnable;
        boolean A08;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            try {
                z10 = this.A01.A01;
                if (z10) {
                    if (A8.A07) {
                        A08 = this.A01.A08();
                        if (A08) {
                            this.A01.A0C();
                            return;
                        }
                    }
                    C2837pm c2837pm = this.A01;
                    interfaceC2293gK = this.A01.A05;
                    c2837pm.A05(interfaceC2293gK.AC6());
                    handler = this.A01.A04;
                    runnable = this.A01.A0A;
                    handler.postDelayed(runnable, this.A00);
                }
            } catch (Exception ex) {
                ex.initCause(this.A02);
                throw ex;
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
