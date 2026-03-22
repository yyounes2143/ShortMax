package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.Fu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1388Fu extends AbstractRunnableC1796Vt {
    public final /* synthetic */ C4H A00;

    public C1388Fu(C4H c4h) {
        this.A00 = c4h;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        AbstractC1945ae abstractC1945ae;
        int closeButtonStyle;
        AtomicBoolean atomicBoolean;
        AbstractC1945ae abstractC1945ae2;
        abstractC1945ae = this.A00.A00;
        if (abstractC1945ae != null) {
            abstractC1945ae2 = this.A00.A00;
            abstractC1945ae2.A1E();
        }
        AbstractC1839Xm abstractC1839Xm = this.A00.A08;
        closeButtonStyle = this.A00.getCloseButtonStyle();
        abstractC1839Xm.setToolbarActionMode(closeButtonStyle);
        this.A00.A08.A07();
        atomicBoolean = this.A00.A06;
        atomicBoolean.set(true);
    }
}
