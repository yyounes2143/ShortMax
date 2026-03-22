package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class tB extends ba {
    private Runnable Id;
    private int QSm;
    ObjectAnimator ZYk;
    ObjectAnimator oJ;

    /* renamed from: oq  reason: collision with root package name */
    private boolean f12684oq;

    public tB(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        this.QSm = 0;
        this.f12684oq = false;
        this.Id = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.tB.1
            @Override // java.lang.Runnable
            public void run() {
                tB.this.oJ();
            }
        };
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.XAo
    public void ZYk() {
        removeCallbacks(this.Id);
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
        postDelayed(this.Id, 2500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ() {
        final View childAt;
        final View childAt2 = getChildAt(this.QSm);
        if (childAt2 == null) {
            return;
        }
        int i10 = this.QSm;
        if (i10 == 0) {
            this.f12684oq = false;
        }
        if (i10 + 1 < getChildCount() && ((ViewGroup) getChildAt(this.QSm + 1)).getChildCount() > 0) {
            childAt = getChildAt(this.QSm + 1);
            this.oJ = ObjectAnimator.ofFloat(childAt2, "translationX", 0.0f, (-(this.cFZ + getChildAt(this.QSm).getWidth())) / 2);
        } else {
            this.f12684oq = true;
            childAt = getChildAt(this.QSm - 1);
            this.oJ = ObjectAnimator.ofFloat(childAt2, "translationX", 0.0f, (this.cFZ + getChildAt(this.QSm).getWidth()) / 2);
        }
        if (childAt == null) {
            return;
        }
        this.oJ.setInterpolator(new LinearInterpolator());
        this.oJ.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.tB.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                childAt2.setVisibility(8);
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
        if (this.f12684oq) {
            this.ZYk = ObjectAnimator.ofFloat(childAt, "translationX", (-(this.cFZ + childAt.getWidth())) / 2, 0.0f);
        } else {
            this.ZYk = ObjectAnimator.ofFloat(childAt, "translationX", (this.cFZ + childAt.getWidth()) / 2, 0.0f);
        }
        this.ZYk.setInterpolator(new LinearInterpolator());
        this.ZYk.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.tB.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                childAt.setVisibility(0);
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
        if (this.f12684oq) {
            this.QSm--;
        } else {
            this.QSm++;
        }
        postDelayed(this.Id, 2000L);
    }
}
