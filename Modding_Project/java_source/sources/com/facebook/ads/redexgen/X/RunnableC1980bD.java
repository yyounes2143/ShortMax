package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
/* renamed from: com.facebook.ads.redexgen.X.bD  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1980bD implements Runnable {
    public final /* synthetic */ JR A00;

    public RunnableC1980bD(JR jr2) {
        this.A00 = jr2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ImageView imageView;
        ImageView imageView2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            imageView = this.A00.A03;
            if (imageView != null) {
                imageView2 = this.A00.A03;
                if (imageView2.getVisibility() == 0) {
                    this.A00.A0S(8);
                }
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
