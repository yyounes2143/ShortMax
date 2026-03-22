package com.facebook.ads.redexgen.X;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* renamed from: com.facebook.ads.redexgen.X.dV  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2121dV extends ViewOutlineProvider {
    public final /* synthetic */ C2124dY A00;

    public C2121dV(C2124dY c2124dY) {
        this.A00 = c2124dY;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), 8.0f);
    }
}
