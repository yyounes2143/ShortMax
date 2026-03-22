package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;
/* loaded from: assets/audience_network.dex */
public class J3 implements InterfaceC1893Zo {
    public final /* synthetic */ C1463Is A00;

    public J3(C1463Is c1463Is) {
        this.A00 = c1463Is;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1893Zo
    public final void ADT(C1892Zn c1892Zn) {
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        ImageView imageView4;
        imageView = this.A00.A02;
        if (imageView != null && c1892Zn.A00() != null) {
            imageView2 = this.A00.A02;
            imageView2.setImageBitmap(c1892Zn.A00());
            imageView3 = this.A00.A02;
            imageView3.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView4 = this.A00.A02;
            imageView4.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        }
    }
}
