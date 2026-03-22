package com.facebook.ads.redexgen.X;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* renamed from: com.facebook.ads.redexgen.X.dW  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2122dW extends ViewOutlineProvider {
    public final /* synthetic */ float A00;
    public final /* synthetic */ C2124dY A01;

    public C2122dW(C2124dY c2124dY, float f10) {
        this.A01 = c2124dY;
        this.A00 = f10;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.A00);
    }
}
