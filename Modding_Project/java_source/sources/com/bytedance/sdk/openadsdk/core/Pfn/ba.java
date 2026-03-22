package com.bytedance.sdk.openadsdk.core.Pfn;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RotateDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class ba extends FrameLayout {
    private Drawable Pfn;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f13092ba;
    private ValueAnimator cFZ;
    private Drawable ex;
    private int oJ;

    /* renamed from: so  reason: collision with root package name */
    private boolean f13093so;
    private Drawable tB;

    public ba(Context context) {
        super(context);
        this.oJ = 100;
    }

    private void oJ() {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 10000);
        this.cFZ = ofInt;
        ofInt.setDuration(2000L);
        this.cFZ.setRepeatCount(-1);
        this.cFZ.setInterpolator(new LinearInterpolator());
        this.cFZ.setRepeatMode(1);
        this.cFZ.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.Pfn.ba.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ba.this.setProgress(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        this.cFZ.start();
        setMax(10000);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f13092ba = true;
        if (this.Pfn != null) {
            oJ();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f13092ba = false;
        ValueAnimator valueAnimator = this.cFZ;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.cFZ.removeAllUpdateListeners();
            this.cFZ = null;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 == 0) {
            if (this.f13093so) {
                this.f13093so = false;
                ValueAnimator valueAnimator = this.cFZ;
                if (valueAnimator != null) {
                    valueAnimator.resume();
                    return;
                } else {
                    oJ();
                    return;
                }
            }
            return;
        }
        ValueAnimator valueAnimator2 = this.cFZ;
        if (valueAnimator2 != null && !this.f13093so) {
            this.f13093so = true;
            valueAnimator2.pause();
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        this.Pfn = drawable;
        setProgressDrawable(drawable);
        if (this.f13092ba && this.cFZ == null) {
            oJ();
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(jFA.oJ(this, layoutParams));
    }

    public void setMax(int i10) {
        this.oJ = i10;
    }

    @Override // android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10, i11, i12, i13);
    }

    public void setProgress(int i10) {
        this.ZYk = i10;
        Drawable drawable = this.tB;
        if (drawable != null) {
            drawable.setLevel((int) ((i10 * 10000.0f) / this.oJ));
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        this.ex = drawable;
        setBackground(drawable);
        Drawable drawable2 = this.ex;
        if (drawable2 instanceof LayerDrawable) {
            int numberOfLayers = ((LayerDrawable) drawable2).getNumberOfLayers();
            for (int i10 = 0; i10 < numberOfLayers; i10++) {
                Drawable drawable3 = ((LayerDrawable) this.ex).getDrawable(i10);
                if ((drawable3 instanceof ScaleDrawable) || (drawable3 instanceof ClipDrawable)) {
                    this.tB = drawable3;
                }
            }
        }
        Drawable drawable4 = this.ex;
        if (drawable4 instanceof RotateDrawable) {
            this.tB = drawable4;
        }
    }

    public ba(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.oJ = 100;
    }
}
