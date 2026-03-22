package com.lcodecore.tkrefreshlayout.header;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import cc.c;
import cc.f;
/* loaded from: classes5.dex */
public class GoogleDotView extends View implements cc.b {

    /* renamed from: a  reason: collision with root package name */
    private Paint f25644a;

    /* renamed from: b  reason: collision with root package name */
    private float f25645b;

    /* renamed from: c  reason: collision with root package name */
    private int f25646c;

    /* renamed from: d  reason: collision with root package name */
    private int f25647d;

    /* renamed from: e  reason: collision with root package name */
    float f25648e;

    /* renamed from: f  reason: collision with root package name */
    float f25649f;

    /* renamed from: g  reason: collision with root package name */
    boolean f25650g;

    /* renamed from: h  reason: collision with root package name */
    ValueAnimator f25651h;

    /* renamed from: i  reason: collision with root package name */
    ValueAnimator f25652i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            GoogleDotView.this.f25648e = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            GoogleDotView.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            GoogleDotView.this.f25649f = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        }
    }

    public GoogleDotView(Context context) {
        this(context, null, 0);
    }

    private void e() {
        this.f25645b = fc.a.a(getContext(), 4.0f);
        Paint paint = new Paint();
        this.f25644a = paint;
        paint.setAntiAlias(true);
        this.f25644a.setColor(Color.rgb(114, 114, 114));
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 1.2f, 1.0f, 0.8f);
        this.f25651h = ofFloat;
        ofFloat.setDuration(800L);
        this.f25651h.setInterpolator(new DecelerateInterpolator());
        this.f25651h.addUpdateListener(new a());
        this.f25651h.setRepeatCount(-1);
        this.f25651h.setRepeatMode(2);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.8f, 1.0f, 1.2f);
        this.f25652i = ofFloat2;
        ofFloat2.setDuration(800L);
        this.f25652i.setInterpolator(new DecelerateInterpolator());
        this.f25652i.addUpdateListener(new b());
        this.f25652i.setRepeatCount(-1);
        this.f25652i.setRepeatMode(2);
    }

    @Override // cc.b
    public void a(float f10, float f11) {
        this.f25650g = true;
        this.f25651h.start();
        this.f25652i.start();
    }

    @Override // cc.b
    public void b(float f10, float f11, float f12) {
        float f13 = (f10 / 2.0f) + 1.0f;
        setScaleX(f13);
        setScaleY(f13);
        if (f10 < 1.0f) {
            this.f25650g = false;
            if (this.f25651h.isRunning()) {
                this.f25651h.cancel();
                invalidate();
            }
            if (this.f25652i.isRunning()) {
                this.f25652i.cancel();
            }
        }
    }

    @Override // cc.b
    public void c(c cVar) {
        cVar.a();
    }

    @Override // cc.b
    public void d(float f10, float f11, float f12) {
        float f13 = (f10 / 2.0f) + 1.0f;
        setScaleX(f13);
        setScaleY(f13);
        this.f25650g = false;
        if (this.f25651h.isRunning()) {
            this.f25651h.cancel();
            invalidate();
        }
        if (this.f25652i.isRunning()) {
            this.f25652i.cancel();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f25651h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f25652i;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = (getMeasuredWidth() / this.f25646c) - 10;
        for (int i10 = 0; i10 < this.f25646c; i10++) {
            if (this.f25650g) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 == 4) {
                                    this.f25644a.setAlpha(105);
                                    this.f25644a.setColor(getResources().getColor(f.f3431d));
                                    canvas.drawCircle((getMeasuredWidth() / 2) + (this.f25647d * 2) + (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f25645b * this.f25649f, this.f25644a);
                                }
                            } else {
                                this.f25644a.setAlpha(145);
                                this.f25644a.setColor(getResources().getColor(f.f3430c));
                                canvas.drawCircle((getMeasuredWidth() / 2) + this.f25647d + ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f25645b * this.f25649f, this.f25644a);
                            }
                        } else {
                            this.f25644a.setAlpha(255);
                            this.f25644a.setColor(getResources().getColor(f.f3428a));
                            canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f25645b * this.f25648e, this.f25644a);
                        }
                    } else {
                        this.f25644a.setAlpha(145);
                        this.f25644a.setColor(getResources().getColor(f.f3429b));
                        canvas.drawCircle(((getMeasuredWidth() / 2) - this.f25647d) - ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f25645b * this.f25649f, this.f25644a);
                    }
                } else {
                    this.f25644a.setAlpha(105);
                    this.f25644a.setColor(getResources().getColor(f.f3431d));
                    canvas.drawCircle(((getMeasuredWidth() / 2) - (this.f25647d * 2)) - (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f25645b * this.f25649f, this.f25644a);
                }
            } else if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 == 4) {
                                this.f25644a.setAlpha(105);
                                this.f25644a.setColor(getResources().getColor(f.f3431d));
                                canvas.drawCircle((getMeasuredWidth() / 2) + (this.f25647d * 2) + (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f25645b, this.f25644a);
                            }
                        } else {
                            this.f25644a.setAlpha(145);
                            this.f25644a.setColor(getResources().getColor(f.f3430c));
                            canvas.drawCircle((getMeasuredWidth() / 2) + this.f25647d + ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f25645b, this.f25644a);
                        }
                    } else {
                        this.f25644a.setAlpha(255);
                        this.f25644a.setColor(getResources().getColor(f.f3428a));
                        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f25645b, this.f25644a);
                    }
                } else {
                    this.f25644a.setAlpha(145);
                    this.f25644a.setColor(getResources().getColor(f.f3429b));
                    canvas.drawCircle(((getMeasuredWidth() / 2) - this.f25647d) - ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f25645b, this.f25644a);
                }
            } else {
                this.f25644a.setAlpha(105);
                this.f25644a.setColor(getResources().getColor(f.f3431d));
                canvas.drawCircle(((getMeasuredWidth() / 2) - (this.f25647d * 2)) - (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f25645b, this.f25644a);
            }
        }
    }

    @Override // cc.b
    public void reset() {
        this.f25650g = false;
        if (this.f25651h.isRunning()) {
            this.f25651h.cancel();
        }
        if (this.f25652i.isRunning()) {
            this.f25652i.cancel();
        }
        invalidate();
    }

    public void setCir_x(int i10) {
        this.f25647d = i10;
    }

    public GoogleDotView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GoogleDotView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f25646c = 5;
        this.f25650g = false;
        e();
    }

    @Override // cc.b
    public View getView() {
        return this;
    }
}
