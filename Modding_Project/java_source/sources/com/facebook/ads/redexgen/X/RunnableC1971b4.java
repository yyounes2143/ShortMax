package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.b4  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1971b4 implements Runnable {
    public final /* synthetic */ JU A00;

    public RunnableC1971b4(JU ju2) {
        this.A00 = ju2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            z10 = this.A00.A0Q;
            if (z10) {
                this.A00.A0N();
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
