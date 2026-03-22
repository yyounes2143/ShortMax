package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import cc.h;
import cc.i;
import com.applovin.sdk.AppLovinErrorCodes;
import com.lcodecore.tkrefreshlayout.header.bezierlayout.RippleView;
/* loaded from: classes5.dex */
public class BezierLayout extends FrameLayout implements cc.b {

    /* renamed from: a  reason: collision with root package name */
    View f25661a;

    /* renamed from: b  reason: collision with root package name */
    WaveView f25662b;

    /* renamed from: c  reason: collision with root package name */
    RippleView f25663c;

    /* renamed from: d  reason: collision with root package name */
    RoundDotView f25664d;

    /* renamed from: e  reason: collision with root package name */
    RoundProgressView f25665e;

    /* renamed from: f  reason: collision with root package name */
    private ValueAnimator f25666f;

    /* renamed from: g  reason: collision with root package name */
    private ValueAnimator f25667g;

    /* loaded from: classes5.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BezierLayout.this.f25662b.setWaveHeight(((Integer) valueAnimator.getAnimatedValue()).intValue() / 2);
            BezierLayout.this.f25662b.invalidate();
        }
    }

    /* loaded from: classes5.dex */
    class b extends AnimatorListenerAdapter {

        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BezierLayout.this.f25665e.c();
            }
        }

        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            BezierLayout.this.f25664d.setVisibility(8);
            BezierLayout.this.f25665e.setVisibility(0);
            BezierLayout.this.f25665e.animate().scaleX(1.0f);
            BezierLayout.this.f25665e.animate().scaleY(1.0f);
            BezierLayout.this.f25665e.postDelayed(new a(), 200L);
        }
    }

    /* loaded from: classes5.dex */
    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BezierLayout.this.f25664d.setCir_x((int) ((-((Float) valueAnimator.getAnimatedValue()).floatValue()) * 40.0f));
            BezierLayout.this.f25664d.invalidate();
        }
    }

    /* loaded from: classes5.dex */
    class d implements RippleView.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ cc.c f25672a;

        d(cc.c cVar) {
            this.f25672a = cVar;
        }

        @Override // com.lcodecore.tkrefreshlayout.header.bezierlayout.RippleView.c
        public void a() {
            this.f25672a.a();
        }
    }

    public BezierLayout(Context context) {
        this(context, null);
    }

    private void e(AttributeSet attributeSet) {
        View inflate = LayoutInflater.from(getContext()).inflate(i.f3441a, (ViewGroup) null);
        this.f25661a = inflate;
        this.f25662b = (WaveView) inflate.findViewById(h.f3433a);
        this.f25663c = (RippleView) this.f25661a.findViewById(h.f3437e);
        this.f25664d = (RoundDotView) this.f25661a.findViewById(h.f3438f);
        RoundProgressView roundProgressView = (RoundProgressView) this.f25661a.findViewById(h.f3439g);
        this.f25665e = roundProgressView;
        roundProgressView.setVisibility(8);
        addView(this.f25661a);
    }

    @Override // cc.b
    public void a(float f10, float f11) {
        this.f25662b.setHeadHeight((int) f11);
        ValueAnimator ofInt = ValueAnimator.ofInt(this.f25662b.getWaveHeight(), 0, AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED, 0, -100, 0);
        this.f25666f = ofInt;
        ofInt.addUpdateListener(new a());
        this.f25666f.setInterpolator(new DecelerateInterpolator());
        this.f25666f.setDuration(800L);
        this.f25666f.start();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f25667g = ofFloat;
        ofFloat.addListener(new b());
        this.f25667g.addUpdateListener(new c());
        this.f25667g.setInterpolator(new DecelerateInterpolator());
        this.f25667g.setDuration(300L);
        this.f25667g.start();
    }

    @Override // cc.b
    public void b(float f10, float f11, float f12) {
        this.f25662b.setHeadHeight((int) (f12 * f(1.0f, f10)));
        this.f25662b.setWaveHeight((int) (f11 * Math.max(0.0f, f10 - 1.0f)));
        this.f25662b.invalidate();
        this.f25664d.setCir_x((int) (f(1.0f, f10) * 30.0f));
        this.f25664d.invalidate();
    }

    @Override // cc.b
    public void c(cc.c cVar) {
        this.f25665e.d();
        this.f25665e.animate().scaleX(0.0f);
        this.f25665e.animate().scaleY(0.0f);
        this.f25663c.setRippleEndListener(new d(cVar));
        this.f25663c.d();
    }

    @Override // cc.b
    public void d(float f10, float f11, float f12) {
        if (this.f25663c.getVisibility() == 0) {
            this.f25663c.setVisibility(8);
        }
        this.f25662b.setHeadHeight((int) (f12 * f(1.0f, f10)));
        this.f25662b.setWaveHeight((int) (f11 * Math.max(0.0f, f10 - 1.0f)));
        this.f25662b.invalidate();
        this.f25664d.setCir_x((int) (f(1.0f, f10) * 30.0f));
        this.f25664d.setVisibility(0);
        this.f25664d.invalidate();
        this.f25665e.setVisibility(8);
        this.f25665e.animate().scaleX(0.1f);
        this.f25665e.animate().scaleY(0.1f);
    }

    public float f(float f10, float f11) {
        float min = Math.min(f10, f11);
        float max = Math.max(f10, f11);
        if (0.0f > min) {
            min = 0.0f;
        }
        if (min < max) {
            return min;
        }
        return max;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f25666f;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f25667g;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    @Override // cc.b
    public void reset() {
        ValueAnimator valueAnimator = this.f25666f;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f25666f.cancel();
        }
        this.f25662b.setWaveHeight(0);
        ValueAnimator valueAnimator2 = this.f25667g;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.f25667g.cancel();
        }
        this.f25664d.setVisibility(0);
        this.f25665e.d();
        this.f25665e.setScaleX(0.0f);
        this.f25665e.setScaleY(0.0f);
        this.f25665e.setVisibility(8);
        this.f25663c.e();
        this.f25663c.setVisibility(8);
    }

    public void setRippleColor(@ColorInt int i10) {
        this.f25663c.setRippleColor(i10);
    }

    public void setWaveColor(@ColorInt int i10) {
        this.f25662b.setWaveColor(i10);
    }

    public BezierLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BezierLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        e(attributeSet);
    }

    @Override // cc.b
    public View getView() {
        return this;
    }
}
