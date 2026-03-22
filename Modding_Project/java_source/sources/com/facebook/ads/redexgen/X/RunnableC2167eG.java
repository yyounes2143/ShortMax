package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.eG  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2167eG implements Runnable {
    public final /* synthetic */ C2170eJ A00;

    public RunnableC2167eG(C2170eJ c2170eJ) {
        this.A00 = c2170eJ;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0A();
            handler = this.A00.A01;
            handler.removeCallbacks(this);
            handler2 = this.A00.A01;
            handler2.postDelayed(this, 250L);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
