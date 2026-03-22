package com.bytedance.sdk.component.adexpress.ba;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
/* loaded from: classes3.dex */
public class awB extends FrameLayout {
    private boolean Pfn;
    private ImageView ZYk;
    private AnimatorSet ex;
    private Context oJ;
    private cY tB;

    public awB(@NonNull Context context) {
        super(context);
        this.Pfn = true;
        this.oJ = context;
        this.ex = new AnimatorSet();
        tB();
        ex();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.ba.awB.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) awB.this.ZYk.getLayoutParams();
                layoutParams.topMargin = (int) ((awB.this.tB.getMeasuredHeight() / 2.0f) - com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(awB.this.getContext(), 5.0f));
                layoutParams.leftMargin = (int) ((awB.this.tB.getMeasuredWidth() / 2.0f) - com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(awB.this.getContext(), 5.0f));
                layoutParams.bottomMargin = (int) (((-awB.this.tB.getMeasuredHeight()) / 2.0f) + com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(awB.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-awB.this.tB.getMeasuredWidth()) / 2.0f) + com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(awB.this.getContext(), 5.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                awB.this.ZYk.setLayoutParams(layoutParams);
            }
        });
    }

    private void ex() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.ZYk, "scaleX", 1.0f, 0.9f);
        ofFloat.setDuration(800L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.ba.awB.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (awB.this.Pfn) {
                    awB.this.tB.oJ();
                }
                awB awb = awB.this;
                awb.Pfn = !awb.Pfn;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(awB.this.ZYk, "alpha", 0.0f, 1.0f);
                ofFloat2.setDuration(200L);
                ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
                ofFloat2.start();
                awB.this.ZYk.setVisibility(0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.ZYk, "scaleY", 1.0f, 0.9f);
        ofFloat2.setDuration(800L);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
        this.ex.playTogether(ofFloat, ofFloat2);
    }

    private void tB() {
        this.tB = new cY(this.oJ);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 40.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 40.0f));
        layoutParams.gravity = 8388627;
        addView(this.tB, layoutParams);
        this.ZYk = new ImageView(this.oJ);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 62.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 62.0f));
        layoutParams2.gravity = 16;
        this.ZYk.setImageResource(com.bytedance.sdk.component.utils.cY.ex(this.oJ, "tt_splash_hand"));
        addView(this.ZYk, layoutParams2);
    }

    public void ZYk() {
        AnimatorSet animatorSet = this.ex;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        cY cYVar = this.tB;
        if (cYVar != null) {
            cYVar.ZYk();
        }
        ImageView imageView = this.ZYk;
        if (imageView != null) {
            imageView.clearAnimation();
        }
    }

    public void oJ() {
        this.ex.start();
    }
}
