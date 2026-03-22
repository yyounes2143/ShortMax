package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class QJ {
    public int A00;
    public int A01;
    public int A02;
    public int A03;

    private final QJ A00(AbstractC1656Qg abstractC1656Qg, int i10) {
        View view = abstractC1656Qg.A0H;
        this.A01 = view.getLeft();
        this.A03 = view.getTop();
        this.A02 = view.getRight();
        this.A00 = view.getBottom();
        return this;
    }

    public final QJ A01(AbstractC1656Qg abstractC1656Qg) {
        return A00(abstractC1656Qg, 0);
    }
}
