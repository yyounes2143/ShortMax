package com.bytedance.sdk.component.adexpress.ba;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
/* loaded from: classes3.dex */
public class oq extends FrameLayout {
    private TextView Pfn;
    private ImageView ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private AnimatorSet f12664ba;
    private AnimatorSet cFZ;
    private ImageView ex;
    private AnimatorSet jFA;
    private Context oJ;

    /* renamed from: so  reason: collision with root package name */
    private AnimatorSet f12665so;
    private ImageView tB;

    public oq(@NonNull Context context) {
        super(context);
        this.f12664ba = new AnimatorSet();
        this.cFZ = new AnimatorSet();
        this.f12665so = new AnimatorSet();
        this.jFA = new AnimatorSet();
        this.oJ = context;
        tB();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
    }

    public void setGuideText(String str) {
        this.Pfn.setText(str);
    }

    private void ex() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.ZYk, "alpha", 0.0f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.tB, "scaleX", 0.0f, 1.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.tB, "scaleY", 0.0f, 1.0f);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.ex, "alpha", 0.0f, 1.0f);
        this.f12665so.setDuration(300L);
        this.f12665so.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.ZYk, "translationX", 0.0f, com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), 90.0f));
        ofFloat5.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), 90.0f));
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.ba.oq.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) oq.this.ex.getLayoutParams();
                layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                oq.this.ex.setLayoutParams(layoutParams);
            }
        });
        ofInt.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.tB, "translationX", 0.0f, com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), 90.0f));
        ofFloat6.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        this.jFA.setDuration(1500L);
        this.jFA.playTogether(ofFloat5, ofInt, ofFloat6);
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.ZYk, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat8 = ObjectAnimator.ofFloat(this.ex, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat9 = ObjectAnimator.ofFloat(this.tB, "alpha", 1.0f, 0.0f);
        this.cFZ.setDuration(50L);
        this.cFZ.playTogether(ofFloat7, ofFloat8, ofFloat9);
        this.f12664ba.playSequentially(this.f12665so, this.jFA, this.cFZ);
    }

    private void tB() {
        ImageView imageView = new ImageView(this.oJ);
        this.ex = imageView;
        imageView.setBackgroundResource(com.bytedance.sdk.component.utils.cY.ex(this.oJ, "tt_splash_slide_right_bg"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, -2);
        layoutParams.gravity = 48;
        layoutParams.leftMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 30.0f);
        addView(this.ex, layoutParams);
        setClipChildren(false);
        setClipToPadding(false);
        ImageView imageView2 = new ImageView(this.oJ);
        this.tB = imageView2;
        imageView2.setImageResource(com.bytedance.sdk.component.utils.cY.ex(this.oJ, "tt_splash_slide_right_circle"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 50.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 50.0f));
        layoutParams2.gravity = 48;
        layoutParams2.leftMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 30.0f);
        addView(this.tB, layoutParams2);
        ImageView imageView3 = new ImageView(this.oJ);
        this.ZYk = imageView3;
        imageView3.setImageResource(com.bytedance.sdk.component.utils.cY.ex(this.oJ, "tt_splash_hand2"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 80.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 80.0f));
        layoutParams3.gravity = 48;
        layoutParams3.leftMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 30.0f);
        addView(this.ZYk, layoutParams3);
        TextView textView = new TextView(this.oJ);
        this.Pfn = textView;
        textView.setTextColor(-1);
        this.Pfn.setSingleLine();
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 80;
        addView(this.Pfn, layoutParams4);
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.ba.oq.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) oq.this.ZYk.getLayoutParams();
                layoutParams5.topMargin = (int) ((oq.this.tB.getMeasuredHeight() / 2.0f) - com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(oq.this.getContext(), 7.0f));
                int oJ = (-oq.this.tB.getMeasuredWidth()) + ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(oq.this.oJ, 30.0f));
                layoutParams5.leftMargin = oJ;
                layoutParams5.setMarginStart(oJ);
                layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                oq.this.ZYk.setLayoutParams(layoutParams5);
                FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) oq.this.ex.getLayoutParams();
                layoutParams6.topMargin = (int) ((oq.this.tB.getMeasuredHeight() / 2.0f) - com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(oq.this.getContext(), 5.0f));
                layoutParams6.leftMargin = (int) ((oq.this.tB.getMeasuredWidth() / 2.0f) + ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(oq.this.oJ, 30.0f)));
                layoutParams5.setMarginStart(layoutParams5.leftMargin);
                layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                oq.this.ex.setLayoutParams(layoutParams6);
            }
        });
    }

    public void ZYk() {
        try {
            AnimatorSet animatorSet = this.f12664ba;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.f12665so;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.jFA;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.cFZ;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Throwable unused) {
        }
    }

    public void oJ() {
        ex();
        this.f12664ba.start();
        this.f12664ba.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.adexpress.ba.oq.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                oq.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.ba.oq.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        oq.this.f12664ba.start();
                    }
                }, 200L);
            }
        });
    }
}
