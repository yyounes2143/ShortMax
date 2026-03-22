package com.bytedance.sdk.component.adexpress.dynamic.tB.oJ;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes3.dex */
public class so implements View.OnTouchListener {
    private float Pfn;
    private final boolean ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private float f12727ba;
    private float cFZ;
    private float ex;
    private final com.bytedance.sdk.component.adexpress.dynamic.tB.so oJ;
    private final int tB = 10;

    public so(com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar, boolean z10) {
        this.oJ = soVar;
        this.ZYk = z10;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar;
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar2;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                this.f12727ba = motionEvent.getX();
                this.cFZ = motionEvent.getY();
                new StringBuilder(", mEndY: ").append(this.cFZ);
                if (!this.ZYk && (soVar2 = this.oJ) != null) {
                    soVar2.oJ();
                } else {
                    float f10 = this.f12727ba - this.ex;
                    float f11 = this.cFZ - this.Pfn;
                    if (com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ(), Math.abs((float) Math.sqrt((f10 * f10) + (f11 * f11)))) > 10.0f && (soVar = this.oJ) != null) {
                        soVar.oJ();
                    }
                }
            }
        } else {
            this.ex = motionEvent.getX();
            this.Pfn = motionEvent.getY();
            new StringBuilder(", mStartY: ").append(this.Pfn);
        }
        return true;
    }
}
