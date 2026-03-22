package com.bytedance.sdk.component.adexpress.dynamic.tB.oJ;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes3.dex */
public class tB implements View.OnTouchListener {
    private boolean Pfn;
    private float ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.dynamic.tB.so f12728ba;
    private int cFZ;
    private float ex;
    private boolean jFA;
    private float oJ;

    /* renamed from: so  reason: collision with root package name */
    private boolean f12729so;
    private float tB;

    public tB(com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar) {
        this(soVar, 5);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar;
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar2;
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar3;
        if (this.jFA) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    this.ex = motionEvent.getX();
                    this.tB = motionEvent.getY();
                    if (Math.abs(this.ex - this.oJ) > 10.0f) {
                        this.Pfn = true;
                    }
                    if (Math.abs(this.ex - this.oJ) > 8.0f || Math.abs(this.tB - this.ZYk) > 8.0f) {
                        this.f12729so = false;
                    }
                    int ZYk = com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ(), Math.abs(this.ex - this.oJ));
                    if (this.ex > this.oJ && ZYk > this.cFZ && (soVar3 = this.f12728ba) != null) {
                        soVar3.oJ();
                        this.jFA = true;
                    }
                }
            } else if (!this.Pfn && !this.f12729so) {
                return false;
            } else {
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                int ZYk2 = com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ(), Math.abs(this.ex - this.oJ));
                if (this.ex > this.oJ && ZYk2 > this.cFZ && (soVar2 = this.f12728ba) != null) {
                    soVar2.oJ();
                    this.jFA = true;
                }
                float abs = Math.abs(x10 - this.oJ);
                float abs2 = Math.abs(y10 - this.ZYk);
                if ((abs < 8.0f || abs2 < 8.0f) && (soVar = this.f12728ba) != null) {
                    soVar.ZYk();
                    this.jFA = true;
                }
            }
        } else {
            this.oJ = motionEvent.getX();
            this.ZYk = motionEvent.getY();
        }
        return true;
    }

    public tB(com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar, int i10) {
        this.cFZ = 5;
        this.f12729so = true;
        this.f12728ba = soVar;
        if (i10 > 0) {
            this.cFZ = i10;
        }
    }
}
