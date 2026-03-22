package com.bytedance.sdk.component.adexpress.ba;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
/* loaded from: classes3.dex */
public class si extends View {
    private ValueAnimator Pfn;
    private Paint ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f12666ba;
    private boolean cFZ;
    private float ex;
    private Context oJ;
    private RectF tB;

    public si(Context context) {
        super(context);
        this.f12666ba = 1500;
        this.oJ = context;
        Paint paint = new Paint();
        this.ZYk = paint;
        paint.setAntiAlias(true);
        this.ZYk.setStyle(Paint.Style.STROKE);
        this.ZYk.setStrokeWidth(10.0f);
        this.ZYk.setColor(Color.parseColor("#80FFFFFF"));
        this.tB = new RectF();
    }

    public void ZYk() {
        ValueAnimator valueAnimator = this.Pfn;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.cFZ) {
            return;
        }
        canvas.drawArc(this.tB, 270.0f, this.ex, false, this.ZYk);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.tB.set(5.0f, 5.0f, i10 - 5, i11 - 5);
    }

    public void setDuration(int i10) {
        this.f12666ba = i10;
    }

    public void tB() {
        this.cFZ = true;
        invalidate();
    }

    public void oJ() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
        this.Pfn = ofFloat;
        ofFloat.setDuration(this.f12666ba);
        this.Pfn.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.ba.si.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                si.this.ex = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                si.this.requestLayout();
            }
        });
        this.Pfn.start();
    }
}
