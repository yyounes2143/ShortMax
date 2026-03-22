package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.aG  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1921aG implements View.OnClickListener {
    public final /* synthetic */ C1923aI A00;

    public View$OnClickListenerC1921aG(C1923aI c1923aI) {
        this.A00 = c1923aI;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A05();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
