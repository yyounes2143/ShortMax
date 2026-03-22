package com.lcodecore.tkrefreshlayout.header.progresslayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.core.view.ViewCompat;
import cc.b;
import cc.c;
/* loaded from: classes5.dex */
public class ProgressLayout extends FrameLayout implements b {

    /* renamed from: a  reason: collision with root package name */
    private int f25706a;

    /* renamed from: b  reason: collision with root package name */
    private int f25707b;

    /* renamed from: c  reason: collision with root package name */
    private CircleImageView f25708c;

    /* renamed from: d  reason: collision with root package name */
    private dc.a f25709d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f25710e;

    /* loaded from: classes5.dex */
    class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f25711a;

        a(c cVar) {
            this.f25711a = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ProgressLayout.this.reset();
            this.f25711a.a();
        }
    }

    public ProgressLayout(Context context) {
        this(context, null);
    }

    private void e() {
        this.f25708c = new CircleImageView(getContext(), -328966, 20.0f);
        dc.a aVar = new dc.a(getContext(), this);
        this.f25709d = aVar;
        aVar.k(-328966);
        this.f25708c.setImageDrawable(this.f25709d);
        this.f25708c.setVisibility(8);
        this.f25708c.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        addView(this.f25708c);
    }

    @Override // cc.b
    public void a(float f10, float f11) {
        this.f25708c.setVisibility(0);
        this.f25708c.getBackground().setAlpha(255);
        this.f25709d.setAlpha(255);
        ViewCompat.setScaleX(this.f25708c, 1.0f);
        ViewCompat.setScaleY(this.f25708c, 1.0f);
        this.f25709d.j(1.0f);
        this.f25709d.start();
    }

    @Override // cc.b
    public void b(float f10, float f11, float f12) {
        this.f25710e = false;
        if (f10 >= 1.0f) {
            ViewCompat.setScaleX(this.f25708c, 1.0f);
            ViewCompat.setScaleY(this.f25708c, 1.0f);
            return;
        }
        ViewCompat.setScaleX(this.f25708c, f10);
        ViewCompat.setScaleY(this.f25708c, f10);
    }

    @Override // cc.b
    public void c(c cVar) {
        this.f25708c.animate().scaleX(0.0f).scaleY(0.0f).alpha(0.0f).setListener(new a(cVar)).start();
    }

    @Override // cc.b
    public void d(float f10, float f11, float f12) {
        if (!this.f25710e) {
            this.f25710e = true;
            this.f25709d.setAlpha(76);
        }
        if (this.f25708c.getVisibility() != 0) {
            this.f25708c.setVisibility(0);
        }
        if (f10 >= 1.0f) {
            ViewCompat.setScaleX(this.f25708c, 1.0f);
            ViewCompat.setScaleY(this.f25708c, 1.0f);
        } else {
            ViewCompat.setScaleX(this.f25708c, f10);
            ViewCompat.setScaleY(this.f25708c, f10);
        }
        if (f10 <= 1.0f) {
            this.f25709d.setAlpha((int) ((179.0f * f10) + 76.0f));
        }
        float max = (((float) Math.max(f10 - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        this.f25709d.p(0.0f, Math.min(0.8f, max * 0.8f));
        this.f25709d.j(Math.min(1.0f, max));
        this.f25709d.m(((max * 0.4f) - 0.25f) * 0.5f);
    }

    @Override // cc.b
    public void reset() {
        this.f25708c.clearAnimation();
        this.f25709d.stop();
        this.f25708c.setVisibility(8);
        this.f25708c.getBackground().setAlpha(255);
        this.f25709d.setAlpha(255);
        ViewCompat.setScaleX(this.f25708c, 0.0f);
        ViewCompat.setScaleY(this.f25708c, 0.0f);
        ViewCompat.setAlpha(this.f25708c, 1.0f);
    }

    public void setColorSchemeColors(int... iArr) {
        this.f25709d.l(iArr);
    }

    public void setColorSchemeResources(@ColorRes int... iArr) {
        Resources resources = getResources();
        int[] iArr2 = new int[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr2[i10] = resources.getColor(iArr[i10]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setProgressBackgroundColorSchemeColor(@ColorInt int i10) {
        this.f25708c.setBackgroundColor(i10);
        this.f25709d.k(i10);
    }

    public void setProgressBackgroundColorSchemeResource(@ColorRes int i10) {
        setProgressBackgroundColorSchemeColor(getResources().getColor(i10));
    }

    public void setSize(int i10) {
        if (i10 != 0 && i10 != 1) {
            return;
        }
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        if (i10 == 0) {
            int i11 = (int) (displayMetrics.density * 56.0f);
            this.f25706a = i11;
            this.f25707b = i11;
        } else {
            int i12 = (int) (displayMetrics.density * 40.0f);
            this.f25706a = i12;
            this.f25707b = i12;
        }
        this.f25708c.setImageDrawable(null);
        this.f25709d.s(i10);
        this.f25708c.setImageDrawable(this.f25709d);
    }

    public ProgressLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProgressLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f25710e = false;
        float f10 = getResources().getDisplayMetrics().density;
        this.f25706a = (int) (f10 * 40.0f);
        this.f25707b = (int) (f10 * 40.0f);
        e();
        ViewCompat.setChildrenDrawingOrderEnabled(this, true);
    }

    @Override // cc.b
    public View getView() {
        return this;
    }
}
