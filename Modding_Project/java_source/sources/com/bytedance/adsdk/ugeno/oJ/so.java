package com.bytedance.adsdk.ugeno.oJ;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
/* loaded from: classes3.dex */
public class so implements cFZ {
    private float Pfn;
    private float ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private float f11709ba;
    private float ex;
    private View oJ;
    private float tB;

    public so(View view) {
        this.oJ = view;
    }

    public void Pfn(float f10) {
        this.f11709ba = f10;
        this.oJ.postInvalidate();
    }

    public void ZYk(float f10) {
        View view = this.oJ;
        if (view == null) {
            return;
        }
        this.tB = f10;
        view.postInvalidate();
    }

    public void ex(float f10) {
        this.Pfn = f10;
        this.oJ.postInvalidate();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getRipple() {
        return this.tB;
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getRubIn() {
        return this.f11709ba;
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getShine() {
        return this.ex;
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getStretch() {
        return this.Pfn;
    }

    public void oJ(float f10) {
        View view = this.oJ;
        if (view == null) {
            return;
        }
        this.ZYk = f10;
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setCornerRadius(f10);
        }
    }

    public void tB(float f10) {
        View view = this.oJ;
        if (view == null) {
            return;
        }
        this.ex = f10;
        view.postInvalidate();
    }

    public float oJ() {
        return this.ZYk;
    }

    public void oJ(int i10) {
        View view = this.oJ;
        if (view == null) {
            return;
        }
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setColor(i10);
        } else if (background instanceof ColorDrawable) {
            ((ColorDrawable) background.mutate()).setColor(i10);
        }
    }
}
