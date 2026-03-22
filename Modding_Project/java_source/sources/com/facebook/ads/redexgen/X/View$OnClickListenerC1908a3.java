package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.a3  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1908a3 implements View.OnClickListener {
    public final /* synthetic */ KG A00;

    public View$OnClickListenerC1908a3(KG kg2) {
        this.A00 = kg2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A02();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
