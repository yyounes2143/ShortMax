package com.bytedance.sdk.component.adexpress.ba;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
/* loaded from: classes3.dex */
public class ZYk extends FrameLayout {
    private View Pfn;
    private ObjectAnimator ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private View f12653ba;
    private ImageView cFZ;
    private View ex;
    private int jFA;
    private Context kkU;
    private AnimatorSet oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f12654so;
    private boolean tB;

    public ZYk(Context context, int i10, int i11) {
        super(context);
        this.tB = false;
        this.oJ = new AnimatorSet();
        this.f12654so = i10;
        this.jFA = i11;
        this.kkU = context;
        tB();
        ex();
    }

    private void ex() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.ex, "scaleX", 1.0f, 2.0f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.ex, "scaleY", 1.0f, 2.0f, 1.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.Pfn, "scaleX", 1.0f, 2.5f, 1.0f);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.Pfn, "scaleY", 1.0f, 2.5f, 1.0f);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.f12653ba, "scaleX", 1.0f, 1.5f, 1.0f);
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.f12653ba, "scaleY", 1.0f, 1.5f, 1.0f);
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.cFZ, "rotation", 0.0f, -20.0f, 0.0f);
        this.ZYk = ofFloat7;
        ofFloat7.setDuration(1000L);
        this.oJ.setDuration(1500L);
        this.oJ.setInterpolator(new AccelerateDecelerateInterpolator());
        this.oJ.play(ofFloat).with(ofFloat2).with(ofFloat3).with(ofFloat4).with(ofFloat5).with(ofFloat6);
        this.oJ.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.ba.ZYk.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ZYk.this.tB = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ZYk.this.tB) {
                    return;
                }
                ZYk.this.ZYk.start();
                ZYk.this.oJ.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    private void tB() {
        View view = new View(this.kkU);
        this.ex = view;
        view.setBackground(oJ("#1A7BBEFF", "#337BBEFF"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (this.f12654so * 0.45d), (int) (this.jFA * 0.45d));
        layoutParams.gravity = 17;
        this.ex.setLayoutParams(layoutParams);
        addView(this.ex);
        View view2 = new View(this.kkU);
        this.Pfn = view2;
        view2.setBackground(oJ("#337BBEFF", "#807BBEFF"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (this.f12654so * 0.25d), (int) (this.jFA * 0.25d));
        layoutParams2.gravity = 17;
        this.Pfn.setLayoutParams(layoutParams2);
        addView(this.Pfn);
        View view3 = new View(this.kkU);
        this.f12653ba = view3;
        view3.setBackground(oJ("#807BBEFF", "#FF7BBEFF"));
        int i10 = this.f12654so;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) (i10 * 0.25d), (int) (i10 * 0.25d));
        layoutParams3.gravity = 17;
        this.f12653ba.setLayoutParams(layoutParams3);
        addView(this.f12653ba);
        ImageView imageView = new ImageView(this.kkU);
        this.cFZ = imageView;
        imageView.setImageResource(com.bytedance.sdk.component.utils.cY.ex(getContext(), "tt_blue_hand"));
        this.cFZ.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams((int) (this.f12654so * 0.62d), (int) (this.jFA * 0.53d));
        layoutParams4.gravity = 17;
        layoutParams4.topMargin = (layoutParams4.width / 2) - 5;
        layoutParams4.leftMargin = (layoutParams4.height / 2) - 5;
        this.cFZ.setLayoutParams(layoutParams4);
        addView(this.cFZ);
    }

    public void ZYk() {
        this.tB = true;
        ObjectAnimator objectAnimator = this.ZYk;
        if (objectAnimator == null || this.oJ == null) {
            return;
        }
        objectAnimator.cancel();
        this.oJ.cancel();
    }

    private GradientDrawable oJ(String str, String str2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setStroke(1, Color.parseColor(str2));
        return gradientDrawable;
    }

    public void oJ() {
        this.tB = false;
        ObjectAnimator objectAnimator = this.ZYk;
        if (objectAnimator == null || this.oJ == null) {
            return;
        }
        objectAnimator.start();
        this.oJ.start();
    }
}
