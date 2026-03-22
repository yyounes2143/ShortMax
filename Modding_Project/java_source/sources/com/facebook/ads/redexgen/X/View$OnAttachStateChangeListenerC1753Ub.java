package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Ub  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnAttachStateChangeListenerC1753Ub implements View.OnAttachStateChangeListener {
    public final /* synthetic */ UZ A00;
    public final /* synthetic */ C1752Ua A01;

    public View$OnAttachStateChangeListenerC1753Ub(C1752Ua c1752Ua, UZ uz) {
        this.A01 = c1752Ua;
        this.A00 = uz;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.A01.A04(this.A00, null);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
