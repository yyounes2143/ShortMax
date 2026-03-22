package com.bytedance.sdk.component.adexpress.ba;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
/* loaded from: classes3.dex */
public class Pfn extends FrameLayout {
    private AnimatorSet ZYk;
    private ImageView oJ;

    public Pfn(Context context) {
        super(context);
        tB();
        ex();
    }

    private void ex() {
        this.ZYk = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.oJ, "scaleX", 1.0f, 1.5f, 1.0f, 1.0f, 1.0f);
        ofFloat.setDuration(2000L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.oJ, "scaleY", 1.0f, 1.5f, 1.0f, 1.0f, 1.0f);
        ofFloat2.setDuration(2000L);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        this.ZYk.playTogether(ofFloat, ofFloat2);
    }

    private void tB() {
        ImageView imageView = new ImageView(getContext());
        this.oJ = imageView;
        imageView.setImageResource(com.bytedance.sdk.component.utils.cY.ex(getContext(), "tt_white_hand"));
        int oJ = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), 20.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(oJ, oJ);
        layoutParams.gravity = 17;
        addView(this.oJ, layoutParams);
    }

    public void ZYk() {
        AnimatorSet animatorSet = this.ZYk;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public void oJ() {
        AnimatorSet animatorSet = this.ZYk;
        if (animatorSet != null) {
            animatorSet.start();
        }
    }
}
