package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class YR implements View.OnClickListener {
    public final /* synthetic */ LZ A00;

    public YR(LZ lz) {
        this.A00 = lz;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        YT yt2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            yt2 = this.A00.A07;
            yt2.ADH();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
