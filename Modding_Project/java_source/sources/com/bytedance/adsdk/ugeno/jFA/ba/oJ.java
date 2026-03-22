package com.bytedance.adsdk.ugeno.jFA.ba;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.TextView;
import com.bytedance.adsdk.ugeno.core.IAnimation;
import com.bytedance.adsdk.ugeno.ex;
import com.bytedance.adsdk.ugeno.oJ.cFZ;
import com.bytedance.adsdk.ugeno.oJ.so;
/* loaded from: classes3.dex */
public class oJ extends TextView implements IAnimation, cFZ {
    private float ZYk;
    private ex oJ;
    private so tB;

    public oJ(Context context) {
        super(context);
        this.tB = new so(this);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.ZYk(canvas);
        }
    }

    public float getBorderRadius() {
        return this.tB.oJ();
    }

    @Override // com.bytedance.adsdk.ugeno.core.IAnimation, com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getRipple() {
        return this.ZYk;
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getRubIn() {
        return this.tB.getRubIn();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getShine() {
        return this.tB.getShine();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getStretch() {
        return this.tB.getStretch();
    }

    public void oJ(ex exVar) {
        this.oJ = exVar;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.cFZ();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.so();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.oJ(canvas, this);
            this.oJ.oJ(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.oJ(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        ex exVar = this.oJ;
        if (exVar != null) {
            int[] oJ = exVar.oJ(i10, i11);
            super.onMeasure(oJ[0], oJ[1]);
            return;
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.ZYk(i10, i11, i12, i12);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        this.tB.oJ(i10);
    }

    public void setBorderRadius(float f10) {
        so soVar = this.tB;
        if (soVar != null) {
            soVar.oJ(f10);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.IAnimation
    public void setRipple(float f10) {
        this.ZYk = f10;
        so soVar = this.tB;
        if (soVar != null) {
            soVar.ZYk(f10);
        }
        postInvalidate();
    }

    public void setRubIn(float f10) {
        so soVar = this.tB;
        if (soVar != null) {
            soVar.Pfn(f10);
        }
    }

    public void setShine(float f10) {
        so soVar = this.tB;
        if (soVar != null) {
            soVar.tB(f10);
        }
    }

    public void setStretch(float f10) {
        so soVar = this.tB;
        if (soVar != null) {
            soVar.ex(f10);
        }
    }
}
