package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* renamed from: com.facebook.ads.redexgen.X.fZ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2247fZ implements RQ {
    public final /* synthetic */ ImageView A00;
    public final /* synthetic */ RS A01;
    public final /* synthetic */ C1652Qc A02;

    public C2247fZ(RS rs2, ImageView imageView, C1652Qc c1652Qc) {
        this.A01 = rs2;
        this.A00 = imageView;
        this.A02 = c1652Qc;
    }

    @Override // com.facebook.ads.redexgen.X.RQ
    public final void ADU(Drawable drawable) {
        C1652Qc.A0f(drawable, this.A00);
        this.A02.A1K(drawable);
    }
}
