package com.bytedance.sdk.component.adexpress.dynamic.tB.oJ;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes3.dex */
public class ba implements View.OnTouchListener {
    private static int tB = 10;
    private com.bytedance.sdk.component.adexpress.dynamic.tB.so Pfn;
    private float ZYk;
    private boolean ex;
    private float oJ;

    public ba(com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar) {
        this.Pfn = soVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action == 3) {
                        this.ex = false;
                    }
                } else {
                    float x10 = motionEvent.getX();
                    float y10 = motionEvent.getY();
                    if (Math.abs(x10 - this.oJ) >= tB || Math.abs(y10 - this.ZYk) >= tB) {
                        this.ex = true;
                    }
                }
            } else if (this.ex) {
                this.ex = false;
                return false;
            } else {
                float x11 = motionEvent.getX();
                float y11 = motionEvent.getY();
                if (Math.abs(x11 - this.oJ) < tB && Math.abs(y11 - this.ZYk) < tB) {
                    com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar = this.Pfn;
                    if (soVar != null) {
                        soVar.oJ();
                    }
                } else {
                    this.ex = false;
                }
            }
        } else {
            this.oJ = motionEvent.getX();
            this.ZYk = motionEvent.getY();
        }
        return true;
    }
}
