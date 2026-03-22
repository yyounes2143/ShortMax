package com.bytedance.sdk.component.adexpress.ba;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.CycleInterpolator;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class cFZ extends Id {
    private View ZYk;
    private TextView oJ;
    private AnimatorSet tB;

    public cFZ(Context context) {
        super(context);
        this.tB = new AnimatorSet();
        ZYk(context);
    }

    private void ZYk(Context context) {
        View oJ = com.bytedance.sdk.component.adexpress.tB.oJ.oJ(context);
        this.ZYk = oJ;
        addView(oJ);
        setClipChildren(false);
        this.oJ = (TextView) findViewById(2097610748);
    }

    private void ex() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.ZYk, "translationY", 0.0f, com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), -3.0f));
        ofFloat.setInterpolator(new CycleInterpolator(1.0f));
        ofFloat.setDuration(1000L);
        ofFloat.setRepeatCount(-1);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.ZYk, "alpha", 1.0f, 0.8f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setInterpolator(new CycleInterpolator(1.0f));
        ofFloat2.setRepeatCount(-1);
        this.tB.playTogether(ofFloat, ofFloat2);
        this.tB.setDuration(1000L);
        this.tB.start();
    }

    @Override // com.bytedance.sdk.component.adexpress.ba.Id
    protected void oJ(Context context) {
    }

    public void setButtonText(String str) {
        if (this.oJ != null && !TextUtils.isEmpty(str)) {
            this.oJ.setText(str);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ba.Id
    public void oJ() {
        ex();
    }

    @Override // com.bytedance.sdk.component.adexpress.ba.Id
    public void ZYk() {
        this.tB.cancel();
    }
}
