package com.bytedance.sdk.component.adexpress.dynamic.tB.oJ;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes3.dex */
public class ex implements View.OnTouchListener {
    private boolean Pfn = true;
    private float ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private float f12723ba;
    private float cFZ;
    private boolean dLZ;
    private float ex;
    private com.bytedance.sdk.component.adexpress.dynamic.tB.so jFA;
    private int kkU;
    private float oJ;

    /* renamed from: so  reason: collision with root package name */
    private boolean f12724so;
    private float tB;

    public ex(com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar, int i10, boolean z10) {
        this.jFA = soVar;
        this.kkU = i10;
        this.dLZ = z10;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar;
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar2;
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar3;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float y10 = motionEvent.getY();
                    this.cFZ = y10;
                    if (Math.abs(y10 - this.f12723ba) > 10.0f) {
                        this.f12724so = true;
                    }
                    this.ex = motionEvent.getX();
                    this.tB = motionEvent.getY();
                    if (Math.abs(this.ex - this.oJ) > 8.0f || Math.abs(this.tB - this.ZYk) > 8.0f) {
                        this.Pfn = false;
                    }
                }
            } else if (!this.f12724so && !this.Pfn) {
                return false;
            } else {
                if (!this.dLZ && (soVar3 = this.jFA) != null) {
                    soVar3.oJ();
                } else {
                    int ZYk = com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ(), Math.abs(this.cFZ - this.f12723ba));
                    if (this.cFZ - this.f12723ba < 0.0f && ZYk > this.kkU && (soVar2 = this.jFA) != null) {
                        soVar2.oJ();
                    } else if (this.Pfn && (soVar = this.jFA) != null) {
                        soVar.oJ();
                    }
                }
            }
        } else {
            this.oJ = motionEvent.getX();
            this.ZYk = motionEvent.getY();
            this.f12723ba = motionEvent.getY();
            this.Pfn = true;
        }
        return true;
    }
}
