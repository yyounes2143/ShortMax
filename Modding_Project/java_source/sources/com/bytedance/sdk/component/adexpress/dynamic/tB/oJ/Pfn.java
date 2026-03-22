package com.bytedance.sdk.component.adexpress.dynamic.tB.oJ;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes3.dex */
public class Pfn implements View.OnTouchListener {
    private int Pfn;
    private float ZYk;
    private com.bytedance.sdk.component.adexpress.dynamic.tB.so ex;
    private float oJ;
    private boolean tB;

    public Pfn(com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar, int i10) {
        this.ex = soVar;
        this.Pfn = i10;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float y10 = motionEvent.getY();
                    this.ZYk = y10;
                    if (Math.abs(y10 - this.oJ) > 10.0f) {
                        this.tB = true;
                    }
                }
            } else if (!this.tB) {
                return false;
            } else {
                int ZYk = com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ(), Math.abs(this.ZYk - this.oJ));
                if (this.ZYk - this.oJ < 0.0f && ZYk > this.Pfn && (soVar = this.ex) != null) {
                    soVar.oJ();
                    this.oJ = 0.0f;
                    this.ZYk = 0.0f;
                    this.tB = false;
                }
            }
        } else {
            this.oJ = motionEvent.getY();
        }
        return true;
    }
}
