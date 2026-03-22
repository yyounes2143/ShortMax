package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class R7 implements View.OnLongClickListener {
    public final /* synthetic */ C2264fq A00;
    public final /* synthetic */ C1891Zm A01;

    public R7(C2264fq c2264fq, C1891Zm c1891Zm) {
        this.A00 = c2264fq;
        this.A01 = c1891Zm;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        View view2;
        View view3;
        View view4;
        view2 = this.A00.A00;
        if (view2 != null) {
            C1891Zm c1891Zm = this.A01;
            view3 = this.A00.A00;
            int width = view3.getWidth();
            view4 = this.A00.A00;
            c1891Zm.setBounds(0, 0, width, view4.getHeight());
            this.A01.A0D(!this.A01.A0E());
        }
        return true;
    }
}
