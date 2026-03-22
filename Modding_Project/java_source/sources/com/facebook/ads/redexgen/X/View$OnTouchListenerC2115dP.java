package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.dP  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnTouchListenerC2115dP implements View.OnTouchListener {
    public final /* synthetic */ E1 A00;

    public View$OnTouchListenerC2115dP(E1 e12) {
        this.A00 = e12;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C1731Te c1731Te;
        c1731Te = this.A00.A0C;
        c1731Te.A02(new DH(view, motionEvent));
        return false;
    }
}
