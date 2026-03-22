package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.cd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnTouchListenerC2068cd implements View.OnTouchListener {
    public final /* synthetic */ C10883r A00;

    public View$OnTouchListenerC2068cd(C10883r c10883r) {
        this.A00 = c10883r;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View view2;
        View view3;
        View view4;
        View view5;
        View view6;
        View view7;
        AbstractC1945ae abstractC1945ae;
        AbstractC1945ae abstractC1945ae2;
        float x10 = motionEvent.getX();
        view2 = this.A00.A0H;
        if (x10 >= view2.getX()) {
            float x11 = motionEvent.getX();
            view3 = this.A00.A0H;
            float x12 = view3.getX();
            view4 = this.A00.A0H;
            if (x11 <= x12 + view4.getWidth()) {
                float y10 = motionEvent.getY();
                view5 = this.A00.A0H;
                if (y10 >= view5.getY()) {
                    float y11 = motionEvent.getY();
                    view6 = this.A00.A0H;
                    float y12 = view6.getY();
                    view7 = this.A00.A0H;
                    if (y11 <= y12 + view7.getHeight()) {
                        abstractC1945ae = this.A00.A03;
                        if (abstractC1945ae != null) {
                            abstractC1945ae2 = this.A00.A03;
                            abstractC1945ae2.dispatchTouchEvent(motionEvent);
                            return true;
                        }
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
