package com.bytedance.sdk.component.adexpress.ba;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.view.animation.LinearInterpolator;
/* loaded from: classes3.dex */
public class Ry extends View {
    private Paint Pfn;
    private float ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private long f12650ba;
    private float cFZ;
    private ValueAnimator ex;
    private Animator.AnimatorListener jFA;
    private int kkU;
    private float oJ;

    /* renamed from: so  reason: collision with root package name */
    private float f12651so;
    private ValueAnimator tB;

    public Ry(Context context, int i10) {
        super(context);
        this.f12650ba = 300L;
        this.cFZ = 0.0f;
        this.kkU = i10;
        oJ();
    }

    public void ZYk() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, this.f12651so);
        this.tB = ofFloat;
        ofFloat.setDuration(this.f12650ba);
        this.tB.setInterpolator(new LinearInterpolator());
        this.tB.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.ba.Ry.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Ry.this.cFZ = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                Ry.this.invalidate();
            }
        });
        this.tB.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.oJ, this.ZYk, this.cFZ, this.Pfn);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.oJ = i10 / 2.0f;
        this.ZYk = i11 / 2.0f;
        this.f12651so = (float) (Math.hypot(i10, i11) / 2.0d);
    }

    public void setAnimationListener(Animator.AnimatorListener animatorListener) {
        this.jFA = animatorListener;
    }

    public void tB() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f12651so, 0.0f);
        this.ex = ofFloat;
        ofFloat.setDuration(this.f12650ba);
        this.ex.setInterpolator(new LinearInterpolator());
        this.ex.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.ba.Ry.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Ry.this.cFZ = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                Ry.this.invalidate();
            }
        });
        Animator.AnimatorListener animatorListener = this.jFA;
        if (animatorListener != null) {
            this.ex.addListener(animatorListener);
        }
        this.ex.start();
    }

    public void oJ() {
        Paint paint = new Paint(1);
        this.Pfn = paint;
        paint.setStyle(Paint.Style.FILL);
        this.Pfn.setColor(this.kkU);
    }
}
