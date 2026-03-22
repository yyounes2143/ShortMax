package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.content.Context;
import android.graphics.Canvas;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ;
/* loaded from: classes3.dex */
public class ZYk extends ImageView implements IAnimation {
    private float Pfn;
    private float ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private cFZ f12673ba;
    private float ex;
    tB oJ;
    private float tB;

    public ZYk(Context context) {
        super(context);
        this.oJ = new tB();
    }

    public cFZ getBrickNativeValue() {
        return this.f12673ba;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getMarqueeValue() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getRippleValue() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getShineValue() {
        return this.tB;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getStretchValue() {
        return this.Pfn;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        cFZ cfz;
        super.onDraw(canvas);
        this.oJ.oJ(canvas, this, this);
        if (getRippleValue() != 0.0f && (cfz = this.f12673ba) != null && cfz.ZYk() > 0) {
            ((ViewGroup) getParent()).setClipChildren(false);
            ((ViewGroup) getParent().getParent()).setClipChildren(false);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.oJ.oJ(this, i10, i11);
    }

    public void setBrickNativeValue(cFZ cfz) {
        this.f12673ba = cfz;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setMarqueeValue(float f10) {
        this.ex = f10;
        postInvalidate();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setRippleValue(float f10) {
        this.ZYk = f10;
        postInvalidate();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setShineValue(float f10) {
        this.tB = f10;
        postInvalidate();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setStretchValue(float f10) {
        this.Pfn = f10;
        this.oJ.oJ(this, f10);
    }
}
