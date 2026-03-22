package com.bytedance.sdk.component.adexpress.ba;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class Id extends RelativeLayout {
    private TextView Pfn;
    private ImageView ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private AnimatorSet f12644ba;
    private AnimatorSet cFZ;
    private int dLZ;
    private TextView ex;
    private AnimatorSet jFA;
    private String kkU;
    private ImageView oJ;

    /* renamed from: so  reason: collision with root package name */
    private AnimatorSet f12645so;
    private ImageView tB;

    public Id(Context context) {
        super(context);
        this.f12644ba = new AnimatorSet();
        this.cFZ = new AnimatorSet();
        this.f12645so = new AnimatorSet();
        this.jFA = new AnimatorSet();
        this.dLZ = 100;
        oJ(context);
    }

    public AnimatorSet getSlideUpAnimatorSet() {
        return this.f12644ba;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ZYk();
    }

    public void setGuideText(String str) {
        TextView textView = this.ex;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setSlideText(String str) {
        if (this.Pfn != null) {
            if (TextUtils.isEmpty(str)) {
                this.Pfn.setText("");
            } else {
                this.Pfn.setText(str);
            }
        }
    }

    public void tB() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.oJ, "alpha", 0.0f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.oJ, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.oJ, "translationY", 0.0f, com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), -this.dLZ));
        ofFloat3.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), this.dLZ));
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.ba.Id.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (Id.this.tB != null) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) Id.this.tB.getLayoutParams();
                    layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    Id.this.tB.setLayoutParams(layoutParams);
                }
            }
        });
        ofInt.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.tB, "alpha", 0.0f, 1.0f);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.tB, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.ZYk, "alpha", 0.0f, 1.0f);
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.ZYk, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat8 = ObjectAnimator.ofFloat(this.ZYk, "scaleX", 0.0f, 1.0f);
        ObjectAnimator ofFloat9 = ObjectAnimator.ofFloat(this.ZYk, "scaleY", 0.0f, 1.0f);
        ObjectAnimator ofFloat10 = ObjectAnimator.ofFloat(this.ZYk, "translationY", 0.0f, com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), -this.dLZ));
        ofFloat10.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        this.cFZ.setDuration(50L);
        this.jFA.setDuration(1500L);
        this.f12645so.setDuration(50L);
        this.cFZ.playTogether(ofFloat2, ofFloat7, ofFloat5);
        this.f12645so.playTogether(ofFloat, ofFloat6, ofFloat8, ofFloat9, ofFloat4);
        this.jFA.playTogether(ofFloat3, ofInt, ofFloat10);
        this.f12644ba.playSequentially(this.f12645so, this.jFA, this.cFZ);
    }

    public void ZYk() {
        try {
            AnimatorSet animatorSet = this.f12644ba;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.f12645so;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.cFZ;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.jFA;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    protected void oJ(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.ex.oJ();
        }
        if ("5".equals(this.kkU)) {
            addView(com.bytedance.sdk.component.adexpress.tB.oJ.ba(context));
            this.dLZ = (int) (this.dLZ * 1.25d);
        } else {
            addView(com.bytedance.sdk.component.adexpress.tB.oJ.Pfn(context));
        }
        this.oJ = (ImageView) findViewById(2097610734);
        this.ZYk = (ImageView) findViewById(2097610735);
        this.ex = (TextView) findViewById(2097610730);
        this.tB = (ImageView) findViewById(2097610733);
        this.Pfn = (TextView) findViewById(2097610731);
    }

    public Id(Context context, String str) {
        super(context);
        this.f12644ba = new AnimatorSet();
        this.cFZ = new AnimatorSet();
        this.f12645so = new AnimatorSet();
        this.jFA = new AnimatorSet();
        this.dLZ = 100;
        setClipChildren(false);
        this.kkU = str;
        oJ(context);
    }

    public void oJ() {
        tB();
        this.f12644ba.start();
        this.f12644ba.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.adexpress.ba.Id.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                Id.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.ba.Id.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Id.this.f12644ba.start();
                    }
                }, 200L);
            }
        });
    }
}
