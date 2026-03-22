package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.aF  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1920aF implements View.OnClickListener {
    public final /* synthetic */ C1923aI A00;

    public View$OnClickListenerC1920aF(C1923aI c1923aI) {
        this.A00 = c1923aI;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1922aH interfaceC1922aH;
        AbstractC1839Xm abstractC1839Xm;
        List<View> list;
        E1 e12;
        E1 e13;
        E1 e14;
        AbstractC1839Xm abstractC1839Xm2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1922aH = this.A00.A05;
            interfaceC1922aH.AE7();
            abstractC1839Xm = this.A00.A00;
            if (abstractC1839Xm != null) {
                abstractC1839Xm2 = this.A00.A00;
                XP.A0J(abstractC1839Xm2);
            }
            list = this.A00.A07;
            for (View view2 : list) {
                XP.A0L(view2, 0);
            }
            XP.A0H(this.A00);
            e12 = this.A00.A06;
            if (e12 == null) {
                return;
            }
            e13 = this.A00.A06;
            XP.A0L(e13, 0);
            e14 = this.A00.A06;
            e14.A0h(EnumC2127db.A02, 14);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
