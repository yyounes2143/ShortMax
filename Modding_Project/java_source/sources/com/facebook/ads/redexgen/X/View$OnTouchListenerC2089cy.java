package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.cy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnTouchListenerC2089cy implements View.OnTouchListener {
    public final /* synthetic */ C2090cz A00;

    public View$OnTouchListenerC2089cy(C2090cz c2090cz) {
        this.A00 = c2090cz;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        US us2;
        AbstractC2392hy abstractC2392hy;
        if (motionEvent.getAction() == 1) {
            this.A00.A01 = System.currentTimeMillis();
            C2090cz.A00(this.A00);
            us2 = this.A00.A07;
            abstractC2392hy = this.A00.A04;
            us2.ABJ(abstractC2392hy.A25(), new C1894Zp().A03(this.A00.getViewabilityChecker()).A02(this.A00.getTouchDataRecorder()).A05());
            return false;
        }
        return false;
    }
}
