package com.bytedance.sdk.component.adexpress.dynamic.tB.oJ;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.tB.jFA;
/* loaded from: classes3.dex */
public class ZYk implements View.OnTouchListener {
    private jFA Pfn;
    private float ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.dynamic.tB.so f12720ba;
    private boolean ex;
    private float oJ;
    private long tB;

    public ZYk(jFA jfa, com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar) {
        this.Pfn = jfa;
        this.f12720ba = soVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float x10 = motionEvent.getX();
                    float y10 = motionEvent.getY();
                    if (Math.abs(x10 - this.oJ) >= com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), 10.0f) || Math.abs(y10 - this.ZYk) >= com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), 10.0f)) {
                        this.ex = true;
                        this.Pfn.ba();
                    }
                }
            } else if (this.ex) {
                return false;
            } else {
                if (System.currentTimeMillis() - this.tB >= 1500) {
                    com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar = this.f12720ba;
                    if (soVar != null) {
                        soVar.oJ();
                    }
                }
                this.Pfn.ba();
            }
        } else {
            this.tB = System.currentTimeMillis();
            this.oJ = motionEvent.getX();
            this.ZYk = motionEvent.getY();
            this.Pfn.Pfn();
        }
        return true;
    }
}
