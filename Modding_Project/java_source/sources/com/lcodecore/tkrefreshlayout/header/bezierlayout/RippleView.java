package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
/* loaded from: classes5.dex */
public class RippleView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f25674a;

    /* renamed from: b  reason: collision with root package name */
    private int f25675b;

    /* renamed from: c  reason: collision with root package name */
    private c f25676c;

    /* renamed from: d  reason: collision with root package name */
    ValueAnimator f25677d;

    /* loaded from: classes5.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            RippleView.this.f25675b = ((Integer) valueAnimator.getAnimatedValue()).intValue() * 2;
            RippleView.this.invalidate();
        }
    }

    /* loaded from: classes5.dex */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (RippleView.this.f25676c != null) {
                RippleView.this.f25676c.a();
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface c {
        void a();
    }

    public RippleView(Context context) {
        this(context, null, 0);
    }

    private void c() {
        Paint paint = new Paint();
        this.f25674a = paint;
        paint.setAntiAlias(true);
        this.f25674a.setColor(-1);
        this.f25674a.setStyle(Paint.Style.FILL);
    }

    public void d() {
        setVisibility(0);
        if (this.f25677d == null) {
            int sqrt = (int) Math.sqrt(Math.pow(getHeight(), 2.0d) + Math.pow(getWidth(), 2.0d));
            ValueAnimator ofInt = ValueAnimator.ofInt(0, sqrt / 2);
            this.f25677d = ofInt;
            ofInt.setDuration(sqrt);
            this.f25677d.addUpdateListener(new a());
            this.f25677d.addListener(new b());
        }
        this.f25677d.start();
    }

    public void e() {
        ValueAnimator valueAnimator = this.f25677d;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f25677d.cancel();
        }
    }

    public int getR() {
        return this.f25675b;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f25677d;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f25675b, this.f25674a);
    }

    public void setR(int i10) {
        this.f25675b = i10;
    }

    public void setRippleColor(@ColorInt int i10) {
        Paint paint = this.f25674a;
        if (paint != null) {
            paint.setColor(i10);
        }
    }

    public void setRippleEndListener(c cVar) {
        this.f25676c = cVar;
    }

    public RippleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RippleView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        c();
    }
}
