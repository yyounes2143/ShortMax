package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Xj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1836Xj implements View.OnClickListener {
    public final /* synthetic */ N9 A00;
    public final /* synthetic */ C1752Ua A01;
    public final /* synthetic */ C1837Xk A02;
    public final /* synthetic */ InterfaceC1840Xn A03;
    public final /* synthetic */ String A04;

    public View$OnClickListenerC1836Xj(C1837Xk c1837Xk, C1752Ua c1752Ua, InterfaceC1840Xn interfaceC1840Xn, String str, N9 n92) {
        this.A02 = c1837Xk;
        this.A01 = c1752Ua;
        this.A03 = interfaceC1840Xn;
        this.A04 = str;
        this.A00 = n92;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        O2 o22;
        C2111dL c2111dL;
        C2111dL c2111dL2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A01.A04(UZ.A0A, null);
            o22 = this.A02.A02;
            c2111dL = this.A02.A03;
            if (o22.A0O(c2111dL.A02(), true)) {
                this.A03.AAf(this.A04, this.A00);
            } else if (!TextUtils.isEmpty(this.A00.A00())) {
                WN wn2 = new WN();
                c2111dL2 = this.A02.A03;
                WN.A0O(wn2, c2111dL2, WQ.A00(this.A00.A00()), this.A04);
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
