package com.amazonaws.mobile.auth.core.signin.ui.buttons;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amazonaws.mobile.auth.core.signin.ui.DisplayUtils;
/* loaded from: classes2.dex */
public class SignInButton extends LinearLayout {

    /* renamed from: e  reason: collision with root package name */
    private static final int f5093e = DisplayUtils.a(8);

    /* renamed from: f  reason: collision with root package name */
    private static final int f5094f = DisplayUtils.a(8);

    /* renamed from: g  reason: collision with root package name */
    private static final int f5095g = DisplayUtils.a(2);

    /* renamed from: h  reason: collision with root package name */
    private static final int f5096h = DisplayUtils.a(8);

    /* renamed from: i  reason: collision with root package name */
    private static final float f5097i = DisplayUtils.a(50);

    /* renamed from: a  reason: collision with root package name */
    protected ImageView f5098a;

    /* renamed from: b  reason: collision with root package name */
    protected TextView f5099b;

    /* renamed from: c  reason: collision with root package name */
    protected Bitmap f5100c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f5101d;

    private boolean a(float f10, RectF rectF) {
        String charSequence;
        TextPaint textPaint = new TextPaint(this.f5099b.getPaint());
        textPaint.setTextSize(f10);
        TransformationMethod transformationMethod = this.f5099b.getTransformationMethod();
        if (transformationMethod == null) {
            charSequence = this.f5099b.getText().toString();
        } else {
            charSequence = transformationMethod.getTransformation(this.f5099b.getText(), this.f5099b).toString();
        }
        return rectF.contains(new RectF(0.0f, 0.0f, textPaint.measureText(charSequence), textPaint.getFontSpacing()));
    }

    private float b(float f10, float f11, RectF rectF) {
        float f12 = f11;
        float f13 = f10;
        while (f10 <= f12) {
            float f14 = (f10 + f12) / 2.0f;
            if (a(f14, rectF)) {
                f10 = f14 + 0.5f;
                f13 = f14;
            } else {
                f12 = f14 - 0.5f;
            }
        }
        return f13;
    }

    private void c() {
        if (getMeasuredWidth() != 0 && !this.f5101d) {
            float applyDimension = TypedValue.applyDimension(2, 8.0f, getResources().getDisplayMetrics());
            RectF rectF = new RectF();
            rectF.right = (this.f5099b.getMeasuredWidth() - this.f5099b.getCompoundPaddingLeft()) - this.f5099b.getCompoundPaddingRight();
            rectF.bottom = (this.f5099b.getMeasuredHeight() - this.f5099b.getCompoundPaddingBottom()) - this.f5099b.getCompoundPaddingTop();
            this.f5099b.setTextSize(0, b(applyDimension, f5097i, rectF));
        }
    }

    private void d() {
        if (this.f5101d) {
            this.f5099b.setVisibility(8);
            setGravity(17);
            return;
        }
        this.f5099b.setVisibility(0);
        setGravity(16);
    }

    private Drawable getBackgroundStatesDrawable() {
        new StateListDrawable();
        throw null;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        ViewGroup.LayoutParams layoutParams = this.f5098a.getLayoutParams();
        int measuredHeight = (int) (getMeasuredHeight() * 0.72d);
        if (measuredHeight > this.f5100c.getHeight()) {
            measuredHeight = this.f5100c.getHeight();
        }
        layoutParams.height = measuredHeight;
        layoutParams.width = measuredHeight;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 != i12 || i11 != i13) {
            c();
        }
    }

    public void setButtonText(String str) {
        this.f5099b.setText(str);
        c();
    }

    public void setSmallStyle(boolean z10) {
        this.f5101d = z10;
        d();
    }

    public void setButtonText(int i10) {
        this.f5099b.setText(i10);
        c();
    }
}
