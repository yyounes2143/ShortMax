package com.facebook.ads.redexgen.X;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.facebook.ads.redexgen.X.a0  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1905a0 implements LayoutTransition.TransitionListener {
    public final /* synthetic */ C1906a1 A00;

    public C1905a0(C1906a1 c1906a1) {
        this.A00 = c1906a1;
    }

    @Override // android.animation.LayoutTransition.TransitionListener
    public final void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i10) {
        ((AbstractC1900Zv) this.A00.A00.A00).A09.setAlpha(1.0f);
        this.A00.A00.A00.A0Q.setAlpha(1.0f);
        this.A00.A00.A00.A0P.setAlpha(1.0f);
    }

    @Override // android.animation.LayoutTransition.TransitionListener
    public final void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i10) {
    }
}
