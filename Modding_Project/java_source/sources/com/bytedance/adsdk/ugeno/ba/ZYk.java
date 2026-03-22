package com.bytedance.adsdk.ugeno.ba;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
/* loaded from: classes3.dex */
public class ZYk extends oJ<com.bytedance.adsdk.ugeno.ZYk.tB> {
    private com.bytedance.adsdk.ugeno.ex ex;

    public ZYk(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.ba.oJ
    public View kkU(int i10) {
        return ((com.bytedance.adsdk.ugeno.ZYk.tB) this.oJ.get(i10)).dLZ();
    }

    public void oJ(com.bytedance.adsdk.ugeno.ex exVar) {
        this.ex = exVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.adsdk.ugeno.ex exVar = this.ex;
        if (exVar != null) {
            exVar.cFZ();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bytedance.adsdk.ugeno.ex exVar = this.ex;
        if (exVar != null) {
            exVar.so();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        com.bytedance.adsdk.ugeno.ex exVar = this.ex;
        if (exVar != null) {
            exVar.ba();
        }
        super.onLayout(z10, i10, i11, i12, i13);
        com.bytedance.adsdk.ugeno.ex exVar2 = this.ex;
        if (exVar2 != null) {
            exVar2.oJ(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        com.bytedance.adsdk.ugeno.ex exVar = this.ex;
        if (exVar != null) {
            int[] oJ = exVar.oJ(i10, i11);
            super.onMeasure(oJ[0], oJ[1]);
        } else {
            super.onMeasure(i10, i11);
        }
        com.bytedance.adsdk.ugeno.ex exVar2 = this.ex;
        if (exVar2 != null) {
            exVar2.Pfn();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        com.bytedance.adsdk.ugeno.ex exVar = this.ex;
        if (exVar != null) {
            exVar.ZYk(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }
}
