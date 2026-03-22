package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
/* loaded from: assets/audience_network.dex */
public final class EW extends C1926aL {
    public final ImageView A00;
    public final C2111dL A01;

    public EW(C2111dL c2111dL) {
        super(c2111dL);
        this.A01 = c2111dL;
        setRadius(30);
        this.A00 = new ImageView(c2111dL);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final /* synthetic */ void A00(C1892Zn c1892Zn) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = -2;
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.updateViewLayout(this, layoutParams);
        }
    }

    public void setUrl(String str) {
        KZ kz = new KZ(this.A00, this.A01);
        kz.A04();
        kz.A07(str);
        kz.A06(new InterfaceC1893Zo() { // from class: com.facebook.ads.redexgen.X.EX
            @Override // com.facebook.ads.redexgen.X.InterfaceC1893Zo
            public final void ADT(C1892Zn c1892Zn) {
                EW.this.A00(c1892Zn);
            }
        });
    }
}
