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
public class eZI extends FrameLayout {
    private boolean Pfn;
    private ImageView ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private TextView f12655ba;
    private AnimatorSet ex;
    private Context oJ;
    private cY tB;

    public eZI(@NonNull Context context) {
        super(context);
        this.Pfn = true;
        this.oJ = context;
        this.ex = new AnimatorSet();
        tB();
        ex();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.ba.eZI.1
            @Override // java.lang.Runnable
            public void run() {
                int oJ = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(eZI.this.oJ, 50.0f);
                int oJ2 = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(eZI.this.oJ, 50.0f);
                if (eZI.this.tB.getMeasuredHeight() > 0) {
                    oJ = eZI.this.tB.getMeasuredHeight();
                }
                if (eZI.this.tB.getMeasuredWidth() > 0) {
                    oJ2 = eZI.this.tB.getMeasuredWidth();
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) eZI.this.ZYk.getLayoutParams();
                layoutParams.topMargin = ((int) ((oJ / 2.0f) - com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(eZI.this.getContext(), 5.0f))) + ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(eZI.this.oJ, 40.0f));
                layoutParams.leftMargin = ((int) ((oJ2 / 2.0f) - com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(eZI.this.getContext(), 5.0f))) + ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(eZI.this.oJ, 20.0f));
                layoutParams.bottomMargin = (int) (((-oJ) / 2.0f) + com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(eZI.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-oJ2) / 2.0f) + com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(eZI.this.getContext(), 5.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                eZI.this.ZYk.setLayoutParams(layoutParams);
            }
        });
    }

    public void setGuideText(String str) {
        this.f12655ba.setVisibility(0);
        this.f12655ba.setText(str);
    }

    public void setGuideTextColor(int i10) {
        this.f12655ba.setTextColor(i10);
    }

    private void ex() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.ZYk, "scaleX", 1.0f, 1.0f, 1.0f, 0.9f);
        ofFloat.setDuration(600L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.ba.eZI.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (eZI.this.Pfn) {
                    eZI.this.tB.oJ();
                }
                eZI ezi = eZI.this;
                ezi.Pfn = !ezi.Pfn;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(eZI.this.ZYk, "alpha", 0.0f, 1.0f);
                ofFloat2.setDuration(200L);
                ofFloat2.setInterpolator(new LinearInterpolator());
                ofFloat2.start();
                eZI.this.ZYk.setVisibility(0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.ZYk, "scaleY", 1.0f, 1.0f, 1.0f, 0.9f);
        ofFloat2.setDuration(600L);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        this.ex.playTogether(ofFloat, ofFloat2);
    }

    private void tB() {
        this.tB = new cY(this.oJ);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 50.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 50.0f));
        layoutParams.gravity = 8388659;
        layoutParams.topMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 40.0f);
        int oJ = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 20.0f);
        layoutParams.leftMargin = oJ;
        layoutParams.setMarginStart(oJ);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        addView(this.tB, layoutParams);
        this.ZYk = new ImageView(this.oJ);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 78.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 78.0f));
        this.ZYk.setImageResource(com.bytedance.sdk.component.utils.cY.ex(this.oJ, "tt_splash_hand"));
        addView(this.ZYk, layoutParams2);
        TextView textView = new TextView(this.oJ);
        this.f12655ba = textView;
        textView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 10.0f);
        addView(this.f12655ba, layoutParams3);
        this.f12655ba.setVisibility(8);
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
