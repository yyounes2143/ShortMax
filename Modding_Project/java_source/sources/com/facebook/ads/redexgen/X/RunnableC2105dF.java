package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.dF  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2105dF implements Runnable {
    public final /* synthetic */ C1347Ef A00;

    public RunnableC2105dF(C1347Ef c1347Ef) {
        this.A00 = c1347Ef;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C11556g c11556g;
        int i10;
        Handler handler;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0B() != 0) {
                c11556g = this.A00.A05;
                i10 = this.A00.A01;
                c11556g.scrollBy(i10, 0);
                handler = this.A00.A04;
                handler.postDelayed(this, 16L);
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
