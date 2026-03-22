package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.widget.RelativeLayout;
/* renamed from: com.facebook.ads.redexgen.X.Da  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1316Da extends RelativeLayout implements InterfaceC2128dc {
    public E1 A00;

    public AbstractC1316Da(C2111dL c2111dL) {
        super(c2111dL);
    }

    public AbstractC1316Da(C2111dL c2111dL, AttributeSet attributeSet, int i10) {
        super(c2111dL, attributeSet, i10);
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(-1, -1);
        setLayoutParams(params);
    }

    public void A07() {
    }

    public void A08() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2128dc
    public final void AAm(E1 e12) {
        this.A00 = e12;
        A07();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2128dc
    public final void AJk(E1 e12) {
        A08();
        this.A00 = null;
    }

    public E1 getVideoView() {
        return this.A00;
    }
}
