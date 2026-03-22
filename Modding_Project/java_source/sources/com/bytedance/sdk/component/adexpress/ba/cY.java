package com.bytedance.sdk.component.adexpress.ba;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.PathInterpolator;
import androidx.core.view.ViewCompat;
/* loaded from: classes3.dex */
public class cY extends View {
    private static int tB = 50;
    private int ZYk;
    private ObjectAnimator ex;
    private Paint oJ;

    public cY(Context context) {
        this(context, null);
    }

    private void tB() {
        Paint paint = new Paint();
        this.oJ = paint;
        paint.setAntiAlias(true);
        this.oJ.setColor(Color.parseColor("#FFFFFFFF"));
        this.oJ.setStyle(Paint.Style.STROKE);
        this.oJ.setStrokeWidth(18.0f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "alpha", 1.0f, 0.0f);
        this.ex = ofFloat;
        ofFloat.setDuration(200L);
    }

    public void ZYk() {
        clearAnimation();
    }

    @Override // android.view.View
    public void invalidate() {
        if (hasWindowFocus()) {
            super.invalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.oJ.setShader(new LinearGradient(getMeasuredWidth() / 2, 0.0f, getMeasuredWidth() / 2, getMeasuredHeight(), -1, (int) ViewCompat.MEASURED_SIZE_MASK, Shader.TileMode.CLAMP));
        canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, this.ZYk, this.oJ);
    }

    public cY(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public cY(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.ZYk = 10;
        tB();
    }

    public void oJ() {
        int min = ((int) Math.min(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f)) - 18;
        tB = min;
        ValueAnimator ofInt = ValueAnimator.ofInt(10, min);
        ofInt.setInterpolator(new PathInterpolator(0.0f, 0.2f, 0.3f, 1.0f));
        ofInt.setDuration(800L);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.ba.cY.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                cY.this.ZYk = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                cY.this.invalidate();
            }
        });
        ofInt.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.ba.cY.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                cY.this.ex.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                cY.this.setVisibility(0);
                cY.this.setAlpha(1.0f);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        });
        ofInt.start();
    }
}
