package com.facebook.ads.redexgen.X;

import android.os.ConditionVariable;
/* loaded from: assets/audience_network.dex */
public class MD extends Thread {
    public final /* synthetic */ ConditionVariable A00;
    public final /* synthetic */ C2443ir A01;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MD(C2443ir c2443ir, String str, ConditionVariable conditionVariable) {
        super(str);
        this.A01 = c2443ir;
        this.A00 = conditionVariable;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            synchronized (this.A01) {
                this.A00.open();
                this.A01.A05();
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
