package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;
/* renamed from: com.facebook.ads.redexgen.X.Ea  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1342Ea extends C1926aL {
    public final ImageView A00;
    public final C2111dL A01;

    public C1342Ea(C2111dL c2111dL) {
        super(c2111dL);
        this.A01 = c2111dL;
        this.A00 = new ImageView(c2111dL);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final void A00(String str) {
        KZ downloadImageTask = new KZ(this.A00, this.A01);
        downloadImageTask.A04();
        downloadImageTask.A07(str);
    }
}
