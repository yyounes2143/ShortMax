package com.lcodecore.tkrefreshlayout.footer;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5.dex */
public class BallPulseView extends View implements cc.a {

    /* renamed from: a  reason: collision with root package name */
    private float f25635a;

    /* renamed from: b  reason: collision with root package name */
    private float[] f25636b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<ValueAnimator> f25637c;

    /* renamed from: d  reason: collision with root package name */
    private Map<ValueAnimator, ValueAnimator.AnimatorUpdateListener> f25638d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f25639e;

    /* renamed from: f  reason: collision with root package name */
    private int f25640f;

    /* renamed from: g  reason: collision with root package name */
    private int f25641g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f25642a;

        a(int i10) {
            this.f25642a = i10;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BallPulseView.this.f25636b[this.f25642a] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BallPulseView.this.postInvalidate();
        }
    }

    public BallPulseView(Context context) {
        this(context, null);
    }

    private void e() {
        this.f25637c = new ArrayList<>();
        int[] iArr = {120, 240, 360};
        for (int i10 = 0; i10 < 3; i10++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
            ofFloat.setDuration(750L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr[i10]);
            this.f25638d.put(ofFloat, new a(i10));
            this.f25637c.add(ofFloat);
        }
    }

    private boolean f() {
        Iterator<ValueAnimator> it = this.f25637c.iterator();
        if (it.hasNext()) {
            return it.next().isStarted();
        }
        return false;
    }

    @Override // cc.a
    public void a(float f10, float f11) {
        g();
    }

    @Override // cc.a
    public void b(float f10, float f11, float f12) {
        h();
    }

    @Override // cc.a
    public void c(float f10, float f11, float f12) {
        h();
    }

    public void g() {
        if (this.f25637c == null) {
            e();
        }
        if (this.f25637c == null || f()) {
            return;
        }
        for (int i10 = 0; i10 < this.f25637c.size(); i10++) {
            ValueAnimator valueAnimator = this.f25637c.get(i10);
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f25638d.get(valueAnimator);
            if (animatorUpdateListener != null) {
                valueAnimator.addUpdateListener(animatorUpdateListener);
            }
            valueAnimator.start();
        }
        setIndicatorColor(this.f25641g);
    }

    public void h() {
        ArrayList<ValueAnimator> arrayList = this.f25637c;
        if (arrayList != null) {
            Iterator<ValueAnimator> it = arrayList.iterator();
            while (it.hasNext()) {
                ValueAnimator next = it.next();
                if (next != null && next.isStarted()) {
                    next.removeAllUpdateListeners();
                    next.end();
                }
            }
        }
        setIndicatorColor(this.f25640f);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f25637c != null) {
            for (int i10 = 0; i10 < this.f25637c.size(); i10++) {
                this.f25637c.get(i10).cancel();
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float min = (Math.min(getWidth(), getHeight()) - (this.f25635a * 2.0f)) / 6.0f;
        float f10 = 2.0f * min;
        float width = (getWidth() / 2) - (this.f25635a + f10);
        float height = getHeight() / 2;
        for (int i10 = 0; i10 < 3; i10++) {
            canvas.save();
            float f11 = i10;
            canvas.translate((f10 * f11) + width + (this.f25635a * f11), height);
            float f12 = this.f25636b[i10];
            canvas.scale(f12, f12);
            canvas.drawCircle(0.0f, 0.0f, min, this.f25639e);
            canvas.restore();
        }
    }

    @Override // cc.a
    public void onFinish() {
        h();
    }

    @Override // cc.a
    public void reset() {
        h();
    }

    public void setAnimatingColor(@ColorInt int i10) {
        this.f25641g = i10;
    }

    public void setIndicatorColor(int i10) {
        this.f25639e.setColor(i10);
    }

    public void setNormalColor(@ColorInt int i10) {
        this.f25640f = i10;
    }

    public BallPulseView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BallPulseView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f25636b = new float[]{1.0f, 1.0f, 1.0f};
        this.f25638d = new HashMap();
        this.f25640f = -1118482;
        this.f25641g = -1615546;
        int a10 = fc.a.a(context, 50.0f);
        setLayoutParams(new FrameLayout.LayoutParams(a10, a10, 17));
        this.f25635a = fc.a.a(context, 4.0f);
        Paint paint = new Paint();
        this.f25639e = paint;
        paint.setColor(-1);
        this.f25639e.setStyle(Paint.Style.FILL);
        this.f25639e.setAntiAlias(true);
    }

    @Override // cc.a
    public View getView() {
        return this;
    }
}
