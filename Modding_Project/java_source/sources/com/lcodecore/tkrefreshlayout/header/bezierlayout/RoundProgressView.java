package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
/* loaded from: classes5.dex */
public class RoundProgressView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f25684a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f25685b;

    /* renamed from: c  reason: collision with root package name */
    private float f25686c;

    /* renamed from: d  reason: collision with root package name */
    private int f25687d;

    /* renamed from: e  reason: collision with root package name */
    private int f25688e;

    /* renamed from: f  reason: collision with root package name */
    private int f25689f;

    /* renamed from: g  reason: collision with root package name */
    private int f25690g;

    /* renamed from: h  reason: collision with root package name */
    private int f25691h;

    /* renamed from: i  reason: collision with root package name */
    ValueAnimator f25692i;

    /* renamed from: j  reason: collision with root package name */
    private RectF f25693j;

    /* renamed from: k  reason: collision with root package name */
    private RectF f25694k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            RoundProgressView.this.f25689f = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            RoundProgressView.this.postInvalidate();
        }
    }

    public RoundProgressView(Context context) {
        this(context, null, 0);
    }

    private void b() {
        this.f25684a = new Paint();
        Paint paint = new Paint();
        this.f25685b = paint;
        paint.setColor(-1);
        this.f25685b.setAntiAlias(true);
        this.f25684a.setAntiAlias(true);
        this.f25684a.setColor(Color.rgb(114, 114, 114));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 360);
        this.f25692i = ofInt;
        ofInt.setDuration(720L);
        this.f25692i.addUpdateListener(new a());
        this.f25692i.setRepeatCount(-1);
        this.f25692i.setInterpolator(new AccelerateDecelerateInterpolator());
    }

    public void c() {
        ValueAnimator valueAnimator = this.f25692i;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    public void d() {
        ValueAnimator valueAnimator = this.f25692i;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f25692i.cancel();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f25692i;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = getMeasuredWidth() / this.f25687d;
        Paint paint = this.f25684a;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f25686c, this.f25684a);
        canvas.save();
        Paint paint2 = this.f25684a;
        Paint.Style style2 = Paint.Style.STROKE;
        paint2.setStyle(style2);
        this.f25684a.setStrokeWidth(6.0f);
        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f25686c + 15.0f, this.f25684a);
        canvas.restore();
        this.f25685b.setStyle(style);
        if (this.f25693j == null) {
            this.f25693j = new RectF();
        }
        this.f25693j.set((getMeasuredWidth() / 2) - this.f25686c, (getMeasuredHeight() / 2) - this.f25686c, (getMeasuredWidth() / 2) + this.f25686c, (getMeasuredHeight() / 2) + this.f25686c);
        canvas.drawArc(this.f25693j, this.f25688e, this.f25689f, true, this.f25685b);
        canvas.save();
        this.f25685b.setStrokeWidth(6.0f);
        this.f25685b.setStyle(style2);
        if (this.f25694k == null) {
            this.f25694k = new RectF();
        }
        this.f25694k.set(((getMeasuredWidth() / 2) - this.f25686c) - this.f25690g, ((getMeasuredHeight() / 2) - this.f25686c) - this.f25690g, (getMeasuredWidth() / 2) + this.f25686c + this.f25690g, (getMeasuredHeight() / 2) + this.f25686c + this.f25690g);
        canvas.drawArc(this.f25694k, this.f25688e, this.f25689f, false, this.f25685b);
        canvas.restore();
    }

    public void setCir_x(int i10) {
        this.f25691h = i10;
    }

    public RoundProgressView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundProgressView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f25686c = 40.0f;
        this.f25687d = 7;
        this.f25688e = 270;
        this.f25689f = 0;
        this.f25690g = 15;
        b();
    }
}
