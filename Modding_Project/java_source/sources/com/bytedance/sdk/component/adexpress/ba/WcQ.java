package com.bytedance.sdk.component.adexpress.ba;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
/* loaded from: classes3.dex */
public class WcQ extends FrameLayout {
    private boolean Pfn;
    private ImageView ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private TextView f12652ba;
    private AnimatorSet ex;
    private Context oJ;
    private ex tB;

    public WcQ(@NonNull Context context) {
        super(context);
        this.Pfn = true;
        this.oJ = context;
        this.ex = new AnimatorSet();
        tB();
        ex();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.ba.WcQ.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) WcQ.this.ZYk.getLayoutParams();
                layoutParams.topMargin = ((int) ((WcQ.this.tB.getMeasuredHeight() / 2.0f) - com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(WcQ.this.getContext(), 5.0f))) + ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(WcQ.this.oJ, 20.0f));
                layoutParams.leftMargin = ((int) ((WcQ.this.tB.getMeasuredWidth() / 2.0f) - com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(WcQ.this.getContext(), 5.0f))) + ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(WcQ.this.oJ, 20.0f));
                layoutParams.bottomMargin = (int) (((-WcQ.this.tB.getMeasuredHeight()) / 2.0f) + com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(WcQ.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-WcQ.this.tB.getMeasuredWidth()) / 2.0f) + com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(WcQ.this.getContext(), 5.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                WcQ.this.ZYk.setLayoutParams(layoutParams);
            }
        });
    }

    public void setGuideText(String str) {
        this.f12652ba.setText(str);
    }

    public void setGuideTextColor(int i10) {
        this.f12652ba.setTextColor(i10);
    }

    private void ex() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.ZYk, "scaleX", 1.0f, 0.8f);
        ofFloat.setDuration(1000L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.ba.WcQ.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (WcQ.this.Pfn) {
                    WcQ.this.tB.oJ();
                    WcQ.this.tB.setAlpha(1.0f);
                } else {
                    WcQ.this.tB.ZYk();
                    WcQ.this.tB.setAlpha(0.0f);
                }
                WcQ wcQ = WcQ.this;
                wcQ.Pfn = !wcQ.Pfn;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(WcQ.this.ZYk, "alpha", 0.0f, 1.0f);
                ofFloat2.setDuration(200L);
                ofFloat2.setInterpolator(new LinearInterpolator());
                ofFloat2.start();
                WcQ.this.ZYk.setVisibility(0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.ZYk, "scaleY", 1.0f, 0.8f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        this.ex.playTogether(ofFloat, ofFloat2);
    }

    private void tB() {
        this.tB = new ex(this.oJ);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 80.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 80.0f));
        layoutParams.gravity = 8388659;
        layoutParams.topMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 20.0f);
        int oJ = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 20.0f);
        layoutParams.leftMargin = oJ;
        layoutParams.setMarginStart(oJ);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        addView(this.tB, layoutParams);
        this.tB.oJ();
        this.ZYk = new ImageView(this.oJ);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 80.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 80.0f));
        this.ZYk.setImageResource(com.bytedance.sdk.component.utils.cY.ex(this.oJ, "tt_splash_hand"));
        addView(this.ZYk, layoutParams2);
        TextView textView = new TextView(this.oJ);
        this.f12652ba = textView;
        textView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 10.0f);
        addView(this.f12652ba, layoutParams3);
    }

    public void ZYk() {
        AnimatorSet animatorSet = this.ex;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ex exVar = this.tB;
        if (exVar != null) {
            exVar.ZYk();
        }
    }

    public void oJ() {
        this.ex.start();
    }
}
