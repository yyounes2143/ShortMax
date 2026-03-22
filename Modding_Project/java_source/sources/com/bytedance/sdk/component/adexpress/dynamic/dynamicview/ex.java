package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class ex extends ba {
    private int QSm;
    ObjectAnimator ZYk;
    ObjectAnimator oJ;

    /* renamed from: oq  reason: collision with root package name */
    private Runnable f12682oq;

    public ex(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        this.QSm = 0;
        this.f12682oq = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ex.1
            @Override // java.lang.Runnable
            public void run() {
                ex.this.oJ();
            }
        };
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.XAo
    public void ZYk() {
        removeCallbacks(this.f12682oq);
        ObjectAnimator objectAnimator = this.oJ;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.oJ.cancel();
        }
        ObjectAnimator objectAnimator2 = this.ZYk;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllUpdateListeners();
            this.ZYk.cancel();
        }
        super.ZYk();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            layoutParams.topMargin = (this.f12680so - layoutParams.height) / 2;
            childAt.setLayoutParams(layoutParams);
            if (i10 != 0) {
                childAt.setVisibility(8);
            }
        }
        postDelayed(this.f12682oq, 2500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ() {
        final View childAt = getChildAt(this.QSm);
        final View childAt2 = getChildAt((this.QSm + 1) % getChildCount());
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(childAt, "translationY", 0.0f, (-(this.f12680so + getChildAt(this.QSm).getHeight())) / 2);
        this.oJ = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.oJ.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ex.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                childAt.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(childAt2, "translationY", (this.f12680so + childAt2.getHeight()) / 2, 0.0f);
        this.ZYk = ofFloat2;
        ofFloat2.setInterpolator(new LinearInterpolator());
        this.ZYk.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ex.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                childAt2.setVisibility(0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        });
        this.oJ.setDuration(500L);
        this.ZYk.setDuration(500L);
        this.oJ.start();
        this.ZYk.start();
        int i10 = this.QSm + 1;
        this.QSm = i10;
        this.QSm = i10 % getChildCount();
        postDelayed(this.f12682oq, 2000L);
    }
}
